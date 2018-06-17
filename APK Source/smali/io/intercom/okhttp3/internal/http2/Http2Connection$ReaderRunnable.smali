.class Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lio/intercom/okhttp3/internal/NamedRunnable;

# interfaces
.implements Lio/intercom/okhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lio/intercom/okhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Lio/intercom/okhttp3/internal/http2/Http2Reader;)V
    .locals 4

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lio/intercom/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lio/intercom/okhttp3/internal/http2/Http2Reader;

    return-void
.end method

.method private applyAndAckSettings(Lio/intercom/okhttp3/internal/http2/Settings;)V
    .locals 6

    sget-object v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lio/intercom/okhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public alternateService(ILjava/lang/String;Lio/intercom/b/f;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public data(ZILio/intercom/b/e;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushDataLater(ILio/intercom/b/e;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->getStream(I)Lio/intercom/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V

    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lio/intercom/b/e;->ah(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3, p4}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->receiveData(Lio/intercom/b/e;I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    goto :goto_0
.end method

.method protected execute()V
    .locals 4

    sget-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    sget-object v3, Lio/intercom/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    :try_start_0
    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lio/intercom/okhttp3/internal/http2/Http2Reader;

    invoke-virtual {v1, p0}, Lio/intercom/okhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lio/intercom/okhttp3/internal/http2/Http2Reader$Handler;)V

    :cond_0
    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lio/intercom/okhttp3/internal/http2/Http2Reader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lio/intercom/okhttp3/internal/http2/Http2Reader;->nextFrame(ZLio/intercom/okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->CANCEL:Lio/intercom/okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v0, v1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->close(Lio/intercom/okhttp3/internal/http2/ErrorCode;Lio/intercom/okhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lio/intercom/okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lio/intercom/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, v2, v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->close(Lio/intercom/okhttp3/internal/http2/ErrorCode;Lio/intercom/okhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lio/intercom/okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_5
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v2, v3}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->close(Lio/intercom/okhttp3/internal/http2/ErrorCode;Lio/intercom/okhttp3/internal/http2/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lio/intercom/okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public goAway(ILio/intercom/okhttp3/internal/http2/ErrorCode;Lio/intercom/b/f;)V
    .locals 5

    invoke-virtual {p3}, Lio/intercom/b/f;->size()I

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/okhttp3/internal/http2/Http2Stream;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lio/intercom/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v3, v4}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lio/intercom/okhttp3/internal/http2/Http2Stream;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p4, p1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->getStream(I)Lio/intercom/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-boolean v0, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v0, :cond_2

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget v0, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v0, :cond_3

    monitor-exit v6

    goto :goto_0

    :cond_3
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget v1, v1, Lio/intercom/okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4

    monitor-exit v6

    goto :goto_0

    :cond_4
    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Stream;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/http2/Http2Stream;-><init>(ILio/intercom/okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iput p2, v1, Lio/intercom/okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/intercom/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v7, v7, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lio/intercom/okhttp3/internal/http2/Http2Stream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v6

    goto :goto_0

    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0, p4}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->receiveFin()V

    goto :goto_0
.end method

.method public ping(ZII)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->removePing(I)Lio/intercom/okhttp3/internal/http2/Ping;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http2/Ping;->receive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writePingLater(ZIILio/intercom/okhttp3/internal/http2/Ping;)V

    goto :goto_0
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->pushResetLater(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->removeStream(I)Lio/intercom/okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V

    goto :goto_0
.end method

.method public settings(ZLio/intercom/okhttp3/internal/http2/Settings;)V
    .locals 13

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lio/intercom/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    if-eqz p1, :cond_0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v4}, Lio/intercom/okhttp3/internal/http2/Settings;->clear()V

    :cond_0
    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v4, p2}, Lio/intercom/okhttp3/internal/http2/Settings;->merge(Lio/intercom/okhttp3/internal/http2/Settings;)V

    invoke-direct {p0, p2}, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lio/intercom/okhttp3/internal/http2/Settings;)V

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lio/intercom/okhttp3/internal/http2/Http2Connection;->peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v4}, Lio/intercom/okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    if-eq v4, v2, :cond_4

    sub-int v2, v4, v2

    int-to-long v4, v2

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-boolean v2, v2, Lio/intercom/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v4, v5}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->addBytesToWriteWindow(J)V

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    const/4 v8, 0x1

    iput-boolean v8, v2, Lio/intercom/okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    :cond_1
    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lio/intercom/okhttp3/internal/http2/Http2Stream;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/okhttp3/internal/http2/Http2Stream;

    move-object v2, v0

    :goto_0
    sget-object v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v12, v12, Lio/intercom/okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-direct {v8, p0, v9, v10}, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v1, v2, v0

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, v4, v5}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    return-void

    :cond_3
    move-object v2, v0

    goto :goto_0

    :cond_4
    move-object v2, v0

    move-wide v4, v6

    goto :goto_0
.end method

.method public windowUpdate(IJ)V
    .locals 4

    if-nez p1, :cond_1

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-wide v2, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->getStream(I)Lio/intercom/okhttp3/internal/http2/Http2Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p2, p3}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
