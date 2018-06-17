.class public final Lcom/google/android/gms/internal/ub;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/a;


# instance fields
.field private final ayH:Ljava/util/Date;

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

.field private final bbF:Z

.field private final bbv:I

.field private final bcT:I


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ub;->ayH:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/ub;->bbv:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ub;->ayJ:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/ub;->ayL:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ub;->ayK:Z

    iput p6, p0, Lcom/google/android/gms/internal/ub;->bcT:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ub;->bbF:Z

    return-void
.end method


# virtual methods
.method public final getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->ayJ:Ljava/util/Set;

    return-object v0
.end method

.method public final lW()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->ayH:Ljava/util/Date;

    return-object v0
.end method

.method public final lX()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ub;->bbv:I

    return v0
.end method

.method public final lY()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ub;->ayL:Landroid/location/Location;

    return-object v0
.end method

.method public final lZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ub;->bcT:I

    return v0
.end method

.method public final ma()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ub;->ayK:Z

    return v0
.end method

.method public final mb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ub;->bbF:Z

    return v0
.end method
