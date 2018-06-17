.class public final Lcom/google/android/gms/ads/b/j;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/b/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final azG:Z

.field private final azH:Lcom/google/android/gms/internal/pb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/b/l;

    invoke-direct {v0}, Lcom/google/android/gms/ads/b/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/b/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZLandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/b/j;->azG:Z

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/pc;->p(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pb;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/b/j;->azH:Lcom/google/android/gms/internal/pb;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v1

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/ads/b/j;->azG:Z

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/ads/b/j;->azH:Lcom/google/android/gms/internal/pb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/j;->azH:Lcom/google/android/gms/internal/pb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/pb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
