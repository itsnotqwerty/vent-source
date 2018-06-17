package io.intercom.android.sdk.conversation;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.AsyncTask;
import android.support.v4.g.a;
import android.support.v7.app.c.a;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.n;
import android.support.v7.widget.bi;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.TextView;
import com.intercom.input.gallery.b;
import io.intercom.a.a.a.j;
import io.intercom.a.c.a.h;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.BlockType;
import io.intercom.android.sdk.blocks.Blocks;
import io.intercom.android.sdk.blocks.BlocksViewHolder;
import io.intercom.android.sdk.blocks.LightboxOpeningImageClickListener;
import io.intercom.android.sdk.blocks.LinkOpeningButtonClickListener;
import io.intercom.android.sdk.blocks.UploadingImageCache;
import io.intercom.android.sdk.blocks.ViewHolderGenerator;
import io.intercom.android.sdk.blocks.function.TimestampAdder;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.blocks.models.Block.Builder;
import io.intercom.android.sdk.blocks.models.BlockAttachment;
import io.intercom.android.sdk.blocks.models.BlockAttachment.Builder;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.metrics.ops.OpsMetricTracker;
import io.intercom.android.sdk.models.Attachments;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.Builder;
import io.intercom.android.sdk.models.Part.MessageState;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.models.Participant.Builder;
import io.intercom.android.sdk.models.Upload;
import io.intercom.android.sdk.models.events.ConversationEvent;
import io.intercom.android.sdk.models.events.NewConversationEvent;
import io.intercom.android.sdk.models.events.ReplyEvent;
import io.intercom.android.sdk.models.events.UploadEvent;
import io.intercom.android.sdk.models.events.failure.NewConversationFailedEvent;
import io.intercom.android.sdk.models.events.failure.ReplyFailedEvent;
import io.intercom.android.sdk.models.events.failure.UploadFailedEvent;
import io.intercom.android.sdk.models.events.realtime.UserContentSeenByAdminEvent;
import io.intercom.android.sdk.utilities.ViewUtils;
import io.intercom.android.sdk.views.AdminIsTypingView;
import io.intercom.android.sdk.views.AdminIsTypingView.Listener;
import io.intercom.android.sdk.views.IntercomLinkView;
import io.intercom.android.sdk.views.decoration.ConversationItemDecoration;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

class ConversationContentPresenter
  implements IntercomLinkPresenter.IntercomLinkHost
{
  private static final String IMAGE_MIME_TYPE = "image";
  private static final long PART_DISPLAY_DELIVERED_TIMEOUT = TimeUnit.MINUTES.toMillis(1L);
  static final long TIMESTAMP_UPDATE_PERIOD = TimeUnit.MINUTES.toMillis(1L);
  private final ConversationPartAdapter adapter;
  private final Api api;
  private final Blocks blocks;
  private final BlocksViewHolder blocksAdminViewHolder;
  private final BlocksViewHolder blocksAnnouncementViewHolder;
  private final BlocksViewHolder blocksConversationRatingViewHolder;
  private final BlocksViewHolder blocksLinkListHolder;
  private final BlocksViewHolder blocksLinkViewHolder;
  private final BlocksViewHolder blocksPreviewViewHolder;
  private final BlocksViewHolder blocksUserViewHolder;
  private String conversationId;
  private final RecyclerView conversationList;
  private final Host host;
  private final IntercomLinkPresenter intercomLinkPresenter;
  private final Map<String, AdminIsTypingView> isTypingViews = new a();
  private final LinearLayoutManager layoutManager;
  private final Part loadingPart = new Part.Builder().withStyle("loading_layout_style").build();
  private final OpsMetricTracker opsMetricTracker;
  private final List<Part> parts;
  private final TextView pill;
  private Runnable replyDeliveredUpdater;
  final List<Part> sendingParts = new ArrayList();
  private final SoundPlayer soundPlayer;
  private final TimestampAdder timestampAdder = TimestampAdder.create();
  private final Runnable timestampUpdater = new Runnable()
  {
    public void run()
    {
      ConversationContentPresenter.this.adapter.notifyDataSetChanged();
      ConversationContentPresenter.this.conversationList.postDelayed(this, ConversationContentPresenter.TIMESTAMP_UPDATE_PERIOD);
    }
  };
  private final UploadingImageCache uploadingImageCache;
  private final UserIdentity userIdentity;
  
  ConversationContentPresenter(Host paramHost, RecyclerView paramRecyclerView, ConversationPartAdapter paramConversationPartAdapter, LinearLayoutManager paramLinearLayoutManager, IntercomLinkPresenter paramIntercomLinkPresenter, TextView paramTextView, List<Part> paramList, SoundPlayer paramSoundPlayer, Blocks paramBlocks, ViewHolderGenerator paramViewHolderGenerator, UserIdentity paramUserIdentity, Api paramApi, OpsMetricTracker paramOpsMetricTracker, UploadingImageCache paramUploadingImageCache)
  {
    this.host = paramHost;
    this.conversationList = paramRecyclerView;
    this.adapter = paramConversationPartAdapter;
    this.layoutManager = paramLinearLayoutManager;
    this.intercomLinkPresenter = paramIntercomLinkPresenter;
    this.pill = paramTextView;
    this.parts = paramList;
    this.soundPlayer = paramSoundPlayer;
    this.blocks = paramBlocks;
    this.userIdentity = paramUserIdentity;
    this.api = paramApi;
    this.opsMetricTracker = paramOpsMetricTracker;
    this.uploadingImageCache = paramUploadingImageCache;
    this.blocksUserViewHolder = paramViewHolderGenerator.getUserHolder();
    this.blocksAnnouncementViewHolder = paramViewHolderGenerator.getContainerCardHolder();
    this.blocksAdminViewHolder = paramViewHolderGenerator.getAdminHolder();
    this.blocksLinkViewHolder = paramViewHolderGenerator.getLinkHolder();
    this.blocksConversationRatingViewHolder = paramViewHolderGenerator.getConversationRatingHolder();
    this.blocksPreviewViewHolder = paramViewHolderGenerator.getPreviewHolder();
    this.blocksLinkListHolder = paramViewHolderGenerator.getLinkListHolder();
  }
  
  private Part addSendingPart(List<Block.Builder> paramList)
  {
    paramList = createSendingPart(paramList);
    this.sendingParts.add(paramList);
    displaySendingPart(paramList);
    return paramList;
  }
  
  private void addViewForPart(Part paramPart)
  {
    List localList = paramPart.getBlocks();
    if (!paramPart.getAttachments().isEmpty())
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramPart.getAttachments().iterator();
      while (localIterator.hasNext())
      {
        Attachments localAttachments = (Attachments)localIterator.next();
        localArrayList.add(new BlockAttachment.Builder().withName(localAttachments.getName()).withUrl(localAttachments.getUrl()).withContentType(localAttachments.getContentType()).build());
      }
      localList.add(new Block.Builder().withType(BlockType.ATTACHMENTLIST.name()).withAttachments(localArrayList).build());
    }
    if (paramPart.getParticipant().isUserWithId(this.userIdentity.getIntercomId()))
    {
      this.adapter.setViewForPart(paramPart, this.blocks.createBlocks(localList, this.blocksUserViewHolder));
      return;
    }
    if (("post".equals(paramPart.getMessageStyle())) || ("note".equals(paramPart.getMessageStyle())))
    {
      this.adapter.setViewForPart(paramPart, this.blocks.createBlocks(localList, this.blocksAnnouncementViewHolder));
      return;
    }
    if (paramPart.isLinkCard())
    {
      this.adapter.setViewForPart(paramPart, this.blocks.createBlocks(localList, this.blocksLinkViewHolder));
      return;
    }
    if (paramPart.isSingleBlockPartOfType(BlockType.CONVERSATIONRATING))
    {
      this.adapter.setViewForPart(paramPart, this.blocks.createBlocks(localList, this.blocksConversationRatingViewHolder));
      return;
    }
    if (paramPart.isSingleBlockPartOfType(BlockType.LINKLIST))
    {
      this.adapter.setViewForPart(paramPart, this.blocks.createBlocks(localList, this.blocksLinkListHolder));
      return;
    }
    this.adapter.setViewForPart(paramPart, this.blocks.createBlocks(localList, this.blocksAdminViewHolder));
  }
  
  static ConversationContentPresenter create(Host paramHost, RecyclerView paramRecyclerView, ConversationPartAdapter paramConversationPartAdapter, IntercomLinkView paramIntercomLinkView, Provider<AppConfig> paramProvider, Api paramApi, List<Part> paramList, String paramString, TextView paramTextView, SoundPlayer paramSoundPlayer, Blocks paramBlocks, UserIdentity paramUserIdentity, OpsMetricTracker paramOpsMetricTracker, j paramj)
  {
    LinearLayoutManager localLinearLayoutManager = new LinearLayoutManager(paramRecyclerView.getContext());
    paramIntercomLinkView = new IntercomLinkPresenter(paramIntercomLinkView, paramProvider, paramApi, paramList, paramString);
    UploadingImageCache localUploadingImageCache = new UploadingImageCache();
    Injector localInjector = Injector.get();
    return new ConversationContentPresenter(paramHost, paramRecyclerView, paramConversationPartAdapter, localLinearLayoutManager, paramIntercomLinkView, paramTextView, paramList, paramSoundPlayer, paramBlocks, new ViewHolderGenerator(localUploadingImageCache, paramApi, paramProvider, paramString, new LightboxOpeningImageClickListener(paramApi), new LinkOpeningButtonClickListener(paramApi), paramj, localInjector.getGson(), localInjector.getBus(), localInjector.getMetricTracker()), paramUserIdentity, paramApi, paramOpsMetricTracker, localUploadingImageCache);
  }
  
  private List<Block.Builder> createBlocksForUpload(UploadEvent paramUploadEvent, Block paramBlock)
  {
    if (paramUploadEvent.getUpload().getContentType().contains("image")) {
      return Collections.singletonList(paramBlock.toBuilder().withType(BlockType.IMAGE.getSerializedName()).withUrl(paramUploadEvent.getUpload().getPublicUrl()));
    }
    List localList = paramBlock.getAttachments();
    if (localList.isEmpty()) {
      return Collections.emptyList();
    }
    paramUploadEvent = ((BlockAttachment)localList.get(0)).toBuilder().withSize(paramUploadEvent.getSize()).withId(paramUploadEvent.getUpload().getId()).build();
    return Collections.singletonList(paramBlock.toBuilder().withAttachments(Collections.singletonList(paramUploadEvent)).withType(BlockType.ATTACHMENTLIST.getSerializedName()));
  }
  
  private Part createSendingPart(List<Block.Builder> paramList)
  {
    paramList = new Part.Builder().withCreatedAt(TimeUnit.MILLISECONDS.toSeconds(TimeProvider.SYSTEM.currentTimeMillis())).withStyle("chat").withBlocks(paramList).build();
    paramList.setMessageState(Part.MessageState.SENDING);
    paramList.setParticipant(getUserParticipant());
    paramList.setEntranceAnimation(true);
    return paramList;
  }
  
  private void displaySendingPart(Part paramPart)
  {
    this.soundPlayer.playReplySentSound();
    this.parts.add(paramPart);
    this.adapter.setViewForPart(paramPart, this.blocks.createBlocks(paramPart.getBlocks(), this.blocksPreviewViewHolder));
    this.adapter.notifyDataSetChanged();
    smoothScrollToBottom();
  }
  
  private void hideLoadingIndicator()
  {
    int i = this.parts.indexOf(this.loadingPart);
    if (i >= 0)
    {
      this.parts.remove(i);
      this.adapter.notifyItemRemoved(i);
    }
  }
  
  private void markAsFailed(int paramInt, String paramString, boolean paramBoolean)
  {
    paramInt = positionOfPart(paramInt, paramString);
    Part localPart;
    if (paramInt >= 0)
    {
      localPart = (Part)this.parts.get(paramInt);
      paramString = this.adapter.getViewForPart(localPart).getChildAt(0);
      if ((paramString instanceof UploadProgressListener)) {
        ((UploadProgressListener)paramString).uploadStopped();
      }
      if (!paramBoolean) {
        break label78;
      }
    }
    label78:
    for (paramString = Part.MessageState.UPLOAD_FAILED;; paramString = Part.MessageState.FAILED)
    {
      localPart.setMessageState(paramString);
      this.adapter.notifyDataSetChanged();
      return;
    }
  }
  
  private int positionOfPart(int paramInt, String paramString)
  {
    if ((paramInt >= 0) && (paramInt < this.parts.size()))
    {
      int i;
      if (((Part)this.parts.get(paramInt)).getId().equals(paramString))
      {
        i = paramInt;
        return i;
      }
      paramInt = this.parts.size() - 1;
      for (;;)
      {
        if (paramInt < 0) {
          break label92;
        }
        i = paramInt;
        if (((Part)this.parts.get(paramInt)).getId().equals(paramString)) {
          break;
        }
        paramInt -= 1;
      }
    }
    label92:
    return -1;
  }
  
  private void retryFailedUpload(Part paramPart)
  {
    int i = positionOfPart(this.parts.size() - 1, paramPart.getId());
    Object localObject;
    if (i >= 0)
    {
      localObject = (UploadProgressListener)this.adapter.getViewForPart((Part)this.parts.get(i)).getChildAt(0);
      ((UploadProgressListener)localObject).uploadStarted();
    }
    for (;;)
    {
      paramPart.setMessageState(Part.MessageState.SENDING);
      this.parts.remove(this.parts.indexOf(paramPart));
      this.parts.add(paramPart);
      this.adapter.notifyDataSetChanged();
      this.api.uploadFile(paramPart.getUpload(), i, paramPart.getId(), this.uploadingImageCache, (UploadProgressListener)localObject);
      return;
      localObject = new UploadProgressListener()
      {
        public void uploadNotice(byte paramAnonymousByte) {}
        
        public void uploadStarted() {}
        
        public void uploadStopped() {}
      };
    }
  }
  
  private void showLoadingIndicator()
  {
    this.parts.add(0, this.loadingPart);
    this.adapter.notifyItemInserted(0);
  }
  
  private void showRetryDialog(final Part paramPart)
  {
    new c.a(this.conversationList.getContext()).setTitle(R.string.intercom_inbox_error_state_title).setMessage(R.string.intercom_failed_delivery).setPositiveButton(R.string.intercom_retry, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        ConversationContentPresenter.this.retryTapped(paramPart);
      }
    }).show();
  }
  
  private void smoothScrollToBottom()
  {
    this.conversationList.smoothScrollToPosition(this.adapter.getCount() - 1);
  }
  
  private void updateSendPartOpsMetric()
  {
    this.opsMetricTracker.trackEvent("finish", "time-to-complete-request-send-part-ms");
    this.opsMetricTracker.trackEvent("start", "time-to-render-result-send-part-ms");
    this.conversationList.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        ConversationContentPresenter.this.opsMetricTracker.trackEvent("finish", "time-to-render-result-send-part-ms");
        ViewUtils.removeGlobalLayoutListener(ConversationContentPresenter.this.conversationList, this);
      }
    });
  }
  
  public void addBottomPadding(int paramInt)
  {
    this.conversationList.setPadding(this.conversationList.getPaddingLeft(), this.conversationList.getPaddingTop(), this.conversationList.getPaddingRight(), this.conversationList.getPaddingBottom() + paramInt);
  }
  
  public void cleanup()
  {
    this.conversationList.removeCallbacks(this.replyDeliveredUpdater);
    this.conversationList.removeCallbacks(this.timestampUpdater);
  }
  
  public void fetchConversation(final String paramString)
  {
    if (!paramString.isEmpty())
    {
      this.opsMetricTracker.trackEvent("start", "time-to-complete-request-load-conversation-ms");
      this.conversationId = paramString;
      AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable()
      {
        public void run()
        {
          ConversationContentPresenter.this.api.getConversation(paramString);
        }
      });
    }
  }
  
  Participant getUserParticipant()
  {
    String str = this.userIdentity.getIntercomId();
    Participant localParticipant2 = this.host.getConversation().getParticipant(str);
    Participant localParticipant1 = localParticipant2;
    if (localParticipant2 == Participant.NULL) {
      localParticipant1 = new Participant.Builder().withId(str).build();
    }
    return localParticipant1;
  }
  
  public boolean isAtBottom()
  {
    int i = -1;
    Object localObject = this.layoutManager;
    localObject = ((LinearLayoutManager)localObject).b(((LinearLayoutManager)localObject).getChildCount() - 1, -1, true, false);
    if (localObject == null) {}
    while (i >= this.layoutManager.getChildCount() - 1)
    {
      return true;
      i = LinearLayoutManager.aT((View)localObject);
    }
    return false;
  }
  
  @h
  public void newConversationFailure(NewConversationFailedEvent paramNewConversationFailedEvent)
  {
    markAsFailed(paramNewConversationFailedEvent.getPosition(), paramNewConversationFailedEvent.getPartId(), false);
  }
  
  @h
  public void newConversationSuccess(NewConversationEvent paramNewConversationEvent)
  {
    if ((!this.parts.isEmpty()) && (((Part)this.parts.get(this.parts.size() - 1)).getId().equals(paramNewConversationEvent.getPartId())))
    {
      onNewConversation(paramNewConversationEvent);
      this.host.onConversationCreated(paramNewConversationEvent.getConversation());
    }
  }
  
  /* Error */
  public void onAdminStartedTyping(io.intercom.android.sdk.conversation.events.AdminIsTypingEvent paramAdminIsTypingEvent)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 787	io/intercom/android/sdk/conversation/events/AdminIsTypingEvent:getAdminId	()Ljava/lang/String;
    //   6: astore 5
    //   8: aload_0
    //   9: getfield 137	io/intercom/android/sdk/conversation/ConversationContentPresenter:isTypingViews	Ljava/util/Map;
    //   12: aload 5
    //   14: invokeinterface 792 2 0
    //   19: ifeq +23 -> 42
    //   22: aload_0
    //   23: getfield 137	io/intercom/android/sdk/conversation/ConversationContentPresenter:isTypingViews	Ljava/util/Map;
    //   26: aload 5
    //   28: invokeinterface 795 2 0
    //   33: checkcast 797	io/intercom/android/sdk/views/AdminIsTypingView
    //   36: invokevirtual 800	io/intercom/android/sdk/views/AdminIsTypingView:renewTypingAnimation	()V
    //   39: aload_0
    //   40: monitorexit
    //   41: return
    //   42: new 106	io/intercom/android/sdk/models/Part$Builder
    //   45: dup
    //   46: invokespecial 107	io/intercom/android/sdk/models/Part$Builder:<init>	()V
    //   49: iconst_1
    //   50: invokevirtual 804	io/intercom/android/sdk/models/Part$Builder:withParticipantIsAdmin	(Z)Lio/intercom/android/sdk/models/Part$Builder;
    //   53: ldc_w 806
    //   56: invokevirtual 113	io/intercom/android/sdk/models/Part$Builder:withStyle	(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$Builder;
    //   59: invokevirtual 117	io/intercom/android/sdk/models/Part$Builder:build	()Lio/intercom/android/sdk/models/Part;
    //   62: astore 6
    //   64: aload_0
    //   65: getfield 144	io/intercom/android/sdk/conversation/ConversationContentPresenter:host	Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;
    //   68: invokeinterface 724 1 0
    //   73: aload 5
    //   75: invokevirtual 729	io/intercom/android/sdk/models/Conversation:getParticipant	(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant;
    //   78: astore 4
    //   80: aload 4
    //   82: astore_3
    //   83: aload 4
    //   85: getstatic 733	io/intercom/android/sdk/models/Participant:NULL	Lio/intercom/android/sdk/models/Participant;
    //   88: if_acmpne +29 -> 117
    //   91: aload 5
    //   93: aload_1
    //   94: invokevirtual 809	io/intercom/android/sdk/conversation/events/AdminIsTypingEvent:getAdminName	()Ljava/lang/String;
    //   97: ldc_w 811
    //   100: ldc_w 813
    //   103: aload_1
    //   104: invokevirtual 816	io/intercom/android/sdk/conversation/events/AdminIsTypingEvent:getAdminAvatarUrl	()Ljava/lang/String;
    //   107: ldc_w 813
    //   110: invokestatic 821	io/intercom/android/sdk/models/Avatar:create	(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/Avatar;
    //   113: invokestatic 824	io/intercom/android/sdk/models/Participant:create	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/models/Avatar;)Lio/intercom/android/sdk/models/Participant;
    //   116: astore_3
    //   117: aload 6
    //   119: aload_3
    //   120: invokevirtual 531	io/intercom/android/sdk/models/Part:setParticipant	(Lio/intercom/android/sdk/models/Participant;)V
    //   123: aload 6
    //   125: iconst_1
    //   126: invokevirtual 535	io/intercom/android/sdk/models/Part:setEntranceAnimation	(Z)V
    //   129: aload_0
    //   130: invokevirtual 826	io/intercom/android/sdk/conversation/ConversationContentPresenter:isAtBottom	()Z
    //   133: istore_2
    //   134: aload_0
    //   135: getfield 156	io/intercom/android/sdk/conversation/ConversationContentPresenter:parts	Ljava/util/List;
    //   138: aload 6
    //   140: invokeinterface 235 2 0
    //   145: pop
    //   146: aload_0
    //   147: getfield 146	io/intercom/android/sdk/conversation/ConversationContentPresenter:conversationList	Landroid/support/v7/widget/RecyclerView;
    //   150: invokevirtual 379	android/support/v7/widget/RecyclerView:getContext	()Landroid/content/Context;
    //   153: astore_3
    //   154: aload_3
    //   155: getstatic 831	io/intercom/android/sdk/R$layout:intercom_blocks_admin_layout	I
    //   158: aconst_null
    //   159: invokestatic 837	android/view/View:inflate	(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    //   162: checkcast 839	android/widget/LinearLayout
    //   165: astore_1
    //   166: new 797	io/intercom/android/sdk/views/AdminIsTypingView
    //   169: dup
    //   170: aload_3
    //   171: invokespecial 840	io/intercom/android/sdk/views/AdminIsTypingView:<init>	(Landroid/content/Context;)V
    //   174: astore_3
    //   175: aload_3
    //   176: new 14	io/intercom/android/sdk/conversation/ConversationContentPresenter$3
    //   179: dup
    //   180: aload_0
    //   181: aload 5
    //   183: aload 6
    //   185: invokespecial 843	io/intercom/android/sdk/conversation/ConversationContentPresenter$3:<init>	(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;Ljava/lang/String;Lio/intercom/android/sdk/models/Part;)V
    //   188: invokevirtual 847	io/intercom/android/sdk/views/AdminIsTypingView:setListener	(Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;)V
    //   191: aload_1
    //   192: aload_3
    //   193: invokevirtual 851	android/widget/LinearLayout:addView	(Landroid/view/View;)V
    //   196: aload_0
    //   197: getfield 137	io/intercom/android/sdk/conversation/ConversationContentPresenter:isTypingViews	Ljava/util/Map;
    //   200: aload 5
    //   202: aload_3
    //   203: invokeinterface 855 3 0
    //   208: pop
    //   209: aload_0
    //   210: getfield 148	io/intercom/android/sdk/conversation/ConversationContentPresenter:adapter	Lio/intercom/android/sdk/conversation/ConversationPartAdapter;
    //   213: aload 6
    //   215: aload_1
    //   216: invokevirtual 345	io/intercom/android/sdk/conversation/ConversationPartAdapter:setViewForPart	(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V
    //   219: aload_0
    //   220: getfield 148	io/intercom/android/sdk/conversation/ConversationContentPresenter:adapter	Lio/intercom/android/sdk/conversation/ConversationPartAdapter;
    //   223: invokevirtual 543	io/intercom/android/sdk/conversation/ConversationPartAdapter:notifyDataSetChanged	()V
    //   226: iload_2
    //   227: ifeq -188 -> 39
    //   230: aload_0
    //   231: invokespecial 216	io/intercom/android/sdk/conversation/ConversationContentPresenter:smoothScrollToBottom	()V
    //   234: goto -195 -> 39
    //   237: astore_1
    //   238: aload_0
    //   239: monitorexit
    //   240: aload_1
    //   241: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	242	0	this	ConversationContentPresenter
    //   0	242	1	paramAdminIsTypingEvent	io.intercom.android.sdk.conversation.events.AdminIsTypingEvent
    //   133	94	2	bool	boolean
    //   82	121	3	localObject	Object
    //   78	6	4	localParticipant	Participant
    //   6	195	5	str	String
    //   62	152	6	localPart	Part
    // Exception table:
    //   from	to	target	type
    //   2	39	237	finally
    //   42	80	237	finally
    //   83	117	237	finally
    //   117	226	237	finally
    //   230	234	237	finally
  }
  
  void onAdminStoppedTyping(String paramString1, String paramString2)
  {
    this.isTypingViews.remove(paramString1);
    int i = positionOfPart(this.parts.size() - 1, paramString2);
    if (i >= 0)
    {
      this.parts.remove(i);
      this.adapter.notifyDataSetChanged();
    }
  }
  
  public void onConversationFetched(ConversationEvent paramConversationEvent)
  {
    this.opsMetricTracker.trackEvent("finish", "time-to-complete-request-load-conversation-ms");
    this.opsMetricTracker.trackEvent("start", "time-to-render-result-load-conversation-ms");
    paramConversationEvent = paramConversationEvent.getResponse();
    this.parts.clear();
    paramConversationEvent = paramConversationEvent.getParts().iterator();
    while (paramConversationEvent.hasNext())
    {
      Part localPart = (Part)paramConversationEvent.next();
      if (this.adapter.getViewForPart(localPart) == null) {
        addViewForPart(localPart);
      }
      this.parts.add(localPart);
    }
    this.parts.addAll(this.sendingParts);
    this.timestampAdder.addDayDividers(this.parts);
    this.adapter.notifyDataSetChanged();
    this.conversationList.postDelayed(this.timestampUpdater, TIMESTAMP_UPDATE_PERIOD);
    this.conversationList.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        ConversationContentPresenter.this.opsMetricTracker.trackEvent("finish", "time-to-render-result-load-conversation-ms");
        ViewUtils.removeGlobalLayoutListener(ConversationContentPresenter.this.conversationList, this);
      }
    });
  }
  
  public void onGlobalLayout()
  {
    this.intercomLinkPresenter.updateIntercomLink(this);
  }
  
  public void onNewConversation(NewConversationEvent paramNewConversationEvent)
  {
    updateSendPartOpsMetric();
    Conversation localConversation = paramNewConversationEvent.getConversation();
    paramNewConversationEvent = (Part)paramNewConversationEvent.getConversation().getParts().get(0);
    this.conversationId = localConversation.getId();
    this.parts.remove(this.parts.size() - 1);
    this.sendingParts.clear();
    addViewForPart(paramNewConversationEvent);
    this.parts.add(paramNewConversationEvent);
    this.adapter.notifyDataSetChanged();
    this.soundPlayer.playReplyDeliveredSound();
  }
  
  public void onNewPartReceived()
  {
    Iterator localIterator = this.isTypingViews.values().iterator();
    while (localIterator.hasNext())
    {
      AdminIsTypingView localAdminIsTypingView = (AdminIsTypingView)localIterator.next();
      if (localAdminIsTypingView != null) {
        localAdminIsTypingView.cancelTypingAnimation();
      }
    }
    if (isAtBottom()) {
      smoothScrollToBottom();
    }
    while ((this.parts.size() <= 0) || (!((Part)this.parts.get(this.parts.size() - 1)).isAdmin())) {
      return;
    }
    this.pill.setVisibility(0);
  }
  
  public void onPartClicked(Part paramPart)
  {
    if (paramPart.getMessageState() == Part.MessageState.FAILED) {
      showRetryDialog(paramPart);
    }
    while (paramPart.getMessageState() != Part.MessageState.UPLOAD_FAILED) {
      return;
    }
    retryFailedUpload(paramPart);
  }
  
  public void onProfileScrolled()
  {
    int i = this.adapter.getCount() - 1;
    if (i > 0) {}
    for (View localView = this.conversationList.getChildAt(i);; localView = null)
    {
      this.intercomLinkPresenter.onProfileScrolled(localView);
      return;
    }
  }
  
  public void onReplyDelivered(ReplyEvent paramReplyEvent)
  {
    updateSendPartOpsMetric();
    final Part localPart = paramReplyEvent.getResponse();
    int i = positionOfPart(paramReplyEvent.getPosition(), paramReplyEvent.getPartId());
    if (i >= 0) {
      this.sendingParts.remove(this.parts.remove(i));
    }
    addViewForPart(localPart);
    localPart.setDisplayDelivered(true);
    this.parts.add(localPart);
    this.adapter.notifyDataSetChanged();
    this.soundPlayer.playReplyDeliveredSound();
    this.conversationList.removeCallbacks(this.replyDeliveredUpdater);
    this.replyDeliveredUpdater = new Runnable()
    {
      public void run()
      {
        localPart.setDisplayDelivered(false);
        ConversationContentPresenter.this.adapter.notifyDataSetChanged();
      }
    };
    this.conversationList.postDelayed(this.replyDeliveredUpdater, PART_DISPLAY_DELIVERED_TIMEOUT);
  }
  
  @h
  public void onUserContentSeenByAdmin(UserContentSeenByAdminEvent paramUserContentSeenByAdminEvent)
  {
    if ((paramUserContentSeenByAdminEvent.getConversationId().equals(this.conversationId)) && (!this.parts.isEmpty()))
    {
      int i = 0;
      int j = this.parts.size() - 1;
      if (j >= 0)
      {
        paramUserContentSeenByAdminEvent = (Part)this.parts.get(j);
        if ((i == 0) && (!paramUserContentSeenByAdminEvent.isAdmin()))
        {
          paramUserContentSeenByAdminEvent.setSeenByAdmin("seen");
          i = 1;
        }
        for (;;)
        {
          j -= 1;
          break;
          paramUserContentSeenByAdminEvent.setSeenByAdmin("hide");
        }
      }
      this.adapter.notifyDataSetChanged();
    }
  }
  
  @h
  public void replyFailure(ReplyFailedEvent paramReplyFailedEvent)
  {
    markAsFailed(paramReplyFailedEvent.getPosition(), paramReplyFailedEvent.getPartId(), paramReplyFailedEvent.isUpload());
    this.soundPlayer.playReplyFailedSound();
  }
  
  void retryTapped(Part paramPart)
  {
    paramPart.setMessageState(Part.MessageState.SENDING);
    this.parts.remove(paramPart);
    this.parts.add(paramPart);
    this.adapter.notifyDataSetChanged();
    paramPart = paramPart.getBlocks();
    int j = paramPart.size();
    ArrayList localArrayList = new ArrayList(paramPart.size());
    int i = 0;
    while (i < j)
    {
      localArrayList.add(((Block)paramPart.get(i)).toBuilder());
      i += 1;
    }
    sendPart(localArrayList);
  }
  
  public void scrollToBottom()
  {
    this.conversationList.bA(this.adapter.getCount() - 1);
  }
  
  public void scrollToTop()
  {
    this.conversationList.bA(0);
  }
  
  public void sendPart(List<Block.Builder> paramList)
  {
    this.opsMetricTracker.trackEvent("finish", "time-to-process-action-send-part-ms");
    this.opsMetricTracker.trackEvent("start", "time-to-complete-request-send-part-ms");
    Part localPart = addSendingPart(paramList);
    if (TextUtils.isEmpty(this.conversationId))
    {
      this.api.startNewConversation(paramList, this.parts.size() - 1, localPart.getId());
      return;
    }
    this.api.replyToConversation(this.conversationId, paramList, this.parts.size() - 1, localPart.getId(), false);
  }
  
  public void setup()
  {
    this.opsMetricTracker.trackEvent("finish", "time-to-process-action-load-conversation-ms");
    this.conversationList.setLayoutManager(this.layoutManager);
    this.conversationList.setAdapter(this.adapter);
    this.conversationList.a(new ConversationItemDecoration(this.conversationList.getContext(), this.parts));
    ((bi)this.conversationList.getItemAnimator()).aic = false;
    this.conversationList.setNestedScrollingEnabled(true);
    this.conversationList.setVisibility(0);
    this.conversationList.a(new RecyclerView.n()
    {
      public void onScrollStateChanged(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt)
      {
        if ((paramAnonymousInt == 0) && (ConversationContentPresenter.this.isAtBottom())) {
          ConversationContentPresenter.this.pill.setVisibility(8);
        }
      }
      
      public void onScrolled(RecyclerView paramAnonymousRecyclerView, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        ConversationContentPresenter.this.intercomLinkPresenter.updateIntercomLink(ConversationContentPresenter.this);
      }
    });
    this.intercomLinkPresenter.setup(this);
    this.pill.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ConversationContentPresenter.this.pill.setVisibility(8);
        ConversationContentPresenter.this.smoothScrollToBottom();
      }
    });
  }
  
  public void showContentView()
  {
    hideLoadingIndicator();
    this.pill.setVisibility(8);
    this.conversationList.setVisibility(0);
  }
  
  public void showErrorView()
  {
    hideLoadingIndicator();
    this.pill.setVisibility(8);
    this.conversationList.setVisibility(8);
  }
  
  public void showLoadingView()
  {
    showLoadingIndicator();
    this.pill.setVisibility(8);
    this.conversationList.setVisibility(0);
  }
  
  public void smoothScrollToTop()
  {
    this.conversationList.smoothScrollToPosition(0);
  }
  
  @h
  public void uploadFailure(UploadFailedEvent paramUploadFailedEvent)
  {
    markAsFailed(paramUploadFailedEvent.getPosition(), paramUploadFailedEvent.getPartId(), true);
    this.soundPlayer.playReplyFailedSound();
  }
  
  public void uploadImage(List<Block.Builder> paramList, b paramb)
  {
    paramList = addSendingPart(paramList);
    paramList.setUpload(paramb);
    this.api.uploadFile(paramb, this.parts.size() - 1, paramList.getId(), this.uploadingImageCache, (UploadProgressListener)this.adapter.getViewForPart(paramList).getChildAt(0));
  }
  
  @h
  public void uploadSuccess(UploadEvent paramUploadEvent)
  {
    String str = paramUploadEvent.getTempPartId();
    int i = positionOfPart(paramUploadEvent.getTempPartPosition(), str);
    if (i < 0) {}
    Part localPart;
    do
    {
      return;
      localPart = (Part)this.parts.get(i);
    } while ((localPart.getBlocks().isEmpty()) || (!str.equals(localPart.getId())));
    paramUploadEvent = createBlocksForUpload(paramUploadEvent, (Block)localPart.getBlocks().get(0));
    if (TextUtils.isEmpty(this.conversationId))
    {
      this.api.startNewConversation(paramUploadEvent, this.parts.size() - 1, str);
      return;
    }
    this.api.replyToConversation(this.conversationId, paramUploadEvent, i, localPart.getId(), true);
  }
  
  static abstract interface Host
  {
    public abstract Conversation getConversation();
    
    public abstract String getConversationId();
    
    public abstract void onConversationCreated(Conversation paramConversation);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/ConversationContentPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */