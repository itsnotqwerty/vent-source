.class public final Lcom/google/android/gms/internal/nr;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/nr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final baB:J

.field public final baC:I

.field public final baD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final baE:Z

.field public final baF:I

.field public final baG:Z

.field public final baH:Ljava/lang/String;

.field public final baI:Lcom/google/android/gms/internal/qn;

.field public final baJ:Landroid/location/Location;

.field public final baK:Ljava/lang/String;

.field public final baL:Landroid/os/Bundle;

.field public final baM:Landroid/os/Bundle;

.field public final baN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final baO:Ljava/lang/String;

.field public final baP:Ljava/lang/String;

.field public final baQ:Z

.field public final extras:Landroid/os/Bundle;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ns;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ns;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/qn;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/qn;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/nr;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/nr;->baB:J

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/nr;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/nr;->baC:I

    iput-object p6, p0, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/nr;->baE:Z

    iput p8, p0, Lcom/google/android/gms/internal/nr;->baF:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/nr;->baG:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/nr;->baH:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/nr;->baI:Lcom/google/android/gms/internal/qn;

    iput-object p12, p0, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/nr;->baK:Ljava/lang/String;

    if-nez p14, :cond_1

    new-instance p14, Landroid/os/Bundle;

    invoke-direct/range {p14 .. p14}, Landroid/os/Bundle;-><init>()V

    :cond_1
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/nr;->baM:Landroid/os/Bundle;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/nr;->baN:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/nr;->baO:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/nr;->baP:Ljava/lang/String;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/internal/nr;->baQ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/nr;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/nr;

    iget v1, p0, Lcom/google/android/gms/internal/nr;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/internal/nr;->versionCode:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/nr;->baB:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/nr;->baB:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->extras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->extras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/nr;->baC:I

    iget v2, p1, Lcom/google/android/gms/internal/nr;->baC:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/nr;->baE:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/nr;->baE:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/nr;->baF:I

    iget v2, p1, Lcom/google/android/gms/internal/nr;->baF:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/nr;->baG:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/nr;->baG:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baH:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baH:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baI:Lcom/google/android/gms/internal/qn;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baI:Lcom/google/android/gms/internal/qn;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baK:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baK:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baM:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baM:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baN:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baN:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baO:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baO:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nr;->baP:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nr;->baP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ac;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/nr;->baQ:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/nr;->baQ:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/nr;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/nr;->baB:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->extras:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/nr;->baC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nr;->baE:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/nr;->baF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nr;->baG:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baH:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baI:Lcom/google/android/gms/internal/qn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baK:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baM:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baN:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baO:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baP:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nr;->baQ:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/nr;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/nr;->baB:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->extras:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/nr;->baC:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baD:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/util/List;)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nr;->baE:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/nr;->baF:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nr;->baG:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baH:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baI:Lcom/google/android/gms/internal/qn;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baJ:Landroid/location/Location;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baK:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baL:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baM:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baN:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/util/List;)V

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baO:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/nr;->baP:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nr;->baQ:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
