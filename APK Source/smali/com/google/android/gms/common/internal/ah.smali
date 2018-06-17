.class public final Lcom/google/android/gms/common/internal/ah;
.super Lcom/google/android/gms/internal/dr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/ah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aCi:I

.field public aEj:Z

.field public aGN:Lcom/google/android/gms/common/a;

.field private aHQ:Landroid/os/IBinder;

.field public aHR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/ai;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ai;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ah;->aCi:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ah;->aHQ:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ah;->aGN:Lcom/google/android/gms/common/a;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/ah;->aEj:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/ah;->aHR:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/ah;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/ah;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ah;->aGN:Lcom/google/android/gms/common/a;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/ah;->aGN:Lcom/google/android/gms/common/a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ah;->oh()Lcom/google/android/gms/common/internal/n;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ah;->oh()Lcom/google/android/gms/common/internal/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final oh()Lcom/google/android/gms/common/internal/n;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ah;->aHQ:Landroid/os/IBinder;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/gms/common/internal/n;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/n;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/p;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/p;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/internal/ah;->aCi:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ah;->aHQ:Landroid/os/IBinder;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ah;->aGN:Lcom/google/android/gms/common/a;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/ah;->aEj:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/ah;->aHR:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
