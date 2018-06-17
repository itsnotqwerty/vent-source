.class public final Lcom/google/android/gms/common/api/internal/bz;
.super Lcom/google/android/gms/common/api/internal/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/x",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private aGs:Lcom/google/android/gms/common/api/internal/be;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/be",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/be;Lcom/google/android/gms/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/be",
            "<*>;",
            "Lcom/google/android/gms/c/f",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/x;-><init>(Lcom/google/android/gms/c/f;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bz;->aGs:Lcom/google/android/gms/common/api/internal/be;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/internal/e;Z)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/aj;)V
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
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/aj;->aFp:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bz;->aGs:Lcom/google/android/gms/common/api/internal/be;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bj;->aFZ:Lcom/google/android/gms/common/api/internal/bi;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bi;->aFY:Lcom/google/android/gms/common/api/internal/bc;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/bc;->aFQ:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bz;->aEw:Lcom/google/android/gms/c/f;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/c/f;->bdU:Lcom/google/android/gms/c/r;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/r;->X(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final bridge synthetic b(Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/x;->b(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/x;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
