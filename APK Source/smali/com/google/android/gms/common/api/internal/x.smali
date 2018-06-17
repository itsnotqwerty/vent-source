.class abstract Lcom/google/android/gms/common/api/internal/x;
.super Lcom/google/android/gms/common/api/internal/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/api/internal/a;"
    }
.end annotation


# instance fields
.field protected final aEw:Lcom/google/android/gms/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/f",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/f",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/a;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/x;->aEw:Lcom/google/android/gms/c/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/aj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/aj",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/x;->b(Lcom/google/android/gms/common/api/internal/aj;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/a;->c(Lcom/google/android/gms/common/api/Status;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/a;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/x;->b(Ljava/lang/RuntimeException;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 0

    return-void
.end method

.method protected abstract b(Lcom/google/android/gms/common/api/internal/aj;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/aj",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public b(Ljava/lang/RuntimeException;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->aEw:Lcom/google/android/gms/c/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/c/f;->f(Ljava/lang/Exception;)Z

    return-void
.end method

.method public c(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x;->aEw:Lcom/google/android/gms/c/f;

    new-instance v1, Lcom/google/android/gms/common/api/b;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/f;->f(Ljava/lang/Exception;)Z

    return-void
.end method
