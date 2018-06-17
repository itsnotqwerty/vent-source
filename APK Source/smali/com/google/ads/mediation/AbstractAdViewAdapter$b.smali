.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$b;
.super Lcom/google/android/gms/ads/mediation/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final ayB:Lcom/google/android/gms/ads/b/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/h;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$b;->ayB:Lcom/google/android/gms/ads/b/h;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->lC()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->aAe:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->lD()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->aAf:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->lE()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->aAg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->lK()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->lK()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->aAm:Lcom/google/android/gms/ads/b/c$b;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->lG()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->aAi:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->lL()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/h;->aAn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/f;->mr()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/f;->ms()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/h;->getVideoController()Lcom/google/android/gms/ads/i;

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

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$b;->ayB:Lcom/google/android/gms/ads/b/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/e;->setNativeAd(Lcom/google/android/gms/ads/b/c;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/b/f;->azE:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$b;->ayB:Lcom/google/android/gms/ads/b/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b/f;->setNativeAd(Lcom/google/android/gms/ads/b/c;)V

    :cond_1
    return-void
.end method
