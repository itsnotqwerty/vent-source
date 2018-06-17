.class public final Lcom/google/android/gms/internal/kt;
.super Lcom/google/android/gms/internal/iy;


# instance fields
.field aXa:J

.field final aXb:Lcom/google/android/gms/internal/gh;

.field final aXc:Lcom/google/android/gms/internal/gh;

.field private handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iy;-><init>(Lcom/google/android/gms/internal/hz;)V

    new-instance v0, Lcom/google/android/gms/internal/ku;

    iget-object v1, p0, Lcom/google/android/gms/internal/kt;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ku;-><init>(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kt;->aXb:Lcom/google/android/gms/internal/gh;

    new-instance v0, Lcom/google/android/gms/internal/kv;

    iget-object v1, p0, Lcom/google/android/gms/internal/kt;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/kv;-><init>(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/hz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kt;->aXc:Lcom/google/android/gms/internal/gh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/kt;->aXa:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kt;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kt;->aA(Z)Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qA()Lcom/google/android/gms/internal/fs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/fs;->p(J)V

    return-void
.end method


# virtual methods
.method public final aA(Z)Z
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTX:Lcom/google/android/gms/internal/hn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/hn;->set(J)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/kt;->aXa:J

    sub-long v4, v2, v4

    if-nez p1, :cond_0

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTY:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/hn;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v6, "Recording user engagement, ms"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "_et"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qG()Lcom/google/android/gms/internal/jq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/jq;->sj()Lcom/google/android/gms/internal/jt;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/google/android/gms/internal/jq;->a(Lcom/google/android/gms/internal/jp;Landroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v4

    const-string v5, "auto"

    const-string v6, "_e"

    invoke-virtual {v4, v5, v6, v1}, Lcom/google/android/gms/internal/ja;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-wide v2, p0, Lcom/google/android/gms/internal/kt;->aXa:J

    iget-object v1, p0, Lcom/google/android/gms/internal/kt;->aXc:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gh;->cancel()V

    iget-object v1, p0, Lcom/google/android/gms/internal/kt;->aXc:Lcom/google/android/gms/internal/gh;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/hl;->aTY:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gh;->n(J)V

    goto :goto_0
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mN()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->mN()V

    return-void
.end method

.method public final bridge synthetic qA()Lcom/google/android/gms/internal/fs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qA()Lcom/google/android/gms/internal/fs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qB()Lcom/google/android/gms/internal/fz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qB()Lcom/google/android/gms/internal/fz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qC()Lcom/google/android/gms/internal/ja;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qD()Lcom/google/android/gms/internal/gw;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qD()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qE()Lcom/google/android/gms/internal/gj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qE()Lcom/google/android/gms/internal/gj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qF()Lcom/google/android/gms/internal/ju;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qG()Lcom/google/android/gms/internal/jq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qG()Lcom/google/android/gms/internal/jq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qH()Lcom/google/android/gms/common/util/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qI()Lcom/google/android/gms/internal/gx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qI()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qJ()Lcom/google/android/gms/internal/gd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qJ()Lcom/google/android/gms/internal/gd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qK()Lcom/google/android/gms/internal/gz;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qK()Lcom/google/android/gms/internal/gz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qL()Lcom/google/android/gms/internal/le;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qM()Lcom/google/android/gms/internal/ht;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qM()Lcom/google/android/gms/internal/ht;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qN()Lcom/google/android/gms/internal/kt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qN()Lcom/google/android/gms/internal/kt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qO()Lcom/google/android/gms/internal/hu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qP()Lcom/google/android/gms/internal/hb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qQ()Lcom/google/android/gms/internal/hl;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qR()Lcom/google/android/gms/internal/gc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qR()Lcom/google/android/gms/internal/gc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic qy()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qy()V

    return-void
.end method

.method public final bridge synthetic qz()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/iy;->qz()V

    return-void
.end method

.method protected final ri()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final so()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kt;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kt;->handler:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
