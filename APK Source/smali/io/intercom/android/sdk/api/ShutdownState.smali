.class public Lio/intercom/android/sdk/api/ShutdownState;
.super Ljava/lang/Object;


# static fields
.field private static final PREFS_SHUTDOWN_EXPIRY:Ljava/lang/String; = "ShutdownExpiry"

.field private static final PREFS_SHUTDOWN_FINGERPRINT:Ljava/lang/String; = "ShutdownFingerprint"

.field private static final PREFS_SHUTDOWN_REASON:Ljava/lang/String; = "ShutdownReason"


# instance fields
.field private final appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

.field private final context:Landroid/content/Context;

.field private final prefs:Landroid/content/SharedPreferences;

.field shutdownExpiry:J

.field shutdownFingerprint:Ljava/lang/String;

.field private shutdownReason:Ljava/lang/String;

.field private final timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/api/ShutdownState;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/intercom/android/sdk/api/ShutdownState;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    const-string v0, "INTERCOM_SHUTDOWN_PREFS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->prefs:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lio/intercom/android/sdk/api/ShutdownState;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ShutdownExpiry"

    invoke-interface {p3}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownExpiry:J

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ShutdownReason"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownReason:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "ShutdownFingerprint"

    invoke-static {p1, p2}, Lio/intercom/android/sdk/api/ShutdownState;->generateAppFingerprint(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownFingerprint:Ljava/lang/String;

    return-void
.end method

.method private static generateAppFingerprint(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lio/intercom/android/sdk/commons/utilities/DeviceUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/identity/AppIdentity;->appId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-4.1.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private persistCachedAttributes()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShutdownFingerprint"

    iget-object v2, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownFingerprint:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShutdownReason"

    iget-object v2, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownReason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShutdownExpiry"

    iget-wide v2, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownExpiry:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public canSendNetworkRequests()Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownExpiry:J

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownFingerprint:Ljava/lang/String;

    iget-object v4, p0, Lio/intercom/android/sdk/api/ShutdownState;->context:Landroid/content/Context;

    iget-object v5, p0, Lio/intercom/android/sdk/api/ShutdownState;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    invoke-static {v4, v5}, Lio/intercom/android/sdk/api/ShutdownState;->generateAppFingerprint(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public getShutdownReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownReason:Ljava/lang/String;

    return-object v0
.end method

.method public updateShutdownState(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownExpiry:J

    iput-object p3, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownReason:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/intercom/android/sdk/api/ShutdownState;->appIdentity:Lio/intercom/android/sdk/identity/AppIdentity;

    invoke-static {v0, v1}, Lio/intercom/android/sdk/api/ShutdownState;->generateAppFingerprint(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppIdentity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/api/ShutdownState;->shutdownFingerprint:Ljava/lang/String;

    invoke-direct {p0}, Lio/intercom/android/sdk/api/ShutdownState;->persistCachedAttributes()V

    return-void
.end method
