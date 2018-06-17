.class Lio/intercom/android/sdk/push/PushReceiverDelegate;
.super Ljava/lang/Object;


# static fields
.field private static final CONSUMED_BY_INTERCOM:Ljava/lang/String; = "consumed_by_intercom"


# instance fields
.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/push/PushReceiverDelegate;->twig:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method private createPushFromIntent(Landroid/content/Intent;)Lio/intercom/android/sdk/push/PushBroadcast;
    .locals 3

    new-instance v0, Lio/intercom/android/sdk/push/PushBroadcast;

    invoke-direct {v0}, Lio/intercom/android/sdk/push/PushBroadcast;-><init>()V

    if-nez p1, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/push/PushReceiverDelegate;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "Host app intent was null."

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->notLaunchedFromHistory(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->notConsumedByIntercom(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->isIntercomIntent(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lio/intercom/android/sdk/push/PushBroadcast;

    invoke-direct {v0, p1}, Lio/intercom/android/sdk/push/PushBroadcast;-><init>(Landroid/content/Intent;)V

    const-string v1, "consumed_by_intercom"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private extractNotificationId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "multiple_notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "multiple_notifications"

    goto :goto_0

    :cond_1
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLaunchActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handlePushMessage(Landroid/content/Context;Lio/intercom/android/sdk/api/Api;Landroid/net/Uri;Ljava/lang/String;Lio/intercom/android/sdk/metrics/MetricTracker;)V
    .locals 3

    invoke-virtual {p2, p4}, Lio/intercom/android/sdk/api/Api;->markConversationAsRead(Ljava/lang/String;)V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushReceiverDelegate;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "There was no URI in the push message. Defaulting to launch activity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/twig/Twig;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->getLaunchActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p5, p4}, Lio/intercom/android/sdk/metrics/MetricTracker;->openedPushOnlyNotification(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lio/intercom/android/sdk/utilities/IntentUtils;->safelyOpenIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private isIntercomIntent(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "intercom_push_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notConsumedByIntercom(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "consumed_by_intercom"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notLaunchedFromHistory(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openHostAppIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    const-string v0, "INTERCOM_SDK_PUSH_PREFS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "intercom_push_notification_path"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1, p2}, Lio/intercom/android/sdk/utilities/IntentUtils;->safelyOpenIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method handlePushTap(Landroid/content/Context;Landroid/content/Intent;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/MetricTracker;)V
    .locals 6

    invoke-virtual {p4}, Lio/intercom/android/sdk/identity/UserIdentity;->identityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "host_app_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->createPushFromIntent(Landroid/content/Intent;)Lio/intercom/android/sdk/push/PushBroadcast;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/push/PushBroadcast;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushReceiverDelegate;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Could not open push. No Uri and conversation id found."

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lio/intercom/android/sdk/push/PushBroadcast;->getPushData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lio/intercom/android/sdk/push/PushBroadcast;->getPushOnlyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lio/intercom/android/sdk/push/PushBroadcast;->hasPushOnlyId()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->handlePushMessage(Landroid/content/Context;Lio/intercom/android/sdk/api/Api;Landroid/net/Uri;Ljava/lang/String;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->extractNotificationId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->openHostAppIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method trackDismiss(Landroid/content/Intent;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/MetricTracker;)V
    .locals 3

    invoke-virtual {p2}, Lio/intercom/android/sdk/identity/UserIdentity;->identityExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "host_app_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lio/intercom/android/sdk/push/PushBroadcast;

    invoke-direct {v1, v0}, Lio/intercom/android/sdk/push/PushBroadcast;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lio/intercom/android/sdk/push/PushBroadcast;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/push/PushReceiverDelegate;->twig:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Could not track push dismiss. No Uri found"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lio/intercom/android/sdk/push/PushBroadcast;->hasPushOnlyId()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lio/intercom/android/sdk/push/PushBroadcast;->getPushOnlyId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->dismissedPushNotification(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lio/intercom/android/sdk/push/PushBroadcast;->getPushData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->extractNotificationId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
