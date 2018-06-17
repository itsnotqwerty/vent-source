.class final Lcom/google/ads/mediation/AbstractAdViewAdapter$c;
.super Lcom/google/android/gms/ads/mediation/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/AbstractAdViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final ayC:Lcom/google/android/gms/ads/b/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/k;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/k;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/AbstractAdViewAdapter$c;->ayC:Lcom/google/android/gms/ads/b/k;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAu:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lD()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAv:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->body:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lF()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAw:Lcom/google/android/gms/ads/b/c$b;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lO()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAx:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAy:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lH()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAz:Ljava/lang/Double;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lR()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAB:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->lS()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAD:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/ads/mediation/k;->aAE:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/mediation/k;->aAF:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/k;->getVideoController()Lcom/google/android/gms/ads/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->aAC:Lcom/google/android/gms/ads/i;

    return-void
.end method


# virtual methods
.method public final bo(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/ads/b/m;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/b/m;->lT()V

    :cond_0
    return-void
.end method
