.class public final Lcom/google/android/gms/internal/qi;
.super Lcom/google/android/gms/internal/ox;


# instance fields
.field private bcc:Lcom/google/android/gms/internal/ol;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ox;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/qi;)Lcom/google/android/gms/internal/ol;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qi;->bcc:Lcom/google/android/gms/internal/ol;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/h;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/nu;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/oi;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/pb;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/pv;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/qq;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/qy;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/uu;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/uz;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final aq(Z)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ol;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qi;->bcc:Lcom/google/android/gms/internal/ol;

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ph;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/nr;)Z
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/w;->aKT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/qj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/qj;-><init>(Lcom/google/android/gms/internal/qi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/pp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final kC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final tl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final tn()Lcom/google/android/gms/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final to()V
    .locals 0

    return-void
.end method

.method public final tp()Lcom/google/android/gms/internal/nu;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final tq()Lcom/google/android/gms/internal/pb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final tr()Lcom/google/android/gms/internal/ol;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
