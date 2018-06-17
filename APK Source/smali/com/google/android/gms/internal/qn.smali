.class public final Lcom/google/android/gms/internal/qn;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/qn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bci:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/qn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/d/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/ads/d/a;->aAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/qn;->bci:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/qn;->bci:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/qn;->bci:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
