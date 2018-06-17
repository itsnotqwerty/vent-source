.class public final Lcom/google/android/gms/internal/fo;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/fo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aCk:Landroid/app/PendingIntent;

.field private aPR:I

.field private aPU:Lcom/google/android/gms/internal/ez;

.field private aQo:Lcom/google/android/gms/internal/fm;

.field private aQp:Lcom/google/android/gms/location/t;

.field private aQq:Lcom/google/android/gms/location/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/fm;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/fo;->aPR:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fo;->aQo:Lcom/google/android/gms/internal/fm;

    if-nez p3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/fo;->aQp:Lcom/google/android/gms/location/t;

    iput-object p4, p0, Lcom/google/android/gms/internal/fo;->aCk:Landroid/app/PendingIntent;

    if-nez p5, :cond_2

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/fo;->aQq:Lcom/google/android/gms/location/q;

    if-nez p6, :cond_3

    :cond_0
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/fo;->aPU:Lcom/google/android/gms/internal/ez;

    return-void

    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/location/u;->C(Landroid/os/IBinder;)Lcom/google/android/gms/location/t;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p5}, Lcom/google/android/gms/location/r;->B(Landroid/os/IBinder;)Lcom/google/android/gms/location/q;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz p6, :cond_0

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p6, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ez;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/android/gms/internal/ez;

    move-object v1, v0

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/fb;

    invoke-direct {v1, p6}, Lcom/google/android/gms/internal/fb;-><init>(Landroid/os/IBinder;)V

    goto :goto_2
.end method

.method public static a(Lcom/google/android/gms/location/q;)Lcom/google/android/gms/internal/fo;
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/fo;

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/q;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fo;-><init>(ILcom/google/android/gms/internal/fm;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/location/t;Lcom/google/android/gms/internal/ez;)Lcom/google/android/gms/internal/fo;
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/fo;

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/location/t;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ez;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/fo;-><init>(ILcom/google/android/gms/internal/fm;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0

    :cond_0
    move-object v6, v2

    goto :goto_0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v2

    const/4 v0, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/fo;->aPR:I

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/fo;->aQo:Lcom/google/android/gms/internal/fm;

    invoke-static {p1, v0, v3, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->aQp:Lcom/google/android/gms/location/t;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/fo;->aCk:Landroid/app/PendingIntent;

    invoke-static {p1, v0, v3, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->aQq:Lcom/google/android/gms/location/q;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/fo;->aPU:Lcom/google/android/gms/internal/ez;

    if-nez v3, :cond_2

    :goto_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->aQp:Lcom/google/android/gms/location/t;

    invoke-interface {v0}, Lcom/google/android/gms/location/t;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->aQq:Lcom/google/android/gms/location/q;

    invoke-interface {v0}, Lcom/google/android/gms/location/q;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/fo;->aPU:Lcom/google/android/gms/internal/ez;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ez;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_2
.end method
