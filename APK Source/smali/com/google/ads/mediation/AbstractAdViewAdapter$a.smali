.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$a;
.super Lcom/google/android/gms/ads/mediation/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final ayA:Lcom/google/android/gms/ads/b/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/g;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/g;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->ayA:Lcom/google/android/gms/ads/b/g;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lC()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/g;->aAe:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lD()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/g;->aAf:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lE()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/g;->aAg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lF()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/g;->aAh:Lcom/google/android/gms/ads/b/c$b;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lG()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/g;->aAi:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lH()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lH()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/ads/mediation/g;->aAj:D

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lI()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lI()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/g;->aAk:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lJ()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->lJ()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/g;->aAl:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/f;->mr()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/f;->ms()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/g;->getVideoController()Lcom/google/android/gms/ads/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->aAc:Lcom/google/android/gms/ads/i;

    return-void
.end method


# virtual methods
.method public final bn(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/ads/b/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/b/e;

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->ayA:Lcom/google/android/gms/ads/b/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/e;->setNativeAd(Lcom/google/android/gms/ads/b/c;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/b/f;->azE:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$a;->ayA:Lcom/google/android/gms/ads/b/g;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/f;->setNativeAd(Lcom/google/android/gms/ads/b/c;)V

    :cond_1
    return-void
.end method
