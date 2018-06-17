.class public final Lcom/google/android/gms/ads/e;
.super Lcom/google/android/gms/ads/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/f;-><init>(Landroid/content/Context;)V

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/ads/c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public final bridge synthetic destroy()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/f;->destroy()V

    return-void
.end method

.method public final bridge synthetic getAdListener()Lcom/google/android/gms/ads/a;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/f;->getAdListener()Lcom/google/android/gms/ads/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getAdSize()Lcom/google/android/gms/ads/d;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/f;->getAdSize()Lcom/google/android/gms/ads/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getAdUnitId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/f;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/f;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->azo:Lcom/google/android/gms/internal/pz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/e;->azo:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->aAc:Lcom/google/android/gms/ads/i;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic pause()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/f;->pause()V

    return-void
.end method

.method public final bridge synthetic resume()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/f;->resume()V

    return-void
.end method

.method public final bridge synthetic setAdListener(Lcom/google/android/gms/ads/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/f;->setAdListener(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final bridge synthetic setAdSize(Lcom/google/android/gms/ads/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/f;->setAdSize(Lcom/google/android/gms/ads/d;)V

    return-void
.end method

.method public final bridge synthetic setAdUnitId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/f;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method
