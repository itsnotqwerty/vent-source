.class public Lio/intercom/android/sdk/IntercomPushManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/IntercomPushManager$GcmImplementation;,
        Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;
    }
.end annotation


# static fields
.field public static final HOST_APP_INTENT:Ljava/lang/String; = "host_app_intent"

.field public static final INTERCOM_PUSH_KEY:Ljava/lang/String; = "intercom_push_key"

.field public static final INTERCOM_PUSH_PATH:Ljava/lang/String; = "intercom_push_notification_path"

.field public static final MULTIPLE_NOTIFICATIONS:Ljava/lang/String; = "multiple_notifications"

.field private static final PREFS_SENDER_ID:Ljava/lang/String; = "intercom_sender_id"

.field public static final PUSH_ONLY_ID:Ljava/lang/String; = "push_only_convo_id"

.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;

.field public static gcmImplementation:Lio/intercom/android/sdk/IntercomPushManager$GcmImplementation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/IntercomPushManager$1;

    invoke-direct {v0}, Lio/intercom/android/sdk/IntercomPushManager$1;-><init>()V

    sput-object v0, Lio/intercom/android/sdk/IntercomPushManager;->gcmImplementation:Lio/intercom/android/sdk/IntercomPushManager$GcmImplementation;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/IntercomPushManager;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheSenderId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "INTERCOM_SDK_PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "intercom_sender_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static fcmModuleInstalled()Z
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/IntercomPushManager;->getFcmMessengerClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/intercom/android/sdk/IntercomPushManager;->getFcmInstanceIdClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gcmModuleInstalled()Z
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/IntercomPushManager;->getGcmListenerClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/intercom/android/sdk/IntercomPushManager;->getGcmImplementationClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getFcmInstanceIdClass()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "io.intercom.android.sdk.fcm.IntercomFcmInstanceIdService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getFcmMessengerClass()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "io.intercom.android.sdk.fcm.IntercomFcmMessengerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getGcmImplementationClass()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "io.intercom.android.sdk.gcm.IntercomGcmImplementation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getGcmListenerClass()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "io.intercom.android.sdk.gcm.IntercomGcmListenerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstalledModuleType()Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;
    .locals 3

    sget-object v0, Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;->NONE:Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;

    invoke-static {}, Lio/intercom/android/sdk/IntercomPushManager;->fcmModuleInstalled()Z

    move-result v1

    invoke-static {}, Lio/intercom/android/sdk/IntercomPushManager;->gcmModuleInstalled()Z

    move-result v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    sget-object v0, Lio/intercom/android/sdk/IntercomPushManager;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "Both FCM and GCM are installed"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    sget-object v0, Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;->BOTH:Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    sget-object v0, Lio/intercom/android/sdk/IntercomPushManager;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "FCM is installed"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    sget-object v0, Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;->FCM:Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    sget-object v0, Lio/intercom/android/sdk/IntercomPushManager;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    const-string v1, "GCM is installed"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    sget-object v0, Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;->GCM:Lio/intercom/android/sdk/IntercomPushManager$IntercomPushIntegrationType;

    goto :goto_0
.end method

.method public static getSenderId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "INTERCOM_SDK_PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "intercom_sender_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerGcmToken(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lio/intercom/android/sdk/IntercomPushManager;->gcmImplementation:Lio/intercom/android/sdk/IntercomPushManager$GcmImplementation;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/IntercomPushManager$GcmImplementation;->registerToken(Landroid/app/Application;)V

    return-void
.end method
