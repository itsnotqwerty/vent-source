.class public final Lcom/google/android/gms/internal/ud;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/c;
.implements Lcom/google/android/gms/ads/mediation/d;
.implements Lcom/google/android/gms/ads/mediation/e;


# instance fields
.field private final bcW:Lcom/google/android/gms/internal/tp;

.field bcX:Lcom/google/android/gms/ads/mediation/f;

.field bcY:Lcom/google/android/gms/ads/mediation/k;

.field bcZ:Lcom/google/android/gms/ads/b/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/tp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    return-void
.end method

.method private static b(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/f;)V
    .locals 2

    instance-of v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/i;

    invoke-direct {v0}, Lcom/google/android/gms/ads/i;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ua;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ua;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/internal/pp;)V

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/google/android/gms/ads/mediation/f;->aAd:Z

    if-eqz v1, :cond_0

    iput-object v0, p1, Lcom/google/android/gms/ads/mediation/f;->aAc:Lcom/google/android/gms/ads/i;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/f;)V
    .locals 2

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ud;->bcX:Lcom/google/android/gms/ads/mediation/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ud;->bcY:Lcom/google/android/gms/ads/mediation/k;

    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcX:Lcom/google/android/gms/ads/mediation/f;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ud;->b(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/f;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/k;)V
    .locals 2

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ud;->bcY:Lcom/google/android/gms/ads/mediation/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ud;->bcX:Lcom/google/android/gms/ads/mediation/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcX:Lcom/google/android/gms/ads/mediation/f;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ud;->b(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;Lcom/google/android/gms/ads/mediation/f;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/ads/b/i;)V
    .locals 3

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v1, "Adapter called onAdLoaded with template id "

    invoke-interface {p1}, Lcom/google/android/gms/ads/b/i;->lM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ud;->bcZ:Lcom/google/android/gms/ads/b/i;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/ads/b/i;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/sg;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    check-cast p1, Lcom/google/android/gms/internal/sg;

    iget-object v1, p1, Lcom/google/android/gms/internal/sg;->bcJ:Lcom/google/android/gms/internal/sd;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/tp;->a(Lcom/google/android/gms/internal/sd;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onCustomClick."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Unexpected native custom template ad type."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final cx(I)V
    .locals 2

    const-string v0, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const/16 v0, 0x37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/tp;->cv(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final cy(I)V
    .locals 2

    const-string v0, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const/16 v0, 0x37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/tp;->cv(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final cz(I)V
    .locals 2

    const-string v0, "onAdFailedToLoad must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const/16 v0, 0x37

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Adapter called onAdFailedToLoad with error "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/tp;->cv(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mc()V
    .locals 2

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final md()V
    .locals 2

    const-string v0, "onAdOpened must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final me()V
    .locals 2

    const-string v0, "onAdClosed must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->ll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mf()V
    .locals 2

    const-string v0, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mg()V
    .locals 2

    const-string v0, "onAdClicked must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClicked."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->ln()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mh()V
    .locals 2

    const-string v0, "onAdLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLoaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lj()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mi()V
    .locals 2

    const-string v0, "onAdOpened must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mj()V
    .locals 2

    const-string v0, "onAdClosed must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->ll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mk()V
    .locals 2

    const-string v0, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final ml()V
    .locals 2

    const-string v0, "onAdClicked must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClicked."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->ln()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mm()V
    .locals 2

    const-string v0, "onAdOpened must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdOpened."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mn()V
    .locals 2

    const-string v0, "onAdClosed must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdClosed."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->ll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mo()V
    .locals 2

    const-string v0, "onAdLeftApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAdLeftApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mp()V
    .locals 3

    const-string v0, "onAdClicked must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcX:Lcom/google/android/gms/ads/mediation/f;

    iget-object v1, p0, Lcom/google/android/gms/internal/ud;->bcY:Lcom/google/android/gms/ads/mediation/k;

    iget-object v2, p0, Lcom/google/android/gms/internal/ud;->bcZ:Lcom/google/android/gms/ads/b/i;

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-string v0, "Could not call onAdClicked since mapper is null."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/mediation/k;->aAF:Z

    if-nez v1, :cond_1

    const-string v0, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->mu()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Could not call onAdClicked since setOverrideClickHandling is not set to true"

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Adapter called onAdClicked."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->ln()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final mq()V
    .locals 3

    const-string v0, "onAdImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcX:Lcom/google/android/gms/ads/mediation/f;

    iget-object v1, p0, Lcom/google/android/gms/internal/ud;->bcY:Lcom/google/android/gms/ads/mediation/k;

    iget-object v2, p0, Lcom/google/android/gms/internal/ud;->bcZ:Lcom/google/android/gms/ads/b/i;

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-string v0, "Could not call onAdImpression since AdMapper is null. "

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/mediation/k;->aAE:Z

    if-nez v1, :cond_1

    const-string v0, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->mt()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Could not call onAdImpression since setOverrideImpressionRecording is not set to true"

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Adapter called onAdImpression."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/tp;->lo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdImpression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "onAppEvent must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->bg(Ljava/lang/String;)V

    const-string v0, "Adapter called onAppEvent."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->br(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ud;->bcW:Lcom/google/android/gms/internal/tp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/tp;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAppEvent."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
