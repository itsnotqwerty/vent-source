.class public final Lcom/google/android/gms/location/l;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bdH:Z

.field private bdI:J

.field private bdJ:F

.field private bdK:J

.field private bdv:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/m;

    invoke-direct {v0}, Lcom/google/android/gms/location/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    const v7, 0x7fffffff

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/l;-><init>(ZJFJI)V

    return-void
.end method

.method constructor <init>(ZJFJI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/location/l;->bdH:Z

    iput-wide p2, p0, Lcom/google/android/gms/location/l;->bdI:J

    iput p4, p0, Lcom/google/android/gms/location/l;->bdJ:F

    iput-wide p5, p0, Lcom/google/android/gms/location/l;->bdK:J

    iput p7, p0, Lcom/google/android/gms/location/l;->bdv:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/l;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/l;

    iget-boolean v2, p0, Lcom/google/android/gms/location/l;->bdH:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/l;->bdH:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdI:J

    iget-wide v4, p1, Lcom/google/android/gms/location/l;->bdI:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/l;->bdJ:F

    iget v3, p1, Lcom/google/android/gms/location/l;->bdJ:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdK:J

    iget-wide v4, p1, Lcom/google/android/gms/location/l;->bdK:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/l;->bdv:I

    iget v3, p1, Lcom/google/android/gms/location/l;->bdv:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/location/l;->bdH:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdI:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/location/l;->bdJ:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdK:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/location/l;->bdv:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceOrientationRequest[mShouldUseMag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/location/l;->bdH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mMinimumSamplingPeriodMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdI:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSmallestAngleChangeRadians="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/l;->bdJ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdK:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdK:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-string v1, " expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lcom/google/android/gms/location/l;->bdv:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/l;->bdv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/location/l;->bdH:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdI:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/location/l;->bdJ:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/location/l;->bdK:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/l;->bdv:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
