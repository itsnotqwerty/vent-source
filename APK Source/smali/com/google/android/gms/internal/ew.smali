.class public final Lcom/google/android/gms/internal/ew;
.super Lcom/google/android/gms/internal/dr;

# interfaces
.implements Lcom/google/android/gms/common/api/i;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ew;",
            ">;"
        }
    .end annotation
.end field

.field private static aPY:Lcom/google/android/gms/internal/ew;


# instance fields
.field final aCx:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ew;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->aDa:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ew;-><init>(Lcom/google/android/gms/common/api/Status;)V

    sput-object v0, Lcom/google/android/gms/internal/ew;->aPY:Lcom/google/android/gms/internal/ew;

    new-instance v0, Lcom/google/android/gms/internal/ex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ew;->aCx:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final nf()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ew;->aCx:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ew;->aCx:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
