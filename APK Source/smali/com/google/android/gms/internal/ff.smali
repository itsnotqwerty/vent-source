.class final Lcom/google/android/gms/internal/ff;
.super Lcom/google/android/gms/location/r;


# instance fields
.field private final aFY:Lcom/google/android/gms/common/api/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/bc",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ff;->aFY:Lcom/google/android/gms/common/api/internal/bc;

    new-instance v1, Lcom/google/android/gms/internal/fh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/fh;-><init>(Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/bc;->a(Lcom/google/android/gms/common/api/internal/bf;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ff;->aFY:Lcom/google/android/gms/common/api/internal/bc;

    new-instance v1, Lcom/google/android/gms/internal/fg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/fg;-><init>(Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/bc;->a(Lcom/google/android/gms/common/api/internal/bf;)V

    return-void
.end method
