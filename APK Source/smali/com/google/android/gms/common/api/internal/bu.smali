.class final Lcom/google/android/gms/common/api/internal/bu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aGl:Lcom/google/android/gms/common/api/i;

.field private synthetic aGm:Lcom/google/android/gms/common/api/internal/bt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bt;Lcom/google/android/gms/common/api/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bu;->aGl:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->aDh:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bt;->aGe:Lcom/google/android/gms/common/api/l;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/l;->ng()Lcom/google/android/gms/common/api/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/bt;->aGj:Lcom/google/android/gms/common/api/internal/bv;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/bt;->aGj:Lcom/google/android/gms/common/api/internal/bv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/bv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/bv;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->aDh:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bt;->aDk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/internal/bt;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/bt;->aGj:Lcom/google/android/gms/common/api/internal/bv;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/bt;->aGj:Lcom/google/android/gms/common/api/internal/bv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/bv;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/bv;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->aDh:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bt;->aDk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/internal/bt;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->aDh:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bt;->aDk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bu;->aGm:Lcom/google/android/gms/common/api/internal/bt;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/internal/bt;)V

    :cond_1
    throw v1
.end method
