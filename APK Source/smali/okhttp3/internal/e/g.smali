.class public final Lokhttp3/internal/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/e/g$b;,
        Lokhttp3/internal/e/g$d;,
        Lokhttp3/internal/e/g$a;,
        Lokhttp3/internal/e/g$c;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final daY:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final daZ:Lokhttp3/internal/e/g$b;

.field private final dba:Ljava/util/concurrent/ScheduledExecutorService;

.field final dbb:Lokhttp3/internal/e/l;

.field dbc:Z

.field public dbd:Lokhttp3/internal/e/m;

.field final dbe:Lokhttp3/internal/e/m;

.field public final dbf:Lokhttp3/internal/e/j;

.field public final dbg:Lokhttp3/internal/e/g$d;

.field final hostname:Ljava/lang/String;

.field lastGoodStreamId:I

.field nextStreamId:I

.field final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field receivedInitialPeerSettings:Z

.field shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/e/i;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lokhttp3/internal/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lokhttp3/internal/e/g;->$assertionsDisabled:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    invoke-static {v0, v8}, Lokhttp3/internal/c;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lokhttp3/internal/e/g;->daY:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lokhttp3/internal/e/g$a;)V
    .locals 12

    const/4 v11, 0x7

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/e/g;->unacknowledgedBytesRead:J

    new-instance v0, Lokhttp3/internal/e/m;

    invoke-direct {v0}, Lokhttp3/internal/e/m;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/e/g;->dbd:Lokhttp3/internal/e/m;

    new-instance v0, Lokhttp3/internal/e/m;

    invoke-direct {v0}, Lokhttp3/internal/e/m;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    iput-boolean v10, p0, Lokhttp3/internal/e/g;->receivedInitialPeerSettings:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/e/g;->currentPushRequests:Ljava/util/Set;

    iget-object v0, p1, Lokhttp3/internal/e/g$a;->dbb:Lokhttp3/internal/e/l;

    iput-object v0, p0, Lokhttp3/internal/e/g;->dbb:Lokhttp3/internal/e/l;

    iget-boolean v0, p1, Lokhttp3/internal/e/g$a;->client:Z

    iput-boolean v0, p0, Lokhttp3/internal/e/g;->client:Z

    iget-object v0, p1, Lokhttp3/internal/e/g$a;->daZ:Lokhttp3/internal/e/g$b;

    iput-object v0, p0, Lokhttp3/internal/e/g;->daZ:Lokhttp3/internal/e/g$b;

    iget-boolean v0, p1, Lokhttp3/internal/e/g$a;->client:Z

    if-eqz v0, :cond_3

    move v0, v9

    :goto_0
    iput v0, p0, Lokhttp3/internal/e/g;->nextStreamId:I

    iget-boolean v0, p1, Lokhttp3/internal/e/g$a;->client:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lokhttp3/internal/e/g;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/e/g;->nextStreamId:I

    :cond_0
    iget-boolean v0, p1, Lokhttp3/internal/e/g$a;->client:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/g;->dbd:Lokhttp3/internal/e/m;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v11, v1}, Lokhttp3/internal/e/m;->aV(II)Lokhttp3/internal/e/m;

    :cond_1
    iget-object v0, p1, Lokhttp3/internal/e/g$a;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v1, "OkHttp %s Writer"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Lokhttp3/internal/c;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lokhttp3/internal/c;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/internal/e/g;->dba:Ljava/util/concurrent/ScheduledExecutorService;

    iget v0, p1, Lokhttp3/internal/e/g$a;->dbk:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/e/g;->dba:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lokhttp3/internal/e/g$c;

    invoke-direct {v1, p0, v10, v10, v10}, Lokhttp3/internal/e/g$c;-><init>(Lokhttp3/internal/e/g;ZII)V

    iget v2, p1, Lokhttp3/internal/e/g$a;->dbk:I

    int-to-long v2, v2

    iget v4, p1, Lokhttp3/internal/e/g$a;->dbk:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v3, v2, v10

    invoke-static {v0, v2}, Lokhttp3/internal/c;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lokhttp3/internal/c;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, v10

    move v3, v9

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lokhttp3/internal/e/g;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    const v1, 0xffff

    invoke-virtual {v0, v11, v1}, Lokhttp3/internal/e/m;->aV(II)Lokhttp3/internal/e/m;

    iget-object v0, p0, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/e/m;->aV(II)Lokhttp3/internal/e/m;

    iget-object v0, p0, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    invoke-virtual {v0}, Lokhttp3/internal/e/m;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    iget-object v0, p1, Lokhttp3/internal/e/g$a;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lokhttp3/internal/e/g;->socket:Ljava/net/Socket;

    new-instance v0, Lokhttp3/internal/e/j;

    iget-object v1, p1, Lokhttp3/internal/e/g$a;->dae:Ld/d;

    iget-boolean v2, p0, Lokhttp3/internal/e/g;->client:Z

    invoke-direct {v0, v1, v2}, Lokhttp3/internal/e/j;-><init>(Ld/d;Z)V

    iput-object v0, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    new-instance v0, Lokhttp3/internal/e/g$d;

    new-instance v1, Lokhttp3/internal/e/h;

    iget-object v2, p1, Lokhttp3/internal/e/g$a;->dad:Ld/e;

    iget-boolean v3, p0, Lokhttp3/internal/e/g;->client:Z

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/e/h;-><init>(Ld/e;Z)V

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/e/g$d;-><init>(Lokhttp3/internal/e/g;Lokhttp3/internal/e/h;)V

    iput-object v0, p0, Lokhttp3/internal/e/g;->dbg:Lokhttp3/internal/e/g$d;

    return-void

    :cond_3
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method static synthetic MV()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lokhttp3/internal/e/g;->daY:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(Lokhttp3/internal/e/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/e/g;->shutdown:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lokhttp3/internal/e/g;->shutdown:Z

    iget v0, p0, Lokhttp3/internal/e/g;->lastGoodStreamId:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    sget-object v3, Lokhttp3/internal/c;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v0, p1, v3}, Lokhttp3/internal/e/j;->a(ILokhttp3/internal/e/b;[B)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static synthetic b(Lokhttp3/internal/e/g;)V
    .locals 0

    invoke-virtual {p0}, Lokhttp3/internal/e/g;->MU()V

    return-void
.end method

.method static synthetic c(Lokhttp3/internal/e/g;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/e/g;->dba:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/internal/e/g;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/e/g;->dbc:Z

    return v0
.end method

.method static pushedStream(I)Z
    .locals 1

    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final MU()V
    .locals 2

    :try_start_0
    sget-object v0, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;

    sget-object v1, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/e/g;->a(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final a(ILokhttp3/internal/e/b;)V
    .locals 7

    :try_start_0
    iget-object v6, p0, Lokhttp3/internal/e/g;->dba:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lokhttp3/internal/e/g$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/e/g$1;-><init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/e/b;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(IZLd/c;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v0, p2, p1, p3, v1}, Lokhttp3/internal/e/j;->a(ZILd/c;I)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-wide v2, p0, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    iget v2, v2, Lokhttp3/internal/e/j;->maxFrameSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v2

    sub-long/2addr p4, v4

    iget-object v3, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    if-eqz p2, :cond_4

    cmp-long v0, p4, v8

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0, p1, p3, v2}, Lokhttp3/internal/e/j;->a(ZILd/c;I)V

    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-wide v2, p0, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method final a(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-boolean v1, Lokhttp3/internal/e/g;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lokhttp3/internal/e/g;->a(Lokhttp3/internal/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v0

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v0, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/e/i;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/e/i;

    iget-object v2, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    move-object v3, v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    array-length v4, v3

    const/4 v2, 0x0

    move-object v0, v1

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    :try_start_2
    invoke-virtual {v1, p2}, Lokhttp3/internal/e/i;->b(Lokhttp3/internal/e/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_3

    :cond_2
    move-object v1, v0

    :cond_3
    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v0}, Lokhttp3/internal/e/j;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    :cond_4
    :goto_4
    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/e/g;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    iget-object v1, p0, Lokhttp3/internal/e/g;->dba:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iget-object v1, p0, Lokhttp3/internal/e/g;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-eqz v0, :cond_5

    throw v0

    :catch_1
    move-exception v0

    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_5
    return-void

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_6
    move-object v3, v0

    goto :goto_1
.end method

.method final b(ILokhttp3/internal/e/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/e/j;->c(ILokhttp3/internal/e/b;)V

    return-void
.end method

.method final c(Ljava/util/List;Z)Lokhttp3/internal/e/i;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;Z)",
            "Lokhttp3/internal/e/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_1

    move v3, v6

    :goto_0
    iget-object v8, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    monitor-enter v8

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lokhttp3/internal/e/g;->nextStreamId:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_0

    sget-object v0, Lokhttp3/internal/e/b;->das:Lokhttp3/internal/e/b;

    invoke-direct {p0, v0}, Lokhttp3/internal/e/g;->a(Lokhttp3/internal/e/b;)V

    :cond_0
    iget-boolean v0, p0, Lokhttp3/internal/e/g;->shutdown:Z

    if-eqz v0, :cond_2

    new-instance v0, Lokhttp3/internal/e/a;

    invoke-direct {v0}, Lokhttp3/internal/e/a;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    move v3, v7

    goto :goto_0

    :cond_2
    :try_start_3
    iget v1, p0, Lokhttp3/internal/e/g;->nextStreamId:I

    iget v0, p0, Lokhttp3/internal/e/g;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/e/g;->nextStreamId:I

    new-instance v0, Lokhttp3/internal/e/i;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/e/i;-><init>(ILokhttp3/internal/e/g;ZZLjava/util/List;)V

    if-eqz p2, :cond_3

    iget-wide v4, p0, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_3

    iget-wide v4, v0, Lokhttp3/internal/e/i;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_4

    :cond_3
    move v7, v6

    :cond_4
    invoke-virtual {v0}, Lokhttp3/internal/e/i;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v2, v3, v1, p1}, Lokhttp3/internal/e/j;->c(ZILjava/util/List;)V

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_6

    iget-object v1, p0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v1}, Lokhttp3/internal/e/j;->flush()V

    :cond_6
    return-object v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lokhttp3/internal/e/b;->dao:Lokhttp3/internal/e/b;

    sget-object v1, Lokhttp3/internal/e/b;->dat:Lokhttp3/internal/e/b;

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/e/g;->a(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V

    return-void
.end method

.method final declared-synchronized fS(I)Lokhttp3/internal/e/i;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/e/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized fT(I)Lokhttp3/internal/e/i;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/e/i;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isShutdown()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/e/g;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxConcurrentStreams()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    iget v1, v0, Lokhttp3/internal/e/m;->set:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v0, v0, Lokhttp3/internal/e/m;->values:[I

    const/4 v1, 0x4

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final writeWindowUpdateLater(IJ)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g;->dba:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lokhttp3/internal/e/g$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/e/g$2;-><init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
