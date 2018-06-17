.class public final Lcom/google/android/gms/internal/qq;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/qq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bcj:Z

.field public final bck:Z

.field public final bcl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/qr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/qq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/j;)V
    .locals 3

    iget-boolean v0, p1, Lcom/google/android/gms/ads/j;->azt:Z

    iget-boolean v1, p1, Lcom/google/android/gms/ads/j;->azu:Z

    iget-boolean v2, p1, Lcom/google/android/gms/ads/j;->azv:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/qq;-><init>(ZZZ)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/qq;->bcj:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/qq;->bck:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/qq;->bcl:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/qq;->bcj:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/qq;->bck:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/qq;->bcl:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
