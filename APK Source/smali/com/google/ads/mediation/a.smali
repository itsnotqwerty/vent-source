.class public final Lcom/google/ads/mediation/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final ayH:Ljava/util/Date;

.field private final ayI:I

.field private final ayJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ayK:Z

.field private final ayL:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;ZLandroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/mediation/a;->ayH:Ljava/util/Date;

    iput p2, p0, Lcom/google/ads/mediation/a;->ayI:I

    iput-object p3, p0, Lcom/google/ads/mediation/a;->ayJ:Ljava/util/Set;

    iput-boolean p4, p0, Lcom/google/ads/mediation/a;->ayK:Z

    iput-object p5, p0, Lcom/google/ads/mediation/a;->ayL:Landroid/location/Location;

    return-void
.end method
