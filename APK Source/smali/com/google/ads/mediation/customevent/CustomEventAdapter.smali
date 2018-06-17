.class public final Lcom/google/ads/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;,
        Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/android/gms/ads/mediation/customevent/c;",
        "Lcom/google/ads/mediation/customevent/c;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/android/gms/ads/mediation/customevent/c;",
        "Lcom/google/ads/mediation/customevent/c;",
        ">;"
    }
.end annotation


# instance fields
.field private ayM:Landroid/view/View;

.field private ayN:Lcom/google/ads/mediation/customevent/a;

.field private ayO:Lcom/google/ads/mediation/customevent/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aR(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not instantiate custom event adapter: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/gms/ads/mediation/customevent/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/ads/mediation/customevent/c;

    return-object v0
.end method

.method public final getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->ayM:Landroid/view/View;

    return-object v0
.end method

.method public final getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/customevent/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/ads/mediation/customevent/c;

    return-object v0
.end method

.method public final requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/c;Lcom/google/ads/b;Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/customevent/c;)V
    .locals 1

    iget-object v0, p3, Lcom/google/ads/mediation/customevent/c;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->aR(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/a;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->ayN:Lcom/google/ads/mediation/customevent/a;

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->ayN:Lcom/google/ads/mediation/customevent/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/a$a;->ayn:Lcom/google/ads/a$a;

    invoke-interface {p1, v0}, Lcom/google/ads/mediation/c;->a(Lcom/google/ads/a$a;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p6, :cond_1

    iget-object v0, p3, Lcom/google/ads/mediation/customevent/c;->label:Ljava/lang/String;

    invoke-virtual {p6, v0}, Lcom/google/android/gms/ads/mediation/customevent/c;->aV(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$a;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/c;)V

    goto :goto_0
.end method

.method public final bridge synthetic requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/e;Lcom/google/ads/b;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/f;)V
    .locals 7

    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/customevent/c;

    move-object v6, p6

    check-cast v6, Lcom/google/android/gms/ads/mediation/customevent/c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestBannerAd(Lcom/google/ads/mediation/c;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/c;Lcom/google/ads/b;Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/customevent/c;)V

    return-void
.end method

.method public final requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/c;Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/customevent/c;)V
    .locals 1

    iget-object v0, p3, Lcom/google/ads/mediation/customevent/c;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->aR(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/customevent/b;

    iput-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->ayO:Lcom/google/ads/mediation/customevent/b;

    iget-object v0, p0, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->ayO:Lcom/google/ads/mediation/customevent/b;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/a$a;->ayn:Lcom/google/ads/a$a;

    invoke-interface {p1, v0}, Lcom/google/ads/mediation/d;->b(Lcom/google/ads/a$a;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p3, Lcom/google/ads/mediation/customevent/c;->label:Ljava/lang/String;

    invoke-virtual {p5, v0}, Lcom/google/android/gms/ads/mediation/customevent/c;->aV(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/ads/mediation/customevent/CustomEventAdapter$b;-><init>(Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/customevent/CustomEventAdapter;Lcom/google/ads/mediation/d;)V

    goto :goto_0
.end method

.method public final bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/e;Lcom/google/ads/mediation/a;Lcom/google/ads/mediation/f;)V
    .locals 6

    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/customevent/c;

    move-object v5, p5

    check-cast v5, Lcom/google/android/gms/ads/mediation/customevent/c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/customevent/CustomEventAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/d;Landroid/app/Activity;Lcom/google/ads/mediation/customevent/c;Lcom/google/ads/mediation/a;Lcom/google/android/gms/ads/mediation/customevent/c;)V

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method
