package io.intercom.android.sdk.api;

import android.content.Context;
import android.text.TextUtils;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.blocks.UploadingImageCache;
import io.intercom.android.sdk.blocks.models.Block.Builder;
import io.intercom.android.sdk.conversation.UploadProgressListener;
import io.intercom.android.sdk.errorreporting.ErrorReport;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.AppIdentity;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricObject;
import io.intercom.android.sdk.metrics.ops.OpsMetricObject;
import io.intercom.android.sdk.models.GifResponse;
import io.intercom.android.sdk.models.LinkResponse.Builder;
import io.intercom.android.sdk.models.Sheet.Builder;
import io.intercom.android.sdk.models.UpdateUserResponse;
import io.intercom.android.sdk.models.UpdateUserResponse.Builder;
import io.intercom.android.sdk.models.Upload;
import io.intercom.android.sdk.models.Upload.Builder;
import io.intercom.android.sdk.models.events.UploadEvent;
import io.intercom.android.sdk.models.events.failure.UploadFailedEvent;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.user.DeviceData;
import io.intercom.okhttp3.Dispatcher;
import io.intercom.okhttp3.MediaType;
import io.intercom.okhttp3.MultipartBody;
import io.intercom.okhttp3.MultipartBody.Builder;
import io.intercom.okhttp3.OkHttpClient;
import io.intercom.okhttp3.Request.Builder;
import io.intercom.okhttp3.ResponseBody;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class Api
{
  private static final String BATCH_SIZE = "batch_size";
  private static final String DATA = "data";
  private static final String DEVICE_DATA = "device_data";
  private static final String DEVICE_TOKEN = "device_token";
  private static final String HMAC = "hmac";
  private static final String NEW_SESSION = "new_session";
  private static final String SENT_FROM_BACKGROUND = "sent_from_background";
  private static final Twig TWIG = ;
  private static final String UPLOAD = "upload";
  private static final String USER = "user";
  private static final String USER_ATTRIBUTES = "user_attributes";
  private final OkHttpClient apiHttpClient;
  private final Provider<AppConfig> appConfigProvider;
  private final AppIdentity appIdentity;
  final io.intercom.a.c.a.b bus;
  final CallbackHolder callbacks;
  private final Context context;
  private final int defaultOkHttpMaxRequests;
  private final io.intercom.retrofit2.Callback<Void> emptyCallback = new io.intercom.retrofit2.Callback()
  {
    public void onFailure(io.intercom.retrofit2.Call<Void> paramAnonymousCall, Throwable paramAnonymousThrowable) {}
    
    public void onResponse(io.intercom.retrofit2.Call<Void> paramAnonymousCall, io.intercom.retrofit2.Response<Void> paramAnonymousResponse) {}
  };
  final OkHttpClient httpClient = new OkHttpClient();
  private final MessengerApi messengerApi;
  private final RateLimiter rateLimiter;
  private final Store<State> store;
  final UserIdentity userIdentity;
  
  public Api(Context paramContext, AppIdentity paramAppIdentity, UserIdentity paramUserIdentity, io.intercom.a.c.a.b paramb, OkHttpClient paramOkHttpClient, MessengerApi paramMessengerApi, CallbackHolder paramCallbackHolder, RateLimiter paramRateLimiter, Store<State> paramStore, Provider<AppConfig> paramProvider)
  {
    this.context = paramContext;
    this.appIdentity = paramAppIdentity;
    this.userIdentity = paramUserIdentity;
    this.bus = paramb;
    this.messengerApi = paramMessengerApi;
    this.callbacks = paramCallbackHolder;
    this.rateLimiter = paramRateLimiter;
    this.store = paramStore;
    this.appConfigProvider = paramProvider;
    this.apiHttpClient = paramOkHttpClient;
    this.defaultOkHttpMaxRequests = paramOkHttpClient.dispatcher().getMaxRequests();
    updateMaxRequests();
  }
  
  private void addSecureHash(Map<String, Object> paramMap)
  {
    String str1 = this.userIdentity.getData();
    String str2 = this.userIdentity.getHmac();
    if (!TextUtils.isEmpty(str1)) {
      paramMap.put("data", str1);
    }
    if (!TextUtils.isEmpty(str2)) {
      paramMap.put("hmac", str2);
    }
  }
  
  private Map<String, Object> baseNewConversationParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("app_id", this.appIdentity.appId());
    localHashMap.put("user", this.userIdentity.toMap());
    addSecureHash(localHashMap);
    return localHashMap;
  }
  
  private Map<String, Object> createBaseReplyParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("app_id", this.appIdentity.appId());
    localHashMap.put("type", "user");
    localHashMap.put("message_type", "comment");
    localHashMap.put("user", this.userIdentity.toMap());
    addSecureHash(localHashMap);
    return localHashMap;
  }
  
  private Map<String, Object> generateUpdateUserParams(UserUpdateRequest paramUserUpdateRequest)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("device_data", DeviceData.generateDeviceData(this.context));
    localHashMap.put("new_session", Boolean.valueOf(paramUserUpdateRequest.isNewSession()));
    localHashMap.put("sent_from_background", Boolean.valueOf(paramUserUpdateRequest.isSentFromBackground()));
    localHashMap.put("batch_size", Integer.valueOf(paramUserUpdateRequest.getBatchSize()));
    localHashMap.put("user_attributes", paramUserUpdateRequest.getAttributes());
    addSecureHash(localHashMap);
    return localHashMap;
  }
  
  protected static boolean isUserNotFound(ErrorObject paramErrorObject, Map paramMap)
  {
    if ((paramErrorObject.hasErrorBody()) && (paramErrorObject.getStatusCode() == 404) && (paramMap != null) && (paramMap.get("intercom_id") != null) && (paramMap.size() > 1)) {
      try
      {
        boolean bool = new JSONObject(paramErrorObject.getErrorBody()).getJSONArray("errors").getJSONObject(0).getString("code").equals("not_found");
        if (bool) {
          return true;
        }
      }
      catch (Exception paramErrorObject)
      {
        TWIG.internal("Could not parse error response");
      }
    }
    return false;
  }
  
  private void logBackgroundDisabledError()
  {
    TWIG.e("Your request was not sent because the app is in the background. Please contact Intercom to enable background requests.", new Object[0]);
  }
  
  private void retriableUpdateUser(final Map<String, Object> paramMap, final String paramString)
  {
    this.messengerApi.updateUser(paramMap).enqueue(new BaseCallback()
    {
      void logFailure(String paramAnonymousString, ErrorObject paramAnonymousErrorObject)
      {
        super.logFailure("Failed to register or update user", paramAnonymousErrorObject);
      }
      
      public void onError(ErrorObject paramAnonymousErrorObject)
      {
        Map localMap = (Map)paramMap.get("user");
        if (Api.isUserNotFound(paramAnonymousErrorObject, localMap))
        {
          localMap.remove("intercom_id");
          paramMap.put("user", localMap);
          Api.this.retriableUpdateUser(paramMap, paramString);
        }
      }
      
      public void onSuccess(UpdateUserResponse.Builder paramAnonymousBuilder)
      {
        if (paramString.equals(Api.this.userIdentity.getFingerprint()))
        {
          Api.TWIG.i("Successfully registered or updated user", new Object[0]);
          Api.this.callbacks.unreadCallback().onSuccess(paramAnonymousBuilder);
          paramAnonymousBuilder = paramAnonymousBuilder.build().getTeamPresence();
          Api.this.store.dispatch(Actions.teamPresenceUpdated(paramAnonymousBuilder));
        }
      }
    });
  }
  
  private boolean shouldStopBackgroundRequest(boolean paramBoolean)
  {
    return (paramBoolean) && (((AppConfig)this.appConfigProvider.get()).backgroundRequestsDisabled());
  }
  
  public void addConversationRatingRemark(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("remark", paramString2);
    addSecureHash(localHashMap);
    this.messengerApi.addConversationRatingRemark(paramString1, localHashMap).enqueue(this.callbacks.loggingCallback("adding remark to conversation"));
  }
  
  public void fetchDefaultGifs(io.intercom.retrofit2.Callback<GifResponse> paramCallback)
  {
    this.messengerApi.getGifs(Collections.emptyMap()).enqueue(paramCallback);
  }
  
  public void fetchGifs(String paramString, io.intercom.retrofit2.Callback<GifResponse> paramCallback)
  {
    paramString = Collections.singletonMap("query", paramString);
    this.messengerApi.getGifs(paramString).enqueue(paramCallback);
  }
  
  public void fetchSheet(HashMap<String, Object> paramHashMap, io.intercom.retrofit2.Callback<Sheet.Builder> paramCallback)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    addSecureHash(localHashMap);
    localHashMap.putAll(paramHashMap);
    this.messengerApi.getSheet(localHashMap).enqueue(paramCallback);
  }
  
  public void getConversation(String paramString)
  {
    Map localMap = this.userIdentity.toMap();
    addSecureHash(localMap);
    this.messengerApi.getConversation(paramString, localMap).enqueue(this.callbacks.conversationCallback());
  }
  
  public void getInbox()
  {
    Map localMap = this.userIdentity.toMap();
    localMap.put("per_page", "20");
    addSecureHash(localMap);
    this.messengerApi.getConversations(localMap).enqueue(this.callbacks.inboxCallback());
  }
  
  public void getInboxBefore(long paramLong)
  {
    Map localMap = this.userIdentity.toMap();
    localMap.put("before", String.valueOf(paramLong));
    localMap.put("per_page", "20");
    addSecureHash(localMap);
    this.messengerApi.getConversations(localMap).enqueue(this.callbacks.inboxCallback());
  }
  
  public void getLink(String paramString, io.intercom.retrofit2.Callback<LinkResponse.Builder> paramCallback)
  {
    Map localMap = this.userIdentity.toMap();
    addSecureHash(localMap);
    this.messengerApi.getLink(paramString, localMap).enqueue(paramCallback);
  }
  
  public void getUnreadConversations()
  {
    Map localMap = this.userIdentity.toMap();
    localMap.put("per_page", "20");
    addSecureHash(localMap);
    this.messengerApi.getUnreadConversations(localMap).enqueue(this.callbacks.unreadCallback());
  }
  
  public void getVideo(String paramString, io.intercom.okhttp3.Callback paramCallback)
  {
    this.httpClient.newCall(new Request.Builder().url(paramString).build()).enqueue(paramCallback);
  }
  
  public void hitTrackingUrl(String paramString)
  {
    this.httpClient.newCall(new Request.Builder().url(paramString).build()).enqueue(new io.intercom.okhttp3.Callback()
    {
      public void onFailure(io.intercom.okhttp3.Call paramAnonymousCall, IOException paramAnonymousIOException)
      {
        Api.TWIG.internal("Tracking Url", "Failed tracking url request");
      }
      
      public void onResponse(io.intercom.okhttp3.Call paramAnonymousCall, io.intercom.okhttp3.Response paramAnonymousResponse)
        throws IOException
      {
        Api.TWIG.internal("Tracking Url", "success");
        paramAnonymousResponse.body().close();
      }
    });
  }
  
  public boolean isIdle()
  {
    return this.apiHttpClient.dispatcher().runningCallsCount() == 0;
  }
  
  boolean isSynchronous()
  {
    return this.apiHttpClient.dispatcher().getMaxRequests() == 1;
  }
  
  public void logEvent(String paramString, Map<String, ?> paramMap)
  {
    if (this.rateLimiter.isLimited())
    {
      this.rateLimiter.logError();
      return;
    }
    boolean bool = ((Boolean)this.store.select(Selectors.APP_IS_BACKGROUNDED)).booleanValue();
    if (shouldStopBackgroundRequest(bool))
    {
      logBackgroundDisabledError();
      return;
    }
    this.rateLimiter.recordRequest();
    HashMap localHashMap = new HashMap();
    localHashMap.put("event_name", paramString);
    if (!paramMap.isEmpty()) {
      localHashMap.put("metadata", paramMap);
    }
    paramString = new HashMap();
    paramString.put("event", localHashMap);
    paramString.put("sent_from_background", Boolean.valueOf(bool));
    paramString.put("user", this.userIdentity.toMap());
    addSecureHash(paramString);
    this.messengerApi.logEvent(paramString).enqueue(this.callbacks.unreadCallback());
  }
  
  public void markConversationAsDismissed(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("conversation_ids", new String[] { paramString });
    addSecureHash(localHashMap);
    this.messengerApi.markAsDismissed(localHashMap).enqueue(this.emptyCallback);
  }
  
  public void markConversationAsRead(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("app_id", this.appIdentity.appId());
    localHashMap.put("user", this.userIdentity.toMap());
    addSecureHash(localHashMap);
    this.messengerApi.markAsRead(paramString, localHashMap).enqueue(this.emptyCallback);
  }
  
  public void rateConversation(String paramString, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("rating_index", Integer.valueOf(paramInt));
    addSecureHash(localHashMap);
    this.messengerApi.rateConversation(paramString, localHashMap).enqueue(this.callbacks.loggingCallback("conversation rating"));
  }
  
  public void reactToConversation(String paramString, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("reaction_index", Integer.valueOf(paramInt));
    addSecureHash(localHashMap);
    this.messengerApi.reactToConversation(paramString, localHashMap).enqueue(this.callbacks.loggingCallback("add reaction to conversation"));
  }
  
  public void reactToLink(String paramString, int paramInt, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("reaction_index", Integer.valueOf(paramInt));
    localHashMap.put("allow_auto_responses", Boolean.valueOf(paramBoolean));
    addSecureHash(localHashMap);
    this.messengerApi.reactToLink(paramString, localHashMap).enqueue(this.callbacks.loggingCallback("add reaction to link"));
  }
  
  public void removeDeviceToken(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("device_token", paramString);
    addSecureHash(localHashMap);
    this.messengerApi.deleteDeviceToken(localHashMap).enqueue(this.emptyCallback);
  }
  
  public void replyToConversation(String paramString1, List<Block.Builder> paramList, int paramInt, String paramString2, boolean paramBoolean)
  {
    Map localMap = createBaseReplyParams();
    localMap.put("blocks", paramList);
    this.messengerApi.replyToConversation(paramString1, localMap).enqueue(this.callbacks.replyCallback(paramInt, paramBoolean, paramString2, paramString1));
  }
  
  void retriableUpdateUser(Map<String, Object> paramMap)
  {
    retriableUpdateUser(paramMap, this.userIdentity.getFingerprint());
  }
  
  public void satisfyOperatorCondition(String paramString1, String paramString2)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("transition_id", paramString2);
    addSecureHash(localHashMap);
    this.messengerApi.satisfyCondition(paramString1, localHashMap).enqueue(this.emptyCallback);
  }
  
  public void sendErrorReport(ErrorReport paramErrorReport)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    localHashMap.put("error_report", paramErrorReport);
    addSecureHash(localHashMap);
    this.messengerApi.reportError(localHashMap).enqueue(this.callbacks.loggingCallback("report error"));
  }
  
  public void sendMetrics(List<MetricObject> paramList, List<OpsMetricObject> paramList1, io.intercom.retrofit2.Callback<Void> paramCallback)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("metrics", paramList);
    localHashMap.put("op_metrics", paramList1);
    this.messengerApi.sendMetrics(localHashMap).enqueue(paramCallback);
  }
  
  public void setDeviceToken(String paramString)
  {
    Map localMap = DeviceData.generateDeviceData(this.context);
    localMap.put("device_token", paramString);
    paramString = new HashMap();
    paramString.put("user", this.userIdentity.toMap());
    paramString.put("device_data", localMap);
    addSecureHash(paramString);
    this.messengerApi.setDeviceToken(paramString).enqueue(this.emptyCallback);
  }
  
  public void setIdleCallback(Runnable paramRunnable)
  {
    this.apiHttpClient.dispatcher().setIdleCallback(paramRunnable);
  }
  
  public void startNewConversation(List<Block.Builder> paramList, int paramInt, String paramString)
  {
    Map localMap = baseNewConversationParams();
    localMap.put("blocks", paramList);
    this.messengerApi.startNewConversation(localMap).enqueue(this.callbacks.newConversationCallback(paramInt, paramString));
  }
  
  public void submitSheet(String paramString, Map<String, Object> paramMap, io.intercom.retrofit2.Callback<Void> paramCallback)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user", this.userIdentity.toMap());
    addSecureHash(localHashMap);
    localHashMap.put("uri", paramString);
    localHashMap.put("sheet_values", paramMap);
    this.messengerApi.submitSheet(localHashMap).enqueue(paramCallback);
  }
  
  public void updateMaxRequests()
  {
    if (this.userIdentity.hasIntercomId()) {}
    for (int i = this.defaultOkHttpMaxRequests;; i = 1)
    {
      Dispatcher localDispatcher = this.apiHttpClient.dispatcher();
      if (localDispatcher.getMaxRequests() != i) {
        localDispatcher.setMaxRequests(i);
      }
      return;
    }
  }
  
  public void updateUser(UserUpdateRequest paramUserUpdateRequest)
  {
    int i;
    if (!paramUserUpdateRequest.isInternalUpdate()) {
      i = 1;
    }
    while (i != 0) {
      if (this.rateLimiter.isLimited())
      {
        this.rateLimiter.logError();
        return;
        i = 0;
      }
      else
      {
        if (shouldStopBackgroundRequest(paramUserUpdateRequest.isSentFromBackground()))
        {
          logBackgroundDisabledError();
          return;
        }
        this.rateLimiter.recordRequest();
      }
    }
    retriableUpdateUser(generateUpdateUserParams(paramUserUpdateRequest));
  }
  
  public void uploadFile(final com.intercom.input.gallery.b paramb, final int paramInt, final String paramString, final UploadingImageCache paramUploadingImageCache, final UploadProgressListener paramUploadProgressListener)
  {
    final String str1 = paramb.bmd;
    final String str2 = paramb.mimeType;
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("original_filename", str1);
    localHashMap2.put("size_in_bytes", Integer.valueOf(paramb.bmf));
    localHashMap2.put("content_type", str2);
    localHashMap2.put("width", Integer.valueOf(paramb.imageWidth));
    localHashMap2.put("height", Integer.valueOf(paramb.imageHeight));
    localHashMap1.put("upload", localHashMap2);
    localHashMap1.put("user", this.userIdentity.toMap());
    addSecureHash(localHashMap1);
    this.messengerApi.uploadFile(localHashMap1).enqueue(new BaseCallback()
    {
      void logFailure(String paramAnonymousString, ErrorObject paramAnonymousErrorObject)
      {
        super.logFailure("Upload failed", paramAnonymousErrorObject);
      }
      
      public void onError(ErrorObject paramAnonymousErrorObject)
      {
        Api.this.bus.post(new UploadFailedEvent(paramInt, paramString));
      }
      
      public void onSuccess(final Upload.Builder paramAnonymousBuilder)
      {
        paramAnonymousBuilder = paramAnonymousBuilder.build();
        paramUploadingImageCache.put(paramAnonymousBuilder, paramb);
        MultipartBody localMultipartBody = new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("key", paramAnonymousBuilder.getKey()).addFormDataPart("acl", paramAnonymousBuilder.getAcl()).addFormDataPart("Content-Type", paramAnonymousBuilder.getContentType()).addFormDataPart("AWSAccessKeyId", paramAnonymousBuilder.getAwsAccessKey()).addFormDataPart("policy", paramAnonymousBuilder.getPolicy()).addFormDataPart("signature", paramAnonymousBuilder.getSignature()).addFormDataPart("success_action_status", paramAnonymousBuilder.getSuccessActionStatus()).addFormDataPart("file", str1, new ProgressRequestBody(MediaType.parse(str2), new File(paramb.path), paramUploadProgressListener)).build();
        Api.this.httpClient.newCall(new Request.Builder().url(paramAnonymousBuilder.getUploadDestination()).post(localMultipartBody).build()).enqueue(new io.intercom.okhttp3.Callback()
        {
          public void onFailure(io.intercom.okhttp3.Call paramAnonymous2Call, IOException paramAnonymous2IOException)
          {
            Api.TWIG.e("Upload failed: " + paramAnonymous2IOException.getMessage(), new Object[0]);
            Api.this.bus.post(new UploadFailedEvent(Api.2.this.val$tempPartPosition, Api.2.this.val$tempPartId));
          }
          
          public void onResponse(io.intercom.okhttp3.Call paramAnonymous2Call, io.intercom.okhttp3.Response paramAnonymous2Response)
            throws IOException
          {
            Api.TWIG.internal("API Success", "Successfully uploaded");
            if (paramAnonymous2Response.isSuccessful()) {
              Api.this.bus.post(new UploadEvent(paramAnonymousBuilder, Api.2.this.val$data.bmf, Api.2.this.val$tempPartPosition, Api.2.this.val$tempPartId));
            }
            for (;;)
            {
              paramAnonymous2Response.body().close();
              return;
              Api.TWIG.e("Upload failed: request body " + paramAnonymous2Response.body(), new Object[0]);
              Api.this.bus.post(new UploadFailedEvent(Api.2.this.val$tempPartPosition, Api.2.this.val$tempPartId));
            }
          }
        });
        Api.TWIG.internal("API Success", "Successfully uploaded");
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/Api.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */