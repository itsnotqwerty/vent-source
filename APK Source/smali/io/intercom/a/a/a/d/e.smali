.class final Lio/intercom/a/a/a/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/d/c;


# instance fields
.field final cPc:Lio/intercom/a/a/a/d/c$a;

.field cPd:Z

.field private final cPe:Landroid/content/BroadcastReceiver;

.field private final context:Landroid/content/Context;

.field private isRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/intercom/a/a/a/d/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/d/e$1;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/d/e$1;-><init>(Lio/intercom/a/a/a/d/e;)V

    iput-object v0, p0, Lio/intercom/a/a/a/d/e;->cPe:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/d/e;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/intercom/a/a/a/d/e;->cPc:Lio/intercom/a/a/a/d/c$a;

    return-void
.end method

.method static cb(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

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
.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 4

    iget-boolean v0, p0, Lio/intercom/a/a/a/d/e;->isRegistered:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/d/e;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/intercom/a/a/a/d/e;->cb(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/a/a/a/d/e;->cPd:Z

    iget-object v0, p0, Lio/intercom/a/a/a/d/e;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/intercom/a/a/a/d/e;->cPe:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/d/e;->isRegistered:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConnectivityMonitor"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConnectivityMonitor"

    const-string v2, "Failed to register"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final onStop()V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/a/a/a/d/e;->isRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/d/e;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/intercom/a/a/a/d/e;->cPe:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/d/e;->isRegistered:Z

    :cond_0
    return-void
.end method
