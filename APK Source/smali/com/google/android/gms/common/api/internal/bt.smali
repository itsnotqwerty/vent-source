.class public final Lcom/google/android/gms/common/api/internal/bt;
.super Lcom/google/android/gms/common/api/m;

# interfaces
.implements Lcom/google/android/gms/common/api/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/i;",
        ">",
        "Lcom/google/android/gms/common/api/m",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/j",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final aDi:Ljava/lang/Object;

.field final aDk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/f;",
            ">;"
        }
    .end annotation
.end field

.field aGe:Lcom/google/android/gms/common/api/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/l",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/i;",
            ">;"
        }
    .end annotation
.end field

.field aGf:Lcom/google/android/gms/common/api/internal/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/bt",
            "<+",
            "Lcom/google/android/gms/common/api/i;",
            ">;"
        }
    .end annotation
.end field

.field volatile aGg:Lcom/google/android/gms/common/api/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/k",
            "<-TR;>;"
        }
    .end annotation
.end field

.field aGh:Lcom/google/android/gms/common/api/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/g",
            "<TR;>;"
        }
    .end annotation
.end field

.field aGi:Lcom/google/android/gms/common/api/Status;

.field final aGj:Lcom/google/android/gms/common/api/internal/bv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/bv;"
        }
    .end annotation
.end field

.field aGk:Z


# direct methods
.method private final nQ()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->aDk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bt;->aGg:Lcom/google/android/gms/common/api/k;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bt;->aDi:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/common/api/i;->nf()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->mQ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->aGe:Lcom/google/android/gms/common/api/l;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/api/internal/bk;->ny()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/internal/bu;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/api/internal/bu;-><init>(Lcom/google/android/gms/common/api/internal/bt;Lcom/google/android/gms/common/api/i;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/bt;->nQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->aGg:Lcom/google/android/gms/common/api/k;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/common/api/i;->nf()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/bt;->e(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final e(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bt;->aDi:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->aGi:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->aGi:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/bt;->f(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final f(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bt;->aDi:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->aGe:Lcom/google/android/gms/common/api/l;

    if-eqz v0, :cond_1

    const-string v0, "onFailure must not return null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->aGf:Lcom/google/android/gms/common/api/internal/bt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/bt;->e(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/bt;->nQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->aGg:Lcom/google/android/gms/common/api/k;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
