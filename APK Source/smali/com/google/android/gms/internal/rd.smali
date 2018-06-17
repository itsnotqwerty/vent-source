.class public final Lcom/google/android/gms/internal/rd;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/rd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bct:Z

.field public final bcu:I

.field public final bcv:Z

.field public final bcw:I

.field public final bcx:Lcom/google/android/gms/internal/qq;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/re;

    invoke-direct {v0}, Lcom/google/android/gms/internal/re;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/rd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZIZILcom/google/android/gms/internal/qq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/rd;->versionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/rd;->bct:Z

    iput p3, p0, Lcom/google/android/gms/internal/rd;->bcu:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/rd;->bcv:Z

    iput p5, p0, Lcom/google/android/gms/internal/rd;->bcw:I

    iput-object p6, p0, Lcom/google/android/gms/internal/rd;->bcx:Lcom/google/android/gms/internal/qq;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/b/d;)V
    .locals 7

    const/4 v1, 0x3

    iget-boolean v2, p1, Lcom/google/android/gms/ads/b/d;->azw:Z

    iget v3, p1, Lcom/google/android/gms/ads/b/d;->azx:I

    iget-boolean v4, p1, Lcom/google/android/gms/ads/b/d;->azy:Z

    iget v5, p1, Lcom/google/android/gms/ads/b/d;->azz:I

    iget-object v0, p1, Lcom/google/android/gms/ads/b/d;->azA:Lcom/google/android/gms/ads/j;

    if-eqz v0, :cond_0

    new-instance v6, Lcom/google/android/gms/internal/qq;

    iget-object v0, p1, Lcom/google/android/gms/ads/b/d;->azA:Lcom/google/android/gms/ads/j;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/qq;-><init>(Lcom/google/android/gms/ads/j;)V

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/rd;-><init>(IZIZILcom/google/android/gms/internal/qq;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/rd;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/rd;->bct:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/rd;->bcu:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/rd;->bcv:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/rd;->bcw:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/rd;->bcx:Lcom/google/android/gms/internal/qq;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
