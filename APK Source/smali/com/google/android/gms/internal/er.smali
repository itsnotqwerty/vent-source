.class public final Lcom/google/android/gms/internal/er;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/f;)Landroid/location/Location;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/location/d;->b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/fl;->aQh:Lcom/google/android/gms/internal/fe;

    iget-object v0, v1, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fq;->oq()V

    iget-object v0, v1, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fq;->or()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fc;

    iget-object v1, v1, Lcom/google/android/gms/internal/fe;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fc;->bO(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)Lcom/google/android/gms/common/api/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/location/c;",
            ")",
            "Lcom/google/android/gms/common/api/g",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Calling thread must be a prepared Looper thread."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/es;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/es;-><init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/c;)Lcom/google/android/gms/common/api/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/location/c;",
            ")",
            "Lcom/google/android/gms/common/api/g",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/et;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/et;-><init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/c;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v0

    return-object v0
.end method
