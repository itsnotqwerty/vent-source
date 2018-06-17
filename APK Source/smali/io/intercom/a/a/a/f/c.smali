.class public final Lio/intercom/a/a/a/f/c;
.super Ljava/lang/Object;


# instance fields
.field public final cPC:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Lio/intercom/a/a/a/i/g;",
            "Lio/intercom/a/a/a/c/b/s",
            "<***>;>;"
        }
    .end annotation
.end field

.field private final cPD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/intercom/a/a/a/i/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/f/c;->cPC:Landroid/support/v4/g/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/f/c;->cPD:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private e(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/i/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/intercom/a/a/a/i/g;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/f/c;->cPD:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/i/g;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/a/a/a/i/g;

    invoke-direct {v0}, Lio/intercom/a/a/a/i/g;-><init>()V

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/a/a/a/i/g;->f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/intercom/a/a/a/f/c;->e(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/i/g;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/f/c;->cPC:Landroid/support/v4/g/a;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lio/intercom/a/a/a/f/c;->cPC:Landroid/support/v4/g/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lio/intercom/a/a/a/f/c;->cPD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lio/intercom/a/a/a/c/b/s",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lio/intercom/a/a/a/f/c;->e(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lio/intercom/a/a/a/i/g;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/a/a/f/c;->cPC:Landroid/support/v4/g/a;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/f/c;->cPC:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/s;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lio/intercom/a/a/a/f/c;->cPD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
