.class public final Lcom/google/android/gms/ads/h;
.super Ljava/lang/Object;


# instance fields
.field public final azq:Lcom/google/android/gms/internal/qb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/qb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/qb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/c;)V
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    iget-object v7, p1, Lcom/google/android/gms/ads/c;->ayZ:Lcom/google/android/gms/internal/px;

    :try_start_0
    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    if-nez v0, :cond_7

    const-string v0, "loadAd"

    iget-object v1, v6, Lcom/google/android/gms/internal/qb;->bbR:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/qb;->cO(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, v6, Lcom/google/android/gms/internal/qb;->bbW:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/nu;->tc()Lcom/google/android/gms/internal/nu;

    move-result-object v3

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/of;->tk()Lcom/google/android/gms/internal/nx;

    move-result-object v1

    iget-object v2, v6, Lcom/google/android/gms/internal/qb;->mContext:Landroid/content/Context;

    iget-object v4, v6, Lcom/google/android/gms/internal/qb;->bbR:Ljava/lang/String;

    iget-object v5, v6, Lcom/google/android/gms/internal/qb;->bbK:Lcom/google/android/gms/internal/ti;

    new-instance v0, Lcom/google/android/gms/internal/oa;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/oa;-><init>(Lcom/google/android/gms/internal/nx;Landroid/content/Context;Lcom/google/android/gms/internal/nu;Ljava/lang/String;Lcom/google/android/gms/internal/tj;)V

    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/nx;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/nx$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ow;

    iput-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->baA:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/no;

    iget-object v2, v6, Lcom/google/android/gms/internal/qb;->baA:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/no;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->b(Lcom/google/android/gms/internal/ol;)V

    :cond_1
    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->baz:Lcom/google/android/gms/internal/nm;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/nn;

    iget-object v2, v6, Lcom/google/android/gms/internal/qb;->baz:Lcom/google/android/gms/internal/nm;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/nn;-><init>(Lcom/google/android/gms/internal/nm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/oi;)V

    :cond_2
    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->baY:Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/nw;

    iget-object v2, v6, Lcom/google/android/gms/internal/qb;->baY:Lcom/google/android/gms/ads/a/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/nw;-><init>(Lcom/google/android/gms/ads/a/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/pb;)V

    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbQ:Lcom/google/android/gms/ads/a/b;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/rb;

    iget-object v2, v6, Lcom/google/android/gms/internal/qb;->bbQ:Lcom/google/android/gms/ads/a/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/ads/a/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/qy;)V

    :cond_4
    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbO:Lcom/google/android/gms/ads/g;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    iget-object v1, v6, Lcom/google/android/gms/internal/qb;->bbO:Lcom/google/android/gms/ads/g;

    iget-object v1, v1, Lcom/google/android/gms/ads/g;->azp:Lcom/google/android/gms/internal/og;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->b(Lcom/google/android/gms/internal/ph;)V

    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->zzgy:Lcom/google/android/gms/ads/reward/c;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/m;

    iget-object v2, v6, Lcom/google/android/gms/internal/qb;->zzgy:Lcom/google/android/gms/ads/reward/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/m;-><init>(Lcom/google/android/gms/ads/reward/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/h;)V

    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    iget-boolean v1, v6, Lcom/google/android/gms/internal/qb;->bbX:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->aq(Z)V

    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    iget-object v1, v6, Lcom/google/android/gms/internal/qb;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/nt;->a(Landroid/content/Context;Lcom/google/android/gms/internal/px;)Lcom/google/android/gms/internal/nr;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->b(Lcom/google/android/gms/internal/nr;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/google/android/gms/internal/qb;->bbK:Lcom/google/android/gms/internal/ti;

    iget-object v1, v7, Lcom/google/android/gms/internal/px;->bbx:Ljava/util/Map;

    iput-object v1, v0, Lcom/google/android/gms/internal/ti;->bcR:Ljava/util/Map;

    :cond_8
    :goto_1
    return-void

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/nu;

    invoke-direct {v3}, Lcom/google/android/gms/internal/nu;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final aq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    :try_start_0
    iput-boolean p1, v0, Lcom/google/android/gms/internal/qb;->bbX:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ow;->aq(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set immersive mode"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    iget-object v1, v0, Lcom/google/android/gms/internal/qb;->bbR:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/internal/qb;->bbR:Ljava/lang/String;

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    :try_start_0
    const-string v1, "show"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qb;->cO(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ow;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
