.class public final Lcom/google/android/gms/common/k;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/l;

    invoke-direct {v0}, Lcom/google/android/gms/common/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/k;->name:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/common/k;->version:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/k;->name:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/common/k;->version:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
