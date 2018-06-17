.class public Lcom/google/android/gms/ads/mediation/k;
.super Ljava/lang/Object;


# instance fields
.field public aAA:Ljava/lang/String;

.field public aAB:Ljava/lang/String;

.field public aAC:Lcom/google/android/gms/ads/i;

.field public aAD:Ljava/lang/Object;

.field public aAE:Z

.field public aAF:Z

.field public aAu:Ljava/lang/String;

.field public aAv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public aAw:Lcom/google/android/gms/ads/b/c$b;

.field public aAx:Ljava/lang/String;

.field public aAy:Ljava/lang/String;

.field public aAz:Ljava/lang/Double;

.field public body:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/k;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public bo(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    return-void
.end method
