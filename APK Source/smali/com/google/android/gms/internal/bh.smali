.class public final Lcom/google/android/gms/internal/bh;
.super Lcom/google/android/gms/internal/bb;


# instance fields
.field final aMM:Lcom/google/android/gms/internal/bj;

.field aMN:Lcom/google/android/gms/internal/cs;

.field private final aMO:Lcom/google/android/gms/internal/cg;

.field private final aMP:Lcom/google/android/gms/internal/dh;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/bd;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/bd;)V

    new-instance v0, Lcom/google/android/gms/internal/dh;

    iget-object v1, p1, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dh;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->aMP:Lcom/google/android/gms/internal/dh;

    new-instance v0, Lcom/google/android/gms/internal/bj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->aMM:Lcom/google/android/gms/internal/bj;

    new-instance v0, Lcom/google/android/gms/internal/bi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/bi;-><init>(Lcom/google/android/gms/internal/bh;Lcom/google/android/gms/internal/bd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->aMO:Lcom/google/android/gms/internal/cg;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bh;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Inactivity, disconnecting from device AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh;->disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/cr;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/cr;->aOO:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ce;->pR()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/cr;->aAV:Ljava/util/Map;

    iget-wide v2, p1, Lcom/google/android/gms/internal/cr;->aOM:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/cs;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh;->po()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ce;->pS()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method

.method public final connect()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->aMM:Lcom/google/android/gms/internal/bj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bj;->pp()Lcom/google/android/gms/internal/cs;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh;->po()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->oz()Lcom/google/android/gms/common/stats/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->aMM:Lcom/google/android/gms/internal/bj;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->pa()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final mG()V
    .locals 0

    return-void
.end method

.method final po()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bh;->aMP:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->start()V

    iget-object v1, p0, Lcom/google/android/gms/internal/bh;->aMO:Lcom/google/android/gms/internal/cg;

    sget-object v0, Lcom/google/android/gms/internal/cm;->aOx:Lcom/google/android/gms/internal/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/cn;->aOE:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cg;->n(J)V

    return-void
.end method
