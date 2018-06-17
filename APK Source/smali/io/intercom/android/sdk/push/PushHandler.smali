.class Lio/intercom/android/sdk/push/PushHandler;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "PushHandler"


# instance fields
.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/push/PushHandler;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method private sendNotification(Landroid/os/Bundle;Lio/intercom/android/sdk/push/SystemNotificationManager;ZLandroid/content/Context;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/identity/AppConfig;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushHandler;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "The push intent contained no data"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/push/PushHandler;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "PushHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notification Data Json :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lio/intercom/android/sdk/push/PushPayload;->create(Landroid/os/Bundle;)Lio/intercom/android/sdk/push/PushPayload;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/push/PushPayload;->isIntercomPush()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lio/intercom/android/sdk/push/PushPayload;->isPushOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/intercom/android/sdk/push/PushPayload;->getPushOnlyConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->receivedPushOnlyNotification(Ljava/lang/String;)V

    invoke-virtual {p2, v0, p4}, Lio/intercom/android/sdk/push/SystemNotificationManager;->createPushOnlyNotification(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lio/intercom/android/sdk/push/PushPayload;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->receivedPushNotification(Ljava/lang/String;)V

    invoke-virtual {p2, v0, p4, p6}, Lio/intercom/android/sdk/push/SystemNotificationManager;->createNotification(Lio/intercom/android/sdk/push/PushPayload;Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/push/PushHandler;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Intercom message received but not displayed in notification bar. This happened because the host app was in the foreground."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/push/PushHandler;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "This is not a Intercom push message"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method handlePush(Landroid/os/Bundle;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/push/SystemNotificationManager;ZLandroid/content/Context;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/identity/AppConfig;)V
    .locals 7

    invoke-virtual {p2}, Lio/intercom/android/sdk/identity/UserIdentity;->identityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/push/PushHandler;->sendNotification(Landroid/os/Bundle;Lio/intercom/android/sdk/push/SystemNotificationManager;ZLandroid/content/Context;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/identity/AppConfig;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lio/intercom/android/sdk/push/SystemNotificationManager;->clear()V

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushHandler;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Can\'t create push message as we have no user identity. This can be caused by messages being sent to a logged out user."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method sendTokenToIntercom(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/api/Api;)V
    .locals 0

    invoke-virtual {p3, p2}, Lio/intercom/android/sdk/api/Api;->setDeviceToken(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lio/intercom/android/sdk/user/DeviceData;->cacheDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method shouldSendDeviceToken(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Lio/intercom/android/sdk/user/DeviceData;->hasCachedDeviceToken(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
