.class public Lio/intercom/android/sdk/store/StoreFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStore(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/conversation/SoundPlayer;Lio/intercom/android/sdk/Provider;Landroid/content/Context;Lio/intercom/android/sdk/twig/Twig;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/Provider;)Lio/intercom/android/sdk/store/Store;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/nexus/NexusClient;",
            ">;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/overlay/OverlayPresenter;",
            ">;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/UserUpdateBatcher;",
            ">;",
            "Lio/intercom/android/sdk/conversation/SoundPlayer;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            ">;",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/twig/Twig;",
            "Lio/intercom/a/c/a/b;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            ">;)",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation

    new-instance v11, Lio/intercom/android/sdk/store/Store;

    new-instance v2, Lio/intercom/android/sdk/store/StateReducer;

    new-instance v3, Lio/intercom/android/sdk/store/HasConversationsReducer;

    invoke-direct {v3}, Lio/intercom/android/sdk/store/HasConversationsReducer;-><init>()V

    new-instance v4, Lio/intercom/android/sdk/store/LastViewReducer;

    invoke-direct {v4}, Lio/intercom/android/sdk/store/LastViewReducer;-><init>()V

    new-instance v5, Lio/intercom/android/sdk/store/TeamPresenceReducer;

    invoke-direct {v5}, Lio/intercom/android/sdk/store/TeamPresenceReducer;-><init>()V

    new-instance v6, Lio/intercom/android/sdk/store/UnreadConversationsReducer;

    invoke-direct {v6}, Lio/intercom/android/sdk/store/UnreadConversationsReducer;-><init>()V

    new-instance v7, Lio/intercom/android/sdk/store/InboxStateReducer;

    invoke-direct {v7}, Lio/intercom/android/sdk/store/InboxStateReducer;-><init>()V

    new-instance v8, Lio/intercom/android/sdk/store/HostAppStateReducer;

    invoke-direct {v8}, Lio/intercom/android/sdk/store/HostAppStateReducer;-><init>()V

    new-instance v9, Lio/intercom/android/sdk/store/OverlayStateReducer;

    invoke-direct {v9}, Lio/intercom/android/sdk/store/OverlayStateReducer;-><init>()V

    new-instance v10, Lio/intercom/android/sdk/store/ActiveConversationStateReducer;

    invoke-direct {v10}, Lio/intercom/android/sdk/store/ActiveConversationStateReducer;-><init>()V

    invoke-direct/range {v2 .. v10}, Lio/intercom/android/sdk/store/StateReducer;-><init>(Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;Lio/intercom/android/sdk/store/Store$Reducer;)V

    const/4 v3, 0x0

    sget-object v4, Lio/intercom/android/sdk/store/LastViewReducer;->INITIAL_STATE:Lio/intercom/android/sdk/state/UiState;

    sget-object v5, Lio/intercom/android/sdk/store/TeamPresenceReducer;->INITIAL_STATE:Lio/intercom/android/sdk/models/TeamPresence;

    sget-object v6, Lio/intercom/android/sdk/store/UnreadConversationsReducer;->INITIAL_STATE:Ljava/util/Set;

    sget-object v7, Lio/intercom/android/sdk/store/InboxStateReducer;->INITIAL_STATE:Lio/intercom/android/sdk/state/InboxState;

    sget-object v8, Lio/intercom/android/sdk/store/HostAppStateReducer;->INITIAL_STATE:Lio/intercom/android/sdk/state/HostAppState;

    sget-object v9, Lio/intercom/android/sdk/store/OverlayStateReducer;->INITIAL_STATE:Lio/intercom/android/sdk/state/OverlayState;

    sget-object v10, Lio/intercom/android/sdk/store/ActiveConversationStateReducer;->INITIAL_STATE:Lio/intercom/android/sdk/state/ActiveConversationState;

    invoke-static/range {v3 .. v10}, Lio/intercom/android/sdk/state/State;->create(ZLio/intercom/android/sdk/state/UiState;Lio/intercom/android/sdk/models/TeamPresence;Ljava/util/Set;Lio/intercom/android/sdk/state/InboxState;Lio/intercom/android/sdk/state/HostAppState;Lio/intercom/android/sdk/state/OverlayState;Lio/intercom/android/sdk/state/ActiveConversationState;)Lio/intercom/android/sdk/state/State;

    move-result-object v3

    const/16 v4, 0xb

    new-array v4, v4, [Lio/intercom/android/sdk/store/Store$Middleware;

    const/4 v5, 0x0

    new-instance v6, Lio/intercom/android/sdk/middleware/LoggerMiddleware;

    move-object/from16 v0, p8

    invoke-direct {v6, v0}, Lio/intercom/android/sdk/middleware/LoggerMiddleware;-><init>(Lio/intercom/android/sdk/twig/Twig;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lio/intercom/android/sdk/middleware/ApiMiddleware;

    invoke-direct {v6, p0}, Lio/intercom/android/sdk/middleware/ApiMiddleware;-><init>(Lio/intercom/android/sdk/Provider;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lio/intercom/android/sdk/middleware/UserUpdateBatcherMiddleware;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v6, v0, p1, v1}, Lio/intercom/android/sdk/middleware/UserUpdateBatcherMiddleware;-><init>(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v6, p2, p1, v7}, Lio/intercom/android/sdk/middleware/NexusClientMiddleware;-><init>(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/Provider;Landroid/os/Handler;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;

    invoke-direct {v6, p3}, Lio/intercom/android/sdk/middleware/OverlayPresenterMiddleware;-><init>(Lio/intercom/android/sdk/Provider;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Lio/intercom/android/sdk/middleware/AudioMiddleware;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v6, v0, v1}, Lio/intercom/android/sdk/middleware/AudioMiddleware;-><init>(Lio/intercom/android/sdk/conversation/SoundPlayer;Lio/intercom/android/sdk/Provider;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Lio/intercom/android/sdk/middleware/FirstMessageMiddleware;

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-direct {v6, v0, v1}, Lio/intercom/android/sdk/middleware/FirstMessageMiddleware;-><init>(Lio/intercom/android/sdk/twig/Twig;Landroid/content/Context;)V

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-instance v6, Lio/intercom/android/sdk/middleware/UserIdentityMiddleware;

    move-object/from16 v0, p6

    invoke-direct {v6, v0}, Lio/intercom/android/sdk/middleware/UserIdentityMiddleware;-><init>(Lio/intercom/android/sdk/Provider;)V

    aput-object v6, v4, v5

    const/16 v5, 0x8

    new-instance v6, Lio/intercom/android/sdk/middleware/AppConfigMiddleware;

    move-object/from16 v0, p9

    invoke-direct {v6, p1, v0}, Lio/intercom/android/sdk/middleware/AppConfigMiddleware;-><init>(Lio/intercom/android/sdk/Provider;Lio/intercom/a/c/a/b;)V

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;

    move-object/from16 v0, p10

    invoke-direct {v6, v0}, Lio/intercom/android/sdk/middleware/MetricTrackerMiddleware;-><init>(Lio/intercom/android/sdk/Provider;)V

    aput-object v6, v4, v5

    const/16 v5, 0xa

    new-instance v6, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v6, p0, v7}, Lio/intercom/android/sdk/middleware/OperatorClientConditionsMiddleware;-><init>(Lio/intercom/android/sdk/Provider;Landroid/os/Handler;)V

    aput-object v6, v4, v5

    invoke-direct {v11, v2, v3, v4}, Lio/intercom/android/sdk/store/Store;-><init>(Lio/intercom/android/sdk/store/Store$Reducer;Ljava/lang/Object;[Lio/intercom/android/sdk/store/Store$Middleware;)V

    return-object v11
.end method
