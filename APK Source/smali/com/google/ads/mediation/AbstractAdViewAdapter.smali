.class public abstract Lcom/google/ads/mediation/AbstractAdViewAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;
.implements Lcom/google/android/gms/ads/mediation/j;
.implements Lcom/google/android/gms/ads/mediation/l;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/internal/zzaqk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/AbstractAdViewAdapter$b;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$c;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$a;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$f;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$e;,
        Lcom/google/ads/mediation/AbstractAdViewAdapter$d;
    }
.end annotation


# static fields
.field public static final AD_UNIT_ID_PARAMETER:Ljava/lang/String; = "pubid"


# instance fields
.field private zzgs:Lcom/google/android/gms/ads/e;

.field private zzgt:Lcom/google/android/gms/ads/h;

.field private zzgu:Lcom/google/android/gms/ads/b;

.field private zzgv:Landroid/content/Context;

.field private zzgw:Lcom/google/android/gms/ads/h;

.field private zzgx:Lcom/google/android/gms/ads/reward/mediation/a;

.field private zzgy:Lcom/google/android/gms/ads/reward/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/mediation/g;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/g;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgy:Lcom/google/android/gms/ads/reward/c;

    return-void
.end method

.method private final zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/google/android/gms/ads/c$a;

    invoke-direct {v3}, Lcom/google/android/gms/ads/c$a;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->lW()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->aza:Lcom/google/android/gms/internal/py;

    iput-object v0, v4, Lcom/google/android/gms/internal/py;->ayH:Ljava/util/Date;

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->lX()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->aza:Lcom/google/android/gms/internal/py;

    iput v0, v4, Lcom/google/android/gms/internal/py;->bbv:I

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->getKeywords()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/ads/c$a;->aza:Lcom/google/android/gms/internal/py;

    iget-object v5, v5, Lcom/google/android/gms/internal/py;->bbG:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->lY()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/c$a;->a(Landroid/location/Location;)Lcom/google/android/gms/ads/c$a;

    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->ma()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/of;->tj()Lcom/google/android/gms/internal/w;

    invoke-static {p1}, Lcom/google/android/gms/internal/w;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->aza:Lcom/google/android/gms/internal/py;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/py;->cN(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->lZ()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->lZ()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    iget-object v4, v3, Lcom/google/android/gms/ads/c$a;->aza:Lcom/google/android/gms/internal/py;

    if-eqz v0, :cond_7

    :goto_2
    iput v1, v4, Lcom/google/android/gms/internal/py;->bbB:I

    :cond_5
    invoke-interface {p2}, Lcom/google/android/gms/ads/mediation/a;->mb()Z

    move-result v0

    iget-object v1, v3, Lcom/google/android/gms/ads/c$a;->aza:Lcom/google/android/gms/internal/py;

    iput-boolean v0, v1, Lcom/google/android/gms/internal/py;->bbF:Z

    invoke-virtual {p0, p3, p4}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/ads/c$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c$a;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/c$a;->ly()Lcom/google/android/gms/ads/c;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/h;)Lcom/google/android/gms/ads/h;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/ads/mediation/AbstractAdViewAdapter;)Lcom/google/android/gms/ads/reward/mediation/a;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lcom/google/android/gms/ads/reward/mediation/a;

    return-object v0
.end method


# virtual methods
.method public getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pubid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    return-object v0
.end method

.method public getInterstitialAdapterInfo()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/mediation/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/mediation/b$a;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/ads/mediation/b$a;->azX:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "capabilities"

    iget v0, v0, Lcom/google/android/gms/ads/mediation/b$a;->azX:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getVideoController()Lcom/google/android/gms/internal/pp;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->getVideoController()Lcom/google/android/gms/ads/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->lz()Lcom/google/android/gms/internal/pp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgv:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lcom/google/android/gms/ads/reward/mediation/a;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lcom/google/android/gms/ads/reward/mediation/a;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/a;->a(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lcom/google/android/gms/ads/reward/mediation/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgv:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgx:Lcom/google/android/gms/ads/reward/mediation/a;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "AdMobAdapter.loadAd called before initialize."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgv:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    iget-object v0, v0, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/qb;->bbW:Z

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    invoke-virtual {p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgy:Lcom/google/android/gms/ads/reward/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/internal/qb;->zzgy:Lcom/google/android/gms/ads/reward/c;

    iget-object v2, v0, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v1, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/m;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/m;-><init>(Lcom/google/android/gms/ads/reward/c;)V

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgv:Landroid/content/Context;

    invoke-direct {p0, v1, p1, p3, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->a(Lcom/google/android/gms/ads/c;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->destroy()V

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgu:Lcom/google/android/gms/ads/b;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgu:Lcom/google/android/gms/ads/b;

    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    :cond_3
    return-void
.end method

.method public onImmersiveModeUpdated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/h;->aq(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/h;->aq(Z)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/e;->resume()V

    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/c;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    new-instance v1, Lcom/google/android/gms/ads/d;

    iget v2, p4, Lcom/google/android/gms/ads/d;->azl:I

    iget v3, p4, Lcom/google/android/gms/ads/d;->azm:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/d;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setAdSize(Lcom/google/android/gms/ads/d;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    new-instance v1, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$d;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->setAdListener(Lcom/google/android/gms/ads/a;)V

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgs:Lcom/google/android/gms/ads/e;

    invoke-direct {p0, p1, p5, p6, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/e;->a(Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/h;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->getAdUnitId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->setAdUnitId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    new-instance v0, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$e;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/d;)V

    iget-object v1, v2, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    :try_start_0
    iput-object v0, v1, Lcom/google/android/gms/internal/qb;->baA:Lcom/google/android/gms/ads/a;

    iget-object v3, v1, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v3, Lcom/google/android/gms/internal/no;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/no;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ow;->b(Lcom/google/android/gms/internal/ol;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, v2, Lcom/google/android/gms/ads/h;->azq:Lcom/google/android/gms/internal/qb;

    check-cast v0, Lcom/google/android/gms/internal/nm;

    :try_start_1
    iput-object v0, v1, Lcom/google/android/gms/internal/qb;->baz:Lcom/google/android/gms/internal/nm;

    iget-object v2, v1, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/qb;->bbP:Lcom/google/android/gms/internal/ow;

    new-instance v2, Lcom/google/android/gms/internal/nn;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/nn;-><init>(Lcom/google/android/gms/internal/nm;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ow;->a(Lcom/google/android/gms/internal/oi;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/h;->a(Lcom/google/android/gms/ads/c;)V

    return-void

    :catch_0
    move-exception v1

    const-string v3, "Failed to set the AdListener."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/e;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/i;Landroid/os/Bundle;)V
    .locals 5

    new-instance v2, Lcom/google/ads/mediation/AbstractAdViewAdapter$f;

    invoke-direct {v2, p0, p2}, Lcom/google/ads/mediation/AbstractAdViewAdapter$f;-><init>(Lcom/google/ads/mediation/AbstractAdViewAdapter;Lcom/google/android/gms/ads/mediation/e;)V

    const-string v0, "pubid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/b$a;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/b$a;

    move-result-object v3

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->mw()Lcom/google/android/gms/ads/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/b/d;)Lcom/google/android/gms/ads/b$a;

    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->my()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/b/k$a;)Lcom/google/android/gms/ads/b$a;

    :cond_1
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->mx()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/b/g$a;)Lcom/google/android/gms/ads/b$a;

    :cond_2
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->mz()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/b$a;->a(Lcom/google/android/gms/ads/b/h$a;)Lcom/google/android/gms/ads/b$a;

    :cond_3
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->mA()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->mB()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/i;->mB()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    :goto_1
    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/gms/ads/b$a;->a(Ljava/lang/String;Lcom/google/android/gms/ads/b/i$b;Lcom/google/android/gms/ads/b/i$a;)Lcom/google/android/gms/ads/b$a;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/ads/b$a;->lx()Lcom/google/android/gms/ads/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgu:Lcom/google/android/gms/ads/b;

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgu:Lcom/google/android/gms/ads/b;

    invoke-direct {p0, p1, p4, p5, p3}, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/a;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/android/gms/ads/c;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/c;->ayZ:Lcom/google/android/gms/internal/px;

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/ads/b;->ayX:Lcom/google/android/gms/internal/oo;

    iget-object v0, v0, Lcom/google/android/gms/ads/b;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nt;->a(Landroid/content/Context;Lcom/google/android/gms/internal/px;)Lcom/google/android/gms/internal/nr;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/oo;->a(Lcom/google/android/gms/internal/nr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgt:Lcom/google/android/gms/ads/h;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/h;->show()V

    return-void
.end method

.method public showVideo()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter;->zzgw:Lcom/google/android/gms/ads/h;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/h;->show()V

    return-void
.end method

.method protected abstract zza(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method
