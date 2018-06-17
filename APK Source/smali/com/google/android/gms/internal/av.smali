.class public final Lcom/google/android/gms/internal/av;
.super Lcom/google/android/gms/internal/bb;


# instance fields
.field final aMj:Lcom/google/android/gms/internal/bp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bd;Lcom/google/android/gms/internal/bf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/android/gms/internal/bd;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/bp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/bp;-><init>(Lcom/google/android/gms/internal/bd;Lcom/google/android/gms/internal/bf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/bg;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bp;->c(Lcom/google/android/gms/internal/bg;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/bp;->b(Lcom/google/android/gms/internal/bg;)V

    :cond_0
    return-wide v0
.end method

.method public final a(Lcom/google/android/gms/internal/ck;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/az;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/az;-><init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/ck;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/n;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/cr;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ba;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ay;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ay;-><init>(Lcom/google/android/gms/internal/av;Lcom/google/android/gms/internal/cr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/n;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final mG()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->initialize()V

    return-void
.end method

.method public final oZ()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v0, v0, Lcom/google/android/gms/internal/bd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/dc;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/dd;->ad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/av;->a(Lcom/google/android/gms/internal/ck;)V

    goto :goto_0
.end method

.method final onServiceConnected()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bp;->onServiceConnected()V

    return-void
.end method

.method public final pa()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bb;->pf()V

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bb;->pf()V

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bw(Ljava/lang/String;)V

    return-void
.end method

.method final pb()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/av;->aMj:Lcom/google/android/gms/internal/bp;

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    iget-object v1, v1, Lcom/google/android/gms/internal/bd;->aBm:Lcom/google/android/gms/common/util/e;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/bp;->aNk:J

    return-void
.end method
