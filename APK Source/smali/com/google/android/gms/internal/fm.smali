.class public final Lcom/google/android/gms/internal/fm;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/fm;",
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


# instance fields
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

.field private aQi:Lcom/google/android/gms/location/LocationRequest;

.field private aQj:Z

.field private aQk:Z

.field private aQl:Z

.field private aQm:Ljava/lang/String;

.field private aQn:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/fm;->aPN:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/fn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/el;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fm;->aQn:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fm;->aQi:Lcom/google/android/gms/location/LocationRequest;

    iput-object p2, p0, Lcom/google/android/gms/internal/fm;->aPQ:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/fm;->mTag:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/fm;->aQj:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/fm;->aQk:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/fm;->aQl:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/fm;->aQm:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/fm;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/fm;

    sget-object v2, Lcom/google/android/gms/internal/fm;->aPN:Ljava/util/List;

    move-object v1, p0

    move v5, v4

    move v6, v4

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fm;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/fm;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/fm;

    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->aQi:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lcom/google/android/gms/internal/fm;->aQi:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->aPQ:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/fm;->aPQ:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->mTag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fm;->mTag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fm;->aQj:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/fm;->aQj:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fm;->aQk:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/fm;->aQk:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fm;->aQl:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/fm;->aQl:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->aQm:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/fm;->aQm:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fm;->aQi:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->aQi:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fm;->aQm:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " moduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->aQm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " hideAppOps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fm;->aQj:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->aPQ:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " forceCoarseLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fm;->aQk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fm;->aQl:Z

    if-eqz v1, :cond_2

    const-string v1, " exemptFromBackgroundThrottle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->aQi:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->aPQ:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->b(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->mTag:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fm;->aQj:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fm;->aQk:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fm;->aQl:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/fm;->aQm:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
