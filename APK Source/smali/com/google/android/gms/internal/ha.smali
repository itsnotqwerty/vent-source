.class public final Lcom/google/android/gms/internal/ha;
.super Lcom/google/android/gms/common/internal/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/al",
        "<",
        "Lcom/google/android/gms/internal/gt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/al;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;)V

    return-void
.end method


# virtual methods
.method public final synthetic h(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/gt;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/gt;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/gv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gv;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final oi()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method

.method protected final oj()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method
