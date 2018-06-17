.class final Lcom/google/android/gms/internal/ek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/fq",
        "<",
        "Lcom/google/android/gms/internal/fc;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic aPM:Lcom/google/android/gms/internal/ej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ej;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ek;->aPM:Lcom/google/android/gms/internal/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final oq()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->aPM:Lcom/google/android/gms/internal/ej;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Lcom/google/android/gms/internal/ej;)V

    return-void
.end method

.method public final synthetic or()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->aPM:Lcom/google/android/gms/internal/ej;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->or()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fc;

    return-object v0
.end method
