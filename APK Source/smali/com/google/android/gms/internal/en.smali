.class public final Lcom/google/android/gms/internal/en;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/en;",
            ">;"
        }
    .end annotation
.end field

.field static final aPN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;"
        }
    .end annotation
.end field

.field static final aPO:Lcom/google/android/gms/location/l;


# instance fields
.field private aPP:Lcom/google/android/gms/location/l;

.field private aPQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/en;->aPN:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/location/l;

    invoke-direct {v0}, Lcom/google/android/gms/location/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/en;->aPO:Lcom/google/android/gms/location/l;

    new-instance v0, Lcom/google/android/gms/internal/eo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/eo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/en;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/l;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/l;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/en;->aPP:Lcom/google/android/gms/location/l;

    iput-object p2, p0, Lcom/google/android/gms/internal/en;->aPQ:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/en;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/en;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/en;

    iget-object v1, p0, Lcom/google/android/gms/internal/en;->aPP:Lcom/google/android/gms/location/l;

    iget-object v2, p1, Lcom/google/android/gms/internal/en;->aPP:Lcom/google/android/gms/location/l;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/en;->aPQ:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/en;->aPQ:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/en;->mTag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/en;->mTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->aPP:Lcom/google/android/gms/location/l;

    invoke-virtual {v0}, Lcom/google/android/gms/location/l;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/en;->aPP:Lcom/google/android/gms/location/l;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/en;->aPQ:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->b(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/en;->mTag:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
