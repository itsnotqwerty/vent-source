.class public final Lcom/google/android/gms/internal/ga;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aRb:Ljava/lang/String;

.field public aRc:Lcom/google/android/gms/internal/lb;

.field public aRd:J

.field public aRe:Z

.field public aRf:Ljava/lang/String;

.field public aRg:Lcom/google/android/gms/internal/gp;

.field public aRh:J

.field public aRi:Lcom/google/android/gms/internal/gp;

.field public aRj:J

.field public aRk:Lcom/google/android/gms/internal/gp;

.field public packageName:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ga;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/lb;JZLjava/lang/String;Lcom/google/android/gms/internal/gp;JLcom/google/android/gms/internal/gp;JLcom/google/android/gms/internal/gp;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ga;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ga;->aRd:J

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ga;->aRe:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ga;->aRf:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/ga;->aRg:Lcom/google/android/gms/internal/gp;

    iput-wide p10, p0, Lcom/google/android/gms/internal/ga;->aRh:J

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/internal/ga;->aRj:J

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ga;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ga;->versionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ga;->aRd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ga;->aRd:J

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ga;->aRe:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ga;->aRe:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRf:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRg:Lcom/google/android/gms/internal/gp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRg:Lcom/google/android/gms/internal/gp;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ga;->aRh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ga;->aRh:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ga;->aRj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ga;->aRj:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/lb;JZLjava/lang/String;Lcom/google/android/gms/internal/gp;JLcom/google/android/gms/internal/gp;JLcom/google/android/gms/internal/gp;)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ga;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ga;->aRd:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ga;->aRe:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ga;->aRf:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/ga;->aRg:Lcom/google/android/gms/internal/gp;

    iput-wide p9, p0, Lcom/google/android/gms/internal/ga;->aRh:J

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/google/android/gms/internal/ga;->aRj:J

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ga;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->aRb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->aRc:Lcom/google/android/gms/internal/lb;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ga;->aRd:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ga;->aRe:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->aRf:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->aRg:Lcom/google/android/gms/internal/gp;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/internal/ga;->aRh:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->aRi:Lcom/google/android/gms/internal/gp;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/internal/ga;->aRj:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/ga;->aRk:Lcom/google/android/gms/internal/gp;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
