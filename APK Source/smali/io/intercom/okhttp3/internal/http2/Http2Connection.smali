.class public final Lio/intercom/okhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;,
        Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field static final executor:Ljava/util/concurrent/ExecutorService;


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

.field final hostname:Ljava/lang/String;

.field lastGoodStreamId:I

.field final listener:Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

.field private nextPingId:I

.field nextStreamId:I

.field okHttpSettings:Lio/intercom/okhttp3/internal/http2/Settings;

.field final peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/intercom/okhttp3/internal/http2/Ping;",
            ">;"
        }
    .end annotation
.end field

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field final pushObserver:Lio/intercom/okhttp3/internal/http2/PushObserver;

.field final readerRunnable:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field receivedInitialPeerSettings:Z

.field shutdown:Z

.field final socket:Ljava/net/Socket;

.field final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/intercom/okhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp Http2Connection"

    invoke-static {v0, v8}, Lio/intercom/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/intercom/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method constructor <init>(Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lio/intercom/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lio/intercom/okhttp3/internal/http2/Settings;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    iput-boolean v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    iget-object v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lio/intercom/okhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushObserver:Lio/intercom/okhttp3/internal/http2/PushObserver;

    iget-boolean v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->client:Z

    iget-object v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->listener:Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

    iget-boolean v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    iget-boolean v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    :cond_0
    iget-boolean v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    iget-boolean v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v1}, Lio/intercom/okhttp3/internal/http2/Settings;->set(II)Lio/intercom/okhttp3/internal/http2/Settings;

    :cond_2
    iget-object v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, Lio/intercom/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lio/intercom/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    const v1, 0xffff

    invoke-virtual {v0, v10, v1}, Lio/intercom/okhttp3/internal/http2/Settings;->set(II)Lio/intercom/okhttp3/internal/http2/Settings;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lio/intercom/okhttp3/internal/http2/Settings;->set(II)Lio/intercom/okhttp3/internal/http2/Settings;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    iget-object v0, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Writer;

    iget-object v1, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lio/intercom/b/d;

    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v0, v1, v2}, Lio/intercom/okhttp3/internal/http2/Http2Writer;-><init>(Lio/intercom/b/d;Z)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v1, Lio/intercom/okhttp3/internal/http2/Http2Reader;

    iget-object v2, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->source:Lio/intercom/b/e;

    iget-boolean v3, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->client:Z

    invoke-direct {v1, v2, v3}, Lio/intercom/okhttp3/internal/http2/Http2Reader;-><init>(Lio/intercom/b/e;Z)V

    invoke-direct {v0, p0, v1}, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Lio/intercom/okhttp3/internal/http2/Http2Reader;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private newStream(ILjava/util/List;Z)Lio/intercom/okhttp3/internal/http2/Http2Stream;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lio/intercom/okhttp3/internal/http2/Http2Stream;"
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

    if-nez p3, :cond_0

    move v3, v6

    :goto_0
    iget-object v8, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    monitor-enter v8

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v0, :cond_1

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lio/intercom/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

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

    :cond_0
    move v3, v7

    goto :goto_0

    :cond_1
    :try_start_3
    iget v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    iget v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Stream;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/http2/Http2Stream;-><init>(ILio/intercom/okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    if-eqz p3, :cond_2

    iget-wide v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_2

    iget-wide v4, v0, Lio/intercom/okhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_3

    :cond_2
    move v7, v6

    :cond_3
    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_6

    :try_start_4
    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, v3, v1, p1, p2}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->synStream(ZIILjava/util/List;)V

    :goto_1
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_5

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v1}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->flush()V

    :cond_5
    return-object v0

    :cond_6
    :try_start_5
    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->client:Z

    if-eqz v2, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2, p1, v1, p2}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method final addBytesToWriteWindow(J)V
    .locals 3

    iget-wide v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->CANCEL:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->close(Lio/intercom/okhttp3/internal/http2/ErrorCode;Lio/intercom/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method final close(Lio/intercom/okhttp3/internal/http2/ErrorCode;Lio/intercom/okhttp3/internal/http2/ErrorCode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/okhttp3/internal/http2/Http2Stream;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object v5, v0

    :goto_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lio/intercom/okhttp3/internal/http2/Ping;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/okhttp3/internal/http2/Ping;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    move-object v4, v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    :try_start_2
    invoke-virtual {v1, p2}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->close(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v1

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_2
    move-object v1, v0

    :cond_3
    if-eqz v4, :cond_4

    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/http2/Ping;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    :try_start_4
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    :cond_5
    :goto_6
    :try_start_5
    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_7
    if-eqz v0, :cond_6

    throw v0

    :catch_2
    move-exception v0

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_6

    :cond_6
    return-void

    :catch_3
    move-exception v0

    goto :goto_7

    :cond_7
    move-object v4, v2

    goto :goto_2

    :cond_8
    move-object v5, v2

    goto :goto_1
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method public final getProtocol()Lio/intercom/okhttp3/Protocol;
    .locals 1

    sget-object v0, Lio/intercom/okhttp3/Protocol;->HTTP_2:Lio/intercom/okhttp3/Protocol;

    return-object v0
.end method

.method final declared-synchronized getStream(I)Lio/intercom/okhttp3/internal/http2/Http2Stream;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/internal/http2/Http2Stream;
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
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown:Z
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
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final newStream(Ljava/util/List;Z)Lio/intercom/okhttp3/internal/http2/Http2Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lio/intercom/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lio/intercom/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized openStreamCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ping()Lio/intercom/okhttp3/internal/http2/Ping;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Ping;

    invoke-direct {v0}, Lio/intercom/okhttp3/internal/http2/Ping;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_0

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lio/intercom/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    iget v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextPingId:I

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    :cond_1
    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-virtual {p0, v2, v1, v3, v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writePing(ZIILio/intercom/okhttp3/internal/http2/Ping;)V

    return-object v0
.end method

.method final pushDataLater(ILio/intercom/b/e;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Lio/intercom/b/c;

    invoke-direct {v5}, Lio/intercom/b/c;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lio/intercom/b/e;->Z(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lio/intercom/b/e;->read(Lio/intercom/b/c;J)J

    iget-wide v0, v5, Lio/intercom/b/c;->size:J

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v5, Lio/intercom/b/c;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v8, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lio/intercom/okhttp3/internal/http2/Http2Connection$6;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILio/intercom/b/c;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    iget-object v7, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lio/intercom/okhttp3/internal/http2/Http2Connection$5;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final pushRequestLater(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/http2/Http2Connection$4;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final pushResetLater(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V
    .locals 7

    iget-object v6, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/http2/Http2Connection$7;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILio/intercom/okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final pushStream(ILjava/util/List;Z)Lio/intercom/okhttp3/internal/http2/Http2Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;Z)",
            "Lio/intercom/okhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->client:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lio/intercom/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method final pushedStream(I)Z
    .locals 1

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final declared-synchronized removePing(I)Lio/intercom/okhttp3/internal/http2/Ping;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/internal/http2/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized removeStream(I)Lio/intercom/okhttp3/internal/http2/Http2Stream;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/internal/http2/Http2Stream;

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

.method public final setSettings(Lio/intercom/okhttp3/internal/http2/Settings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v0, :cond_0

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {v0}, Lio/intercom/okhttp3/internal/http2/ConnectionShutdownException;-><init>()V

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

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/internal/http2/Settings;->merge(Lio/intercom/okhttp3/internal/http2/Settings;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->settings(Lio/intercom/okhttp3/internal/http2/Settings;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void
.end method

.method public final shutdown(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown:Z

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
    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    iget v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    sget-object v3, Lio/intercom/okhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v2, v0, p1, v3}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->goAway(ILio/intercom/okhttp3/internal/http2/ErrorCode;[B)V

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

.method public final start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method

.method final start(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v3, 0xffff

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->connectionPreface()V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->settings(Lio/intercom/okhttp3/internal/http2/Settings;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->okHttpSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->readerRunnable:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final writeData(IZLio/intercom/b/c;J)V
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

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3, v1}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->data(ZILio/intercom/b/c;I)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-wide v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v2}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v2

    sub-long/2addr p4, v4

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_4

    cmp-long v0, p4, v8

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0, p1, p3, v2}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->data(ZILio/intercom/b/c;I)V

    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-wide v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

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

.method final writePing(ZIILio/intercom/okhttp3/internal/http2/Ping;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    monitor-enter v1

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lio/intercom/okhttp3/internal/http2/Ping;->send()V

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->ping(ZII)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final writePingLater(ZIILio/intercom/okhttp3/internal/http2/Ping;)V
    .locals 9

    sget-object v8, Lio/intercom/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILio/intercom/okhttp3/internal/http2/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final writeSynReply(IZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p2, p1, p3}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method final writeSynReset(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->rstStream(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method final writeSynResetLater(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V
    .locals 7

    sget-object v6, Lio/intercom/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/http2/Http2Connection$1;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILio/intercom/okhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final writeWindowUpdateLater(IJ)V
    .locals 8

    sget-object v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/intercom/okhttp3/internal/http2/Http2Connection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lio/intercom/okhttp3/internal/http2/Http2Connection$2;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
