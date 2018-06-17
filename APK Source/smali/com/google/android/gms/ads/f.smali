.class Lcom/google/android/gms/ads/f;
.super Landroid/view/ViewGroup;


# instance fields
.field protected final azo:Lcom/google/android/gms/internal/pz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/pz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/pz;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/c;)V
    .locals 8

    iget-object v6, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v7, p1, Lcom/google/android/gms/ads/c;->ayZ:Lcom/google/android/gms/internal/px;

    :try_start_0
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-nez v0, :cond_8

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbN:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbR:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbS:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbN:[Lcom/google/android/gms/ads/d;

    iget v1, v6, Lcom/google/android/gms/internal/pz;->bbT:I

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/pz;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/nu;

    move-result-object v3

    const-string v0, "search_v2"

    iget-object v1, v3, Lcom/google/android/gms/internal/nu;->baS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/of;->tk()Lcom/google/android/gms/internal/nx;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/gms/internal/pz;->bbR:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/nz;

    invoke-direct {v4, v0, v2, v3, v1}, Lcom/google/android/gms/internal/nz;-><init>(Lcom/google/android/gms/internal/nx;Landroid/content/Context;Lcom/google/android/gms/internal/nu;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/nx;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/nx$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ow;

    :goto_1
    iput-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/no;

    iget-object v2, v6, Lcom/google/android/gms/internal/pz;->bbM:Lcom/google/android/gms/internal/oh;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/no;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->b(Lcom/google/android/gms/internal/ol;)V

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->baz:Lcom/google/android/gms/internal/nm;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/nn;

    iget-object v2, v6, Lcom/google/android/gms/internal/pz;->baz:Lcom/google/android/gms/internal/nm;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/nn;-><init>(Lcom/google/android/gms/internal/nm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/oi;)V

    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->baY:Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/nw;

    iget-object v2, v6, Lcom/google/android/gms/internal/pz;->baY:Lcom/google/android/gms/ads/a/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/nw;-><init>(Lcom/google/android/gms/ads/a/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/pb;)V

    :cond_4
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbQ:Lcom/google/android/gms/ads/a/b;

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/rb;

    iget-object v2, v6, Lcom/google/android/gms/internal/pz;->bbQ:Lcom/google/android/gms/ads/a/b;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/ads/a/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/qy;)V

    :cond_5
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbO:Lcom/google/android/gms/ads/g;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    iget-object v1, v6, Lcom/google/android/gms/internal/pz;->bbO:Lcom/google/android/gms/ads/g;

    iget-object v1, v1, Lcom/google/android/gms/ads/g;->azp:Lcom/google/android/gms/internal/og;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->b(Lcom/google/android/gms/internal/ph;)V

    :cond_6
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->azA:Lcom/google/android/gms/ads/j;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v1, Lcom/google/android/gms/internal/qq;

    iget-object v2, v6, Lcom/google/android/gms/internal/pz;->azA:Lcom/google/android/gms/ads/j;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/qq;-><init>(Lcom/google/android/gms/ads/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/qq;)V

    :cond_7
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    iget-boolean v1, v6, Lcom/google/android/gms/internal/pz;->azG:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->setManualImpressionsEnabled(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ow;->tn()Lcom/google/android/gms/a/a;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    :goto_2
    :try_start_3
    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    iget-object v1, v6, Lcom/google/android/gms/internal/pz;->bbS:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/nt;->a(Landroid/content/Context;Lcom/google/android/gms/internal/px;)Lcom/google/android/gms/internal/nr;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ow;->b(Lcom/google/android/gms/internal/nr;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/google/android/gms/internal/pz;->bbK:Lcom/google/android/gms/internal/ti;

    iget-object v1, v7, Lcom/google/android/gms/internal/px;->bbx:Ljava/util/Map;

    iput-object v1, v0, Lcom/google/android/gms/internal/ti;->bcR:Ljava/util/Map;

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/of;->tk()Lcom/google/android/gms/internal/nx;

    move-result-object v1

    iget-object v4, v6, Lcom/google/android/gms/internal/pz;->bbR:Ljava/lang/String;

    iget-object v5, v6, Lcom/google/android/gms/internal/pz;->bbK:Lcom/google/android/gms/internal/ti;

    new-instance v0, Lcom/google/android/gms/internal/ny;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ny;-><init>(Lcom/google/android/gms/internal/nx;Landroid/content/Context;Lcom/google/android/gms/internal/nu;Ljava/lang/String;Lcom/google/android/gms/internal/tj;)V

    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/nx;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/nx$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ow;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_a
    :try_start_4
    iget-object v1, v6, Lcom/google/android/gms/internal/pz;->bbS:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ow;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdListener()Lcom/google/android/gms/ads/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->baA:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pz;->getAdSize()Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pz;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pz;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/f;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/ads/f;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/f;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/f;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/f;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/f;->getAdSize()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/d;->q(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/d;->p(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/af;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ow;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ow;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/a;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pz;->setAdListener(Lcom/google/android/gms/ads/a;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pz;->a(Lcom/google/android/gms/internal/nm;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pz;->setAppEventListener(Lcom/google/android/gms/ads/a/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/internal/nm;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/nm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/pz;->a(Lcom/google/android/gms/internal/nm;)V

    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    check-cast p1, Lcom/google/android/gms/ads/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pz;->setAppEventListener(Lcom/google/android/gms/ads/a/a;)V

    goto :goto_0
.end method

.method public setAdSize(Lcom/google/android/gms/ads/d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/ads/d;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pz;->setAdSizes([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pz;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method
