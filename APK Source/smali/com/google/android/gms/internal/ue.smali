.class public final Lcom/google/android/gms/internal/ue;
.super Lcom/google/android/gms/internal/ts;


# instance fields
.field private final bda:Lcom/google/android/gms/ads/mediation/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ts;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/a/a;Lcom/google/android/gms/a/a;Lcom/google/android/gms/a/a;)V
    .locals 0

    invoke-static {p2}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    return-void
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/g;->aAg:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/pp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/f;->aAc:Lcom/google/android/gms/ads/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/f;->aAc:Lcom/google/android/gms/ads/i;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/i;->lz()Lcom/google/android/gms/internal/pp;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lD()Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/g;->aAf:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/c$b;

    new-instance v3, Lcom/google/android/gms/internal/rc;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->lB()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/rc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final lN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/g;->aAe:Ljava/lang/String;

    return-object v0
.end method

.method public final lO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/g;->aAi:Ljava/lang/String;

    return-object v0
.end method

.method public final lQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/g;->aAk:Ljava/lang/String;

    return-object v0
.end method

.method public final lR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/g;->aAl:Ljava/lang/String;

    return-object v0
.end method

.method public final mt()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->mt()Z

    move-result v0

    return v0
.end method

.method public final mu()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->mu()Z

    move-result v0

    return v0
.end method

.method public final t(Lcom/google/android/gms/a/a;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    return-void
.end method

.method public final tK()Lcom/google/android/gms/internal/rj;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v1, v0, Lcom/google/android/gms/ads/mediation/g;->aAh:Lcom/google/android/gms/ads/b/c$b;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/rc;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/b/c$b;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/b/c$b;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/ads/b/c$b;->lB()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/rc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tL()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-wide v0, v0, Lcom/google/android/gms/ads/mediation/g;->aAj:D

    return-wide v0
.end method

.method public final tM()Lcom/google/android/gms/internal/rf;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final tP()V
    .locals 0

    return-void
.end method

.method public final tR()Lcom/google/android/gms/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final tZ()Lcom/google/android/gms/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/f;->mv()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final u(Lcom/google/android/gms/a/a;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/f;->bn(Landroid/view/View;)V

    return-void
.end method

.method public final ua()Lcom/google/android/gms/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ue;->bda:Lcom/google/android/gms/ads/mediation/g;

    iget-object v0, v0, Lcom/google/android/gms/ads/mediation/f;->aAb:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final v(Lcom/google/android/gms/a/a;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/a/c;->a(Lcom/google/android/gms/a/a;)Ljava/lang/Object;

    return-void
.end method
