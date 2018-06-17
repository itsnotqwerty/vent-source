.class public final Lcom/google/android/gms/internal/ep;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aPR:I

.field private aPS:Lcom/google/android/gms/internal/en;

.field private aPT:Lcom/google/android/gms/location/n;

.field private aPU:Lcom/google/android/gms/internal/ez;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/eq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/eq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/en;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ep;->aPR:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ep;->aPS:Lcom/google/android/gms/internal/en;

    if-nez p3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ep;->aPT:Lcom/google/android/gms/location/n;

    if-nez p4, :cond_2

    :cond_0
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ep;->aPU:Lcom/google/android/gms/internal/ez;

    return-void

    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/location/o;->A(Landroid/os/IBinder;)Lcom/google/android/gms/location/n;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ez;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/ez;

    move-object v1, v0

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/fb;

    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/fb;-><init>(Landroid/os/IBinder;)V

    goto :goto_1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v2

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ep;->aPR:I

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/ep;->aPS:Lcom/google/android/gms/internal/en;

    invoke-static {p1, v0, v3, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ep;->aPT:Lcom/google/android/gms/location/n;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/ep;->aPU:Lcom/google/android/gms/internal/ez;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ep;->aPT:Lcom/google/android/gms/location/n;

    invoke-interface {v0}, Lcom/google/android/gms/location/n;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ep;->aPU:Lcom/google/android/gms/internal/ez;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ez;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1
.end method
