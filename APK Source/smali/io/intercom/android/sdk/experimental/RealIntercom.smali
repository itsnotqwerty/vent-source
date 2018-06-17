.class public Lio/intercom/android/sdk/experimental/RealIntercom;
.super Lio/intercom/android/sdk/experimental/Intercom;


# instance fields
.field private final activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

.field private final apiProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;"
        }
    .end annotation
.end field

.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

.field private final overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;

.field private final resetManager:Lio/intercom/android/sdk/ResetManager;

.field private final store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private final superDeDuper:Lio/intercom/android/sdk/api/DeDuper;

.field private final systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private final unreadCountTracker:Lio/intercom/android/sdk/store/UnreadCountTracker;

.field private final userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

.field private final userUpdateBatcher:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/UserUpdateBatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/DeDuper;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/nexus/NexusClient;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/store/UnreadCountTracker;Lio/intercom/android/sdk/metrics/MetricTracker;Landroid/content/Context;Lio/intercom/android/sdk/overlay/OverlayPresenter;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/push/SystemNotificationManager;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/ResetManager;Lio/intercom/android/sdk/twig/Twig;Lio/intercom/android/sdk/utilities/ActivityFinisher;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/api/DeDuper;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;",
            "Lio/intercom/android/sdk/nexus/NexusClient;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/store/UnreadCountTracker;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/overlay/OverlayPresenter;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/android/sdk/push/SystemNotificationManager;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/UserUpdateBatcher;",
            ">;",
            "Lio/intercom/android/sdk/ResetManager;",
            "Lio/intercom/android/sdk/twig/Twig;",
            "Lio/intercom/android/sdk/utilities/ActivityFinisher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/android/sdk/experimental/Intercom;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->superDeDuper:Lio/intercom/android/sdk/api/DeDuper;

    iput-object p2, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->apiProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    iput-object p4, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    iput-object p5, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->unreadCountTracker:Lio/intercom/android/sdk/store/UnreadCountTracker;

    iput-object p6, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p7, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    iput-object p8, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iput-object p9, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p10, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iput-object p11, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;

    iput-object p12, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userUpdateBatcher:Lio/intercom/android/sdk/Provider;

    move-object/from16 v0, p13

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->resetManager:Lio/intercom/android/sdk/ResetManager;

    move-object/from16 v0, p14

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    move-object/from16 v0, p15

    iput-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    sget-object v1, Lio/intercom/android/sdk/experimental/RealIntercom$3;->$SwitchMap$io$intercom$android$sdk$IntercomPushManager$IntercomPushIntegrationType:[I

    invoke-static {}, Lio/intercom/android/sdk/IntercomPushManager;->getInstalledModuleType()Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p11}, Lio/intercom/android/sdk/push/SystemNotificationManager;->deleteNotificationChannels()V

    const-string v1, "No push integration detected"

    move-object/from16 v0, p14

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Lio/intercom/android/sdk/exceptions/IntercomIntegrationException;

    const-string v2, "Both Intercom FCM and GCM modules were included. Please include only one of these dependencies in your project."

    invoke-direct {v1, v2}, Lio/intercom/android/sdk/exceptions/IntercomIntegrationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const-string v1, "Enabling FCM for cloud messaging"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p14

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p11}, Lio/intercom/android/sdk/push/SystemNotificationManager;->setUpNotificationChannelsIfSupported()V

    goto :goto_0

    :pswitch_2
    const-string v1, "Enabling GCM for cloud messaging"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p14

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p11}, Lio/intercom/android/sdk/push/SystemNotificationManager;->setUpNotificationChannelsIfSupported()V

    invoke-direct {p0}, Lio/intercom/android/sdk/experimental/RealIntercom;->setGcmSenderId()V

    new-instance v1, Lio/intercom/android/sdk/experimental/RealIntercom$1;

    invoke-direct {v1, p0, p7}, Lio/intercom/android/sdk/experimental/RealIntercom$1;-><init>(Lio/intercom/android/sdk/experimental/RealIntercom;Landroid/content/Context;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/experimental/RealIntercom;)Lio/intercom/android/sdk/overlay/OverlayPresenter;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->overlayPresenter:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    return-object v0
.end method

.method public static create(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/experimental/RealIntercom;
    .locals 16

    invoke-static/range {p0 .. p2}, Lio/intercom/android/sdk/Injector;->initWithAppCredentials(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v7

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getUserIdentity()Lio/intercom/android/sdk/identity/UserIdentity;

    move-result-object v10

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v4

    new-instance v0, Lio/intercom/android/sdk/experimental/RealIntercom;

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getDeDuper()Lio/intercom/android/sdk/api/DeDuper;

    move-result-object v1

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getApiProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v2

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getNexusClient()Lio/intercom/android/sdk/nexus/NexusClient;

    move-result-object v3

    new-instance v5, Lio/intercom/android/sdk/store/UnreadCountTracker;

    invoke-direct {v5, v4}, Lio/intercom/android/sdk/store/UnreadCountTracker;-><init>(Lio/intercom/android/sdk/store/Store;)V

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v6

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getOverlayPresenter()Lio/intercom/android/sdk/overlay/OverlayPresenter;

    move-result-object v8

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v9

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getSystemNotificationManager()Lio/intercom/android/sdk/push/SystemNotificationManager;

    move-result-object v11

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getUserUpdateBatcherProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v12

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getResetManager()Lio/intercom/android/sdk/ResetManager;

    move-result-object v13

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v14

    invoke-virtual {v7}, Lio/intercom/android/sdk/Injector;->getActivityFinisher()Lio/intercom/android/sdk/utilities/ActivityFinisher;

    move-result-object v15

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v15}, Lio/intercom/android/sdk/experimental/RealIntercom;-><init>(Lio/intercom/android/sdk/api/DeDuper;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/nexus/NexusClient;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/store/UnreadCountTracker;Lio/intercom/android/sdk/metrics/MetricTracker;Landroid/content/Context;Lio/intercom/android/sdk/overlay/OverlayPresenter;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/push/SystemNotificationManager;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/ResetManager;Lio/intercom/android/sdk/twig/Twig;Lio/intercom/android/sdk/utilities/ActivityFinisher;)V

    return-object v0
.end method

.method private logErrorAndOpenInbox(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/experimental/RealIntercom;->displayConversationsList()V

    return-void
.end method

.method private logEventWithValidation(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The event name is null or empty. We can\'t log an event with this string."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userUpdateBatcher:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/UserUpdateBatcher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/api/UserUpdateBatcher;->submitPendingUpdate()V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/Api;

    invoke-virtual {v0, p1, p2}, Lio/intercom/android/sdk/api/Api;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private noUserRegistered()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->identityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->isSoftReset()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openIntercomChatPush(Ljava/lang/String;Landroid/app/TaskStackBuilder;)V
    .locals 3

    const-string v0, "multiple_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openInbox(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {p2, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    :goto_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/metrics/MetricTracker;->viewedPushNotification(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->systemNotificationManager:Lio/intercom/android/sdk/push/SystemNotificationManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/push/SystemNotificationManager;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    sget-object v1, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-static {v0, p1, v1}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openConversation(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private performUpdate(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->superDeDuper:Lio/intercom/android/sdk/api/DeDuper;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/api/DeDuper;->shouldUpdateUser(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->superDeDuper:Lio/intercom/android/sdk/api/DeDuper;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/api/DeDuper;->update(Ljava/util/Map;)V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->APP_IS_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userUpdateBatcher:Lio/intercom/android/sdk/Provider;

    invoke-interface {v1}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/api/UserUpdateBatcher;

    new-instance v2, Lio/intercom/android/sdk/api/UserUpdateRequest;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v3, v0, p1, v3}, Lio/intercom/android/sdk/api/UserUpdateRequest;-><init>(ZZLjava/util/Map;Z)V

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/api/UserUpdateBatcher;->updateUser(Lio/intercom/android/sdk/api/UserUpdateRequest;)V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "dupe"

    const-string v2, "updated user"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "dupe"

    const-string v2, "dropped dupe"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerIdentifiedUser(Lio/intercom/android/sdk/identity/Registration;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The registration object you passed to is null. An example successful call is registerIdentifiedUser(Registration.create().withEmail(email));"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/experimental/RealIntercom;->userIsRegistered(Lio/intercom/android/sdk/identity/Registration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/intercom/android/sdk/experimental/RealIntercom;->softRegister()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->resetManager:Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/ResetManager;->hardReset()V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/identity/UserIdentity;->canRegisterIdentifiedUser(Lio/intercom/android/sdk/identity/Registration;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/identity/UserIdentity;->registerIdentifiedUser(Lio/intercom/android/sdk/identity/Registration;)V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    invoke-virtual {v0}, Lio/intercom/android/sdk/nexus/NexusClient;->disconnect()V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v3, Lio/intercom/android/sdk/store/Selectors;->SESSION_STARTED_SINCE_LAST_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v2, Lio/intercom/android/sdk/store/Selectors;->APP_IS_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/Registration;->getAttributes()Lio/intercom/android/sdk/UserAttributes;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Lio/intercom/android/sdk/api/UserUpdateRequest;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/Registration;->getAttributes()Lio/intercom/android/sdk/UserAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/android/sdk/UserAttributes;->toMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, v1}, Lio/intercom/android/sdk/api/UserUpdateRequest;-><init>(ZZLjava/util/Map;Z)V

    move-object v1, v2

    :goto_2
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userUpdateBatcher:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/UserUpdateBatcher;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/api/UserUpdateBatcher;->updateUser(Lio/intercom/android/sdk/api/UserUpdateRequest;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v2, Lio/intercom/android/sdk/api/UserUpdateRequest;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v3, v0, v1}, Lio/intercom/android/sdk/api/UserUpdateRequest;-><init>(ZZZ)V

    move-object v1, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/identity/UserIdentity;->registrationHasAttributes(Lio/intercom/android/sdk/identity/Registration;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/Registration;->getAttributes()Lio/intercom/android/sdk/UserAttributes;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "We already have a registered user. Updating this user with the attributes provided."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/Registration;->getAttributes()Lio/intercom/android/sdk/UserAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/UserAttributes;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->performUpdate(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Failed to register user. We already have a registered user. If you are attempting to register a new user, call logout() before this."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private registerUnidentifiedUser()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->canRegisterUnidentifiedUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->resetManager:Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/ResetManager;->hardReset()V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->registerUnidentifiedUser()V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    invoke-virtual {v0}, Lio/intercom/android/sdk/nexus/NexusClient;->disconnect()V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->APP_IS_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v4, Lio/intercom/android/sdk/store/Selectors;->SESSION_STARTED_SINCE_LAST_BACKGROUNDED:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v1, v4}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userUpdateBatcher:Lio/intercom/android/sdk/Provider;

    invoke-interface {v1}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/api/UserUpdateBatcher;

    new-instance v4, Lio/intercom/android/sdk/api/UserUpdateRequest;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v4, v3, v0, v2}, Lio/intercom/android/sdk/api/UserUpdateRequest;-><init>(ZZZ)V

    invoke-virtual {v1, v4}, Lio/intercom/android/sdk/api/UserUpdateBatcher;->updateUser(Lio/intercom/android/sdk/api/UserUpdateRequest;)V

    :goto_1
    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Failed to register user. We already have a registered user. If you are attempting to register a new user, call logout() before this. If you are attempting to register an identified user call: registerIdentifiedUser(Registration)"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setGcmSenderId()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_gcm_sender_id:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lio/intercom/android/sdk/IntercomPushManager;->cacheSenderId(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private softRegister()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/intercom/android/sdk/user/DeviceData;->getDeviceToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/Api;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/api/Api;->setDeviceToken(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getRealTimeConfig()Lio/intercom/android/sdk/nexus/NexusConfig;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lio/intercom/android/sdk/nexus/NexusClient;->connect(Lio/intercom/android/sdk/nexus/NexusConfig;Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->softRestart()V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->resetManager:Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/ResetManager;->clear()V

    new-instance v0, Lio/intercom/android/sdk/experimental/RealIntercom$2;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/experimental/RealIntercom$2;-><init>(Lio/intercom/android/sdk/experimental/RealIntercom;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private userIsRegistered(Lio/intercom/android/sdk/identity/Registration;)Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->isSoftReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/identity/UserIdentity;->isSameUser(Lio/intercom/android/sdk/identity/Registration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addUnreadConversationCountListener(Lio/intercom/android/sdk/UnreadConversationCountListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->unreadCountTracker:Lio/intercom/android/sdk/store/UnreadCountTracker;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/store/UnreadCountTracker;->addListener(Lio/intercom/android/sdk/UnreadConversationCountListener;)V

    :cond_0
    return-void
.end method

.method public displayConversationsList()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    sget-object v1, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->CUSTOM:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->openedMessengerConversationList(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-static {v1}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openInbox(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public displayHelpCenter()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getHelpCenterUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Could not open Help Center. Please make sure you have turned on Help Center in Educate settings."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getHelpCenterUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v0, v2, v3}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->buildIntent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public displayMessageComposer()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->displayMessageComposer(Ljava/lang/String;)V

    return-void
.end method

.method public displayMessageComposer(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/experimental/RealIntercom;->noUserRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The messenger was opened but there was no user registered on this device. Please call registerUnidentifiedUser() or registerIdentifiedUser(Registration)."

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->logErrorAndOpenInbox(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->isReceivedFromServer()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "It appears your app has not received a successful response from Intercom. Please check you are using the correct Android app ID and API Key from the Intercom settings."

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->logErrorAndOpenInbox(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->isInboundMessages()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "It appears your app is not on a plan that allows message composing. As a fallback we are calling displayConversationsList()"

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->logErrorAndOpenInbox(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    sget-object v1, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->CUSTOM:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->openedMessengerNewConversation(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)V

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openComposer(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public displayMessenger()V
    .locals 5

    invoke-direct {p0}, Lio/intercom/android/sdk/experimental/RealIntercom;->noUserRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The messenger was opened but there was no user registered on this device.Please call registerUnidentifiedUser() or registerIdentifiedUser(Registration)."

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->logErrorAndOpenInbox(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v2, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v3, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->CUSTOM:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    iget-object v4, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;-><init>(Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    iget-object v1, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;->openMessenger(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public getUnreadConversationCount()I
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {v0}, Lio/intercom/android/sdk/store/Store;->state()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/State;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/State;->unreadConversationIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public handlePushMessage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->handlePushMessage(Landroid/app/TaskStackBuilder;)V

    return-void
.end method

.method public handlePushMessage(Landroid/app/TaskStackBuilder;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->context:Landroid/content/Context;

    const-string v1, "INTERCOM_SDK_PUSH_PREFS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "intercom_push_notification_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "No Uri found"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, p1}, Lio/intercom/android/sdk/experimental/RealIntercom;->openIntercomChatPush(Ljava/lang/String;Landroid/app/TaskStackBuilder;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public hideMessenger()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->activityFinisher:Lio/intercom/android/sdk/utilities/ActivityFinisher;

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/ActivityFinisher;->finishActivities()V

    return-void
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->logEventWithValidation(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The metadata provided is null, logging event with no metadata"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/experimental/RealIntercom;->logEventWithValidation(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The metadata provided is empty, logging event with no metadata"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method registerUser(Lio/intercom/android/sdk/experimental/IntercomSettings;)V
    .locals 2

    invoke-virtual {p1}, Lio/intercom/android/sdk/experimental/IntercomSettings;->getUserHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/experimental/IntercomSettings;->getUserHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->setUserHash(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/experimental/IntercomSettings;->canIdentifyUser()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/intercom/android/sdk/identity/Registration;->create()Lio/intercom/android/sdk/identity/Registration;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/experimental/IntercomSettings;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lio/intercom/android/sdk/experimental/IntercomSettings;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/identity/Registration;->withUserId(Ljava/lang/String;)Lio/intercom/android/sdk/identity/Registration;

    :cond_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/experimental/IntercomSettings;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lio/intercom/android/sdk/experimental/IntercomSettings;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/identity/Registration;->withEmail(Ljava/lang/String;)Lio/intercom/android/sdk/identity/Registration;

    :cond_2
    invoke-direct {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->registerIdentifiedUser(Lio/intercom/android/sdk/identity/Registration;)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lio/intercom/android/sdk/experimental/RealIntercom;->registerUnidentifiedUser()V

    goto :goto_0
.end method

.method public removeUnreadConversationCountListener(Lio/intercom/android/sdk/UnreadConversationCountListener;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->unreadCountTracker:Lio/intercom/android/sdk/store/UnreadCountTracker;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/store/UnreadCountTracker;->removeListener(Lio/intercom/android/sdk/UnreadConversationCountListener;)V

    return-void
.end method

.method public setBottomPadding(I)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {p1}, Lio/intercom/android/sdk/actions/Actions;->setBottomPadding(I)Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    return-void
.end method

.method public setInAppMessageVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {p1}, Lio/intercom/android/sdk/actions/Actions;->setInAppNotificationVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    return-void
.end method

.method public setLauncherVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {p1}, Lio/intercom/android/sdk/actions/Actions;->setLauncherVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    return-void
.end method

.method public setUserHash(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The user hash you sent us to verify was either null or empty, we will not be able to authenticate your requests without a valid user hash."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->getHmac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The user hash set matches the existing user identity hash value"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/identity/UserIdentity;->softUserIdentityHmacDiffers(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->resetManager:Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/ResetManager;->hardReset()V

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/identity/UserIdentity;->setUserHash(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->isSoftReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->resetManager:Lio/intercom/android/sdk/ResetManager;

    invoke-virtual {v0}, Lio/intercom/android/sdk/ResetManager;->softReset()V

    :cond_0
    return-void
.end method

.method public updateUser(Lio/intercom/android/sdk/UserAttributes;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "updateUser method failed: the UserAttributes object provided is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->isUnidentified()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/intercom/android/sdk/UserAttributes;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/experimental/UserMergeUtils;->hasIdentificationData(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/intercom/android/sdk/identity/Registration;

    invoke-direct {v0}, Lio/intercom/android/sdk/identity/Registration;-><init>()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/UserAttributes;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/experimental/UserMergeUtils;->addIdentityDataToRegistration(Lio/intercom/android/sdk/identity/Registration;Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/identity/Registration;->withUserAttributes(Lio/intercom/android/sdk/UserAttributes;)Lio/intercom/android/sdk/identity/Registration;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->registerIdentifiedUser(Lio/intercom/android/sdk/identity/Registration;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/UserAttributes;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/experimental/RealIntercom;->performUpdate(Ljava/util/Map;)V

    goto :goto_0
.end method
