.class public final Lcom/google/android/gms/ads/a/c;
.super Landroid/view/ViewGroup;


# instance fields
.field private final azo:Lcom/google/android/gms/internal/pz;


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->baA:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pz;->getAdSize()Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public final getAdSizes()[Lcom/google/android/gms/ads/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->bbN:[Lcom/google/android/gms/ads/d;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pz;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->baY:Lcom/google/android/gms/ads/a/a;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pz;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/a/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->bbQ:Lcom/google/android/gms/ads/a/b;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->aAc:Lcom/google/android/gms/ads/i;

    return-object v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->azA:Lcom/google/android/gms/ads/j;

    return-object v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/a/c;->getChildAt(I)Landroid/view/View;

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

.method protected final onMeasure(II)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/a/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/ads/a/c;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/c;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/c;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/a/c;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/c;->getAdSize()Lcom/google/android/gms/ads/d;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/a/c;->getContext()Landroid/content/Context;

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

.method public final setAdListener(Lcom/google/android/gms/ads/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pz;->setAdListener(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/d;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pz;->a([Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pz;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/pz;->setAppEventListener(Lcom/google/android/gms/ads/a/a;)V

    return-void
.end method

.method public final setCorrelator(Lcom/google/android/gms/ads/g;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iput-object p1, v0, Lcom/google/android/gms/internal/pz;->bbO:Lcom/google/android/gms/ads/g;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    iget-object v2, v0, Lcom/google/android/gms/internal/pz;->bbO:Lcom/google/android/gms/ads/g;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ow;->b(Lcom/google/android/gms/internal/ph;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->bbO:Lcom/google/android/gms/ads/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/g;->azp:Lcom/google/android/gms/internal/og;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iput-boolean p1, v0, Lcom/google/android/gms/internal/pz;->azG:Z

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/pz;->azG:Z

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ow;->setManualImpressionsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set manual impressions."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iput-object p1, v0, Lcom/google/android/gms/internal/pz;->bbQ:Lcom/google/android/gms/ads/a/b;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/rb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/rb;-><init>(Lcom/google/android/gms/ads/a/b;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/qy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/j;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/a/c;->azo:Lcom/google/android/gms/internal/pz;

    iput-object p1, v0, Lcom/google/android/gms/internal/pz;->azA:Lcom/google/android/gms/ads/j;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/pz;->bbP:Lcom/google/android/gms/internal/ow;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/qq;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/qq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/qq;-><init>(Lcom/google/android/gms/ads/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set video options."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
