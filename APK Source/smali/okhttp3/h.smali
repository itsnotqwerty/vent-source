.class public final Lokhttp3/h;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field final cYG:Lokhttp3/internal/b/d;

.field final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field public final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field final maxIdleConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lokhttp3/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lokhttp3/h;->$assertionsDisabled:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    invoke-static {v0, v8}, Lokhttp3/internal/c;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/h;->executor:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lokhttp3/h;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 4

    const-wide/16 v2, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/h$1;

    invoke-direct {v0, p0}, Lokhttp3/h$1;-><init>(Lokhttp3/h;)V

    iput-object v0, p0, Lokhttp3/h;->cleanupRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/h;->connections:Ljava/util/Deque;

    new-instance v0, Lokhttp3/internal/b/d;

    invoke-direct {v0}, Lokhttp3/internal/b/d;-><init>()V

    iput-object v0, p0, Lokhttp3/h;->cYG:Lokhttp3/internal/b/d;

    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/h;->maxIdleConnections:I

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/h;->keepAliveDurationNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keepAliveDuration <= 0: 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method final cleanup(J)J
    .locals 13

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/h;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v7

    move v9, v7

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/b/c;

    iget-object v3, v0, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    move v2, v7

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    check-cast v1, Lokhttp3/internal/b/g$a;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "A connection to "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v12, v12, Lokhttp3/aa;->cZz:Lokhttp3/a;

    iget-object v12, v12, Lokhttp3/a;->cVX:Lokhttp3/q;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v12

    iget-object v1, v1, Lokhttp3/internal/b/g$a;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v12, v11, v1}, Lokhttp3/internal/g/f;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/b/c;->noNewStreams:Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lokhttp3/h;->keepAliveDurationNs:J

    sub-long v2, p1, v2

    iput-wide v2, v0, Lokhttp3/internal/b/c;->idleAtNanos:J

    move v1, v7

    :goto_2
    if-lez v1, :cond_3

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v8, 0x1

    iget-wide v2, v0, Lokhttp3/internal/b/c;->idleAtNanos:J

    sub-long v2, p1, v2

    cmp-long v8, v2, v4

    if-lez v8, :cond_9

    :goto_3
    move-wide v4, v2

    move-object v6, v0

    move v8, v1

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lokhttp3/h;->keepAliveDurationNs:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_5

    iget v0, p0, Lokhttp3/h;->maxIdleConnections:I

    if-le v8, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lokhttp3/h;->connections:Ljava/util/Deque;

    invoke-interface {v0, v6}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v6, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_6
    if-lez v8, :cond_7

    :try_start_1
    iget-wide v0, p0, Lokhttp3/h;->keepAliveDurationNs:J

    sub-long/2addr v0, v4

    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    if-lez v9, :cond_8

    :try_start_2
    iget-wide v0, p0, Lokhttp3/h;->keepAliveDurationNs:J

    monitor-exit p0

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/h;->cleanupRunning:Z

    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_9
    move-wide v2, v4

    move-object v0, v6

    goto :goto_3
.end method
