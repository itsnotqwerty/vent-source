.class public final Lcom/google/android/gms/c/r;
.super Lcom/google/android/gms/c/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/c/e",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final bei:Lcom/google/android/gms/c/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/c/p",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private bej:Z

.field private bek:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private bel:Ljava/lang/Exception;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/c/e;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/c/p;

    invoke-direct {v0}, Lcom/google/android/gms/c/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    return-void
.end method

.method private final uj()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/c/r;->bej:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final uk()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/c/r;->bej:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/p;->c(Lcom/google/android/gms/c/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final N(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/c/r;->uj()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/r;->bej:Z

    iput-object p1, p0, Lcom/google/android/gms/c/r;->bek:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/p;->c(Lcom/google/android/gms/c/e;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final X(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/c/r;->bej:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/c/r;->bej:Z

    iput-object p1, p0, Lcom/google/android/gms/c/r;->bek:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/c/p;->c(Lcom/google/android/gms/c/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/a",
            "<TTResult;>;)",
            "Lcom/google/android/gms/c/e",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    new-instance v1, Lcom/google/android/gms/c/i;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/c/i;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/p;->a(Lcom/google/android/gms/c/o;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/r;->uk()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/b;",
            ")",
            "Lcom/google/android/gms/c/e",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    new-instance v1, Lcom/google/android/gms/c/k;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/c/k;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/p;->a(Lcom/google/android/gms/c/o;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/r;->uk()V

    return-object p0
.end method

.method public final a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/c;)Lcom/google/android/gms/c/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/c/c",
            "<-TTResult;>;)",
            "Lcom/google/android/gms/c/e",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    new-instance v1, Lcom/google/android/gms/c/m;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/c/m;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/c/p;->a(Lcom/google/android/gms/c/o;)V

    invoke-direct {p0}, Lcom/google/android/gms/c/r;->uk()V

    return-object p0
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/c/r;->uj()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/c/r;->bej:Z

    iput-object p1, p0, Lcom/google/android/gms/c/r;->bel:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/c/p;->c(Lcom/google/android/gms/c/e;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final f(Ljava/lang/Exception;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "Exception must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/c/r;->bej:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/c/r;->bej:Z

    iput-object p1, p0, Lcom/google/android/gms/c/r;->bel:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/c/r;->bei:Lcom/google/android/gms/c/p;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/c/p;->c(Lcom/google/android/gms/c/e;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/r;->bel:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/c/r;->bej:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/c/r;->bel:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/c/d;

    iget-object v2, p0, Lcom/google/android/gms/c/r;->bel:Ljava/lang/Exception;

    invoke-direct {v0, v2}, Lcom/google/android/gms/c/d;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/c/r;->bek:Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public final isComplete()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/c/r;->bej:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isSuccessful()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/c/r;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/c/r;->bej:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/r;->bel:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
