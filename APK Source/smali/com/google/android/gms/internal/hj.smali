.class Lcom/google/android/gms/internal/hj;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static aOX:Ljava/lang/String;


# instance fields
.field aTA:Z

.field aTB:Z

.field final zzjev:Lcom/google/android/gms/internal/hz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/hj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/hj;->aOX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hj;)Lcom/google/android/gms/internal/hz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->pf()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "NetworkBroadcastReceiver received action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->rW()Lcom/google/android/gms/internal/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hf;->qe()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/hj;->aTB:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hj;->aTB:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/hk;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/hk;-><init>(Lcom/google/android/gms/internal/hj;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v2, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final unregister()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/hj;->aTA:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hj;->aTA:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hj;->aTB:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aUM:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/hj;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
