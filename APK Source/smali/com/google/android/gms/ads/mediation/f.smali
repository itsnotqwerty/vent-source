.class public Lcom/google/android/gms/ads/mediation/f;
.super Ljava/lang/Object;


# instance fields
.field protected aAa:Landroid/view/View;

.field public aAb:Landroid/view/View;

.field public aAc:Lcom/google/android/gms/ads/i;

.field public aAd:Z

.field protected azY:Z

.field protected azZ:Z

.field protected zp:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->zp:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public bn(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->zp:Landroid/os/Bundle;

    return-object v0
.end method

.method public final mr()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/mediation/f;->azY:Z

    return-void
.end method

.method public final ms()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/mediation/f;->azZ:Z

    return-void
.end method

.method public final mt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/f;->azY:Z

    return v0
.end method

.method public final mu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/f;->azZ:Z

    return v0
.end method

.method public final mv()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->aAa:Landroid/view/View;

    return-object v0
.end method
