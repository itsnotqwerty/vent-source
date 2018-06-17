package io.intercom.android.sdk.api;

import io.intercom.android.sdk.models.Conversation.Builder;
import io.intercom.android.sdk.models.ConversationsResponse.Builder;
import io.intercom.android.sdk.models.GifResponse;
import io.intercom.android.sdk.models.LinkResponse.Builder;
import io.intercom.android.sdk.models.Part.Builder;
import io.intercom.android.sdk.models.Sheet.Builder;
import io.intercom.android.sdk.models.UpdateUserResponse.Builder;
import io.intercom.android.sdk.models.Upload.Builder;
import io.intercom.android.sdk.models.UsersResponse.Builder;
import io.intercom.retrofit2.Call;
import io.intercom.retrofit2.http.Body;
import io.intercom.retrofit2.http.POST;
import io.intercom.retrofit2.http.PUT;
import io.intercom.retrofit2.http.Path;
import java.util.Map;

abstract interface MessengerApi
{
  @POST("conversations/{conversationId}/remark")
  public abstract Call<Void> addConversationRatingRemark(@Path("conversationId") String paramString, @Body Map<String, Object> paramMap);
  
  @PUT("device_tokens")
  public abstract Call<Void> deleteDeviceToken(@Body Map<String, Object> paramMap);
  
  @POST("conversations/{conversationId}")
  public abstract Call<Conversation.Builder> getConversation(@Path("conversationId") String paramString, @Body Map<String, Object> paramMap);
  
  @POST("conversations/inbox")
  public abstract Call<ConversationsResponse.Builder> getConversations(@Body Map<String, Object> paramMap);
  
  @POST("gifs")
  public abstract Call<GifResponse> getGifs(@Body Map<String, Object> paramMap);
  
  @POST("articles/{articleId}")
  public abstract Call<LinkResponse.Builder> getLink(@Path("articleId") String paramString, @Body Map<String, Object> paramMap);
  
  @POST("sheets/open")
  public abstract Call<Sheet.Builder> getSheet(@Body Map<String, Object> paramMap);
  
  @POST("conversations/unread")
  public abstract Call<UsersResponse.Builder> getUnreadConversations(@Body Map<String, Object> paramMap);
  
  @POST("events")
  public abstract Call<UsersResponse.Builder> logEvent(@Body Map<String, Object> paramMap);
  
  @POST("conversations/dismiss")
  public abstract Call<Void> markAsDismissed(@Body Map<String, Object> paramMap);
  
  @POST("conversations/{conversationId}/read")
  public abstract Call<Void> markAsRead(@Path("conversationId") String paramString, @Body Map<String, Object> paramMap);
  
  @POST("conversations/{conversationId}/rate")
  public abstract Call<Void> rateConversation(@Path("conversationId") String paramString, @Body Map<String, Object> paramMap);
  
  @POST("conversations/{conversationId}/react")
  public abstract Call<Void> reactToConversation(@Path("conversationId") String paramString, @Body Map<String, Object> paramMap);
  
  @POST("articles/{articleId}/react")
  public abstract Call<Void> reactToLink(@Path("articleId") String paramString, @Body Map<String, Object> paramMap);
  
  @POST("conversations/{conversationId}/reply")
  public abstract Call<Part.Builder> replyToConversation(@Path("conversationId") String paramString, @Body Map<String, Object> paramMap);
  
  @POST("error_reports")
  public abstract Call<Void> reportError(@Body Map<String, Object> paramMap);
  
  @POST("conversations/{conversationId}/conditions_satisfied")
  public abstract Call<Void> satisfyCondition(@Path("conversationId") String paramString, @Body Map<String, Object> paramMap);
  
  @POST("metrics")
  public abstract Call<Void> sendMetrics(@Body Map<String, Object> paramMap);
  
  @POST("device_tokens")
  public abstract Call<Void> setDeviceToken(@Body Map<String, Object> paramMap);
  
  @POST("conversations")
  public abstract Call<Conversation.Builder> startNewConversation(@Body Map<String, Object> paramMap);
  
  @POST("sheets/submit")
  public abstract Call<Void> submitSheet(@Body Map<String, Object> paramMap);
  
  @POST("users")
  public abstract Call<UpdateUserResponse.Builder> updateUser(@Body Map<String, Object> paramMap);
  
  @POST("uploads")
  public abstract Call<Upload.Builder> uploadFile(@Body Map<String, Object> paramMap);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/MessengerApi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */