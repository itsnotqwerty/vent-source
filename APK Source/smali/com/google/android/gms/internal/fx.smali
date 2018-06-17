.class public final Lcom/google/android/gms/internal/fx;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/fx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aQB:Ljava/lang/String;

.field public final aQF:Ljava/lang/String;

.field public final aQG:J

.field public final aQH:Ljava/lang/String;

.field public final aQI:J

.field public final aQJ:J

.field public final aQK:Z

.field public final aQL:J

.field public final aQM:Z

.field public final aQX:Ljava/lang/String;

.field public final aQY:Z

.field public final aQZ:J

.field public final aQz:Ljava/lang/String;

.field public final aRa:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/fx;->aQG:J

    iput-object p6, p0, Lcom/google/android/gms/internal/fx;->aQH:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/internal/fx;->aQI:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/fx;->aQJ:J

    iput-object p11, p0, Lcom/google/android/gms/internal/fx;->aQX:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/google/android/gms/internal/fx;->aQK:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->aQY:Z

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/fx;->aQB:Ljava/lang/String;

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/internal/fx;->aQL:J

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/fx;->aQZ:J

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/internal/fx;->aRa:I

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->aQM:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZ)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    iput-wide p12, p0, Lcom/google/android/gms/internal/fx;->aQG:J

    iput-object p4, p0, Lcom/google/android/gms/internal/fx;->aQH:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/fx;->aQI:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/fx;->aQJ:J

    iput-object p9, p0, Lcom/google/android/gms/internal/fx;->aQX:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/internal/fx;->aQK:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/fx;->aQY:Z

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/fx;->aQB:Ljava/lang/String;

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/internal/fx;->aQL:J

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/fx;->aQZ:J

    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/gms/internal/fx;->aRa:I

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fx;->aQM:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/fx;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/fx;->aQz:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/fx;->aQF:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/fx;->aQH:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/gms/internal/fx;->aQI:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/internal/fx;->aQJ:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/fx;->aQX:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fx;->aQK:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fx;->aQY:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/internal/fx;->aQG:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/fx;->aQB:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/google/android/gms/internal/fx;->aQL:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/android/gms/internal/fx;->aQZ:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/gms/internal/fx;->aRa:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fx;->aQM:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
