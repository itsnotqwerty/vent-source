.class Lcom/google/android/gms/internal/cx;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static aOX:Ljava/lang/String;


# instance fields
.field CA:Z

.field final aMq:Lcom/google/android/gms/internal/bd;

.field aOY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/cx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/cx;->aOX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->qd()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    const-string v2, "NetworkBroadcastReceiver received action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->qe()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/cx;->aOY:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cx;->aOY:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v1

    const-string v2, "Network connectivity status changed"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/aw;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/internal/aw;-><init>(Lcom/google/android/gms/internal/av;Z)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/n;->h(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/cx;->aOX:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v0

    const-string v1, "Radio powered up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->oZ()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    const-string v2, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ba;->g(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final qd()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    return-void
.end method

.method final qe()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final unregister()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cx;->CA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/cx;->CA:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/cx;->aOY:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cx;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ba;->h(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
