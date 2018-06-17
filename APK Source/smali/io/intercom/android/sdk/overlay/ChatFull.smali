.class Lio/intercom/android/sdk/overlay/ChatFull;
.super Lio/intercom/android/sdk/overlay/ChatNotification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/overlay/ChatFull$ChatFullButtonClickListener;,
        Lio/intercom/android/sdk/overlay/ChatFull$ChatFullImageClickListener;
    }
.end annotation


# instance fields
.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/models/Conversation;",
            "II",
            "Lio/intercom/android/sdk/overlay/InAppNotification$Listener;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lio/intercom/android/sdk/overlay/ChatNotification;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    iput-object p6, p0, Lio/intercom/android/sdk/overlay/ChatFull;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    move-object/from16 v0, p8

    iput-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method


# virtual methods
.method protected getContentContainer()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull;->overlayRoot:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->chathead_text_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected inflateChatRootView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 13

    const/4 v7, 0x0

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_preview_chat_full_overlay:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    new-instance v12, Lio/intercom/android/sdk/blocks/Blocks;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull;->localisedContext:Landroid/content/Context;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getBlocksTwig()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v1

    invoke-direct {v12, v0, v1}, Lio/intercom/android/sdk/blocks/Blocks;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/twig/Twig;)V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v9

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v2

    new-instance v0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;

    new-instance v1, Lio/intercom/android/sdk/blocks/UploadingImageCache;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/UploadingImageCache;-><init>()V

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/ChatFull;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v4, p0, Lio/intercom/android/sdk/overlay/ChatFull;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v4}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/intercom/android/sdk/overlay/ChatFull$ChatFullImageClickListener;

    invoke-direct {v5, v7}, Lio/intercom/android/sdk/overlay/ChatFull$ChatFullImageClickListener;-><init>(Lio/intercom/android/sdk/overlay/ChatFull$1;)V

    new-instance v6, Lio/intercom/android/sdk/overlay/ChatFull$ChatFullButtonClickListener;

    invoke-direct {v6, v7}, Lio/intercom/android/sdk/overlay/ChatFull$ChatFullButtonClickListener;-><init>(Lio/intercom/android/sdk/overlay/ChatFull$1;)V

    iget-object v7, p0, Lio/intercom/android/sdk/overlay/ChatFull;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getGson()Lio/intercom/a/b/a/e;

    move-result-object v8

    invoke-virtual {v9}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v9

    iget-object v10, p0, Lio/intercom/android/sdk/overlay/ChatFull;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-direct/range {v0 .. v10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;-><init>(Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Ljava/lang/String;Lio/intercom/android/sdk/blocks/ImageClickListener;Lio/intercom/android/sdk/blocks/ButtonClickListener;Lio/intercom/a/a/a/j;Lio/intercom/a/b/a/e;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getChatFullHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/ChatFull;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v12, v1, v0}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    sget v0, Lio/intercom/android/sdk/R$id;->chathead_text_container:I

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lio/intercom/android/sdk/overlay/ChatFull$1;

    invoke-direct {v3, p0, v0, v11}, Lio/intercom/android/sdk/overlay/ChatFull$1;-><init>(Lio/intercom/android/sdk/overlay/ChatFull;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/api/Api;->markConversationAsRead(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/ChatFull;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/ChatFull;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->viewedInApp(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v11
.end method

.method public update(Lio/intercom/android/sdk/models/Conversation;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method protected updateContentContainer(Lio/intercom/android/sdk/models/Part;)V
    .locals 0

    return-void
.end method

.method protected updateViewDataDuringReplyPulse(I)V
    .locals 0

    return-void
.end method
