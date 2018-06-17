.class final Lokhttp3/internal/e/g$d;
.super Lokhttp3/internal/b;

# interfaces
.implements Lokhttp3/internal/e/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic dbi:Lokhttp3/internal/e/g;

.field final dbp:Lokhttp3/internal/e/h;


# direct methods
.method constructor <init>(Lokhttp3/internal/e/g;Lokhttp3/internal/e/h;)V
    .locals 4

    iput-object p1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp3/internal/e/g$d;->dbp:Lokhttp3/internal/e/h;

    return-void
.end method


# virtual methods
.method public final a(ILd/f;)V
    .locals 5

    invoke-virtual {p2}, Ld/f;->size()I

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v2, v2, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/e/i;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/e/i;

    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/e/g;->shutdown:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lokhttp3/internal/e/i;->id:I

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Lokhttp3/internal/e/i;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lokhttp3/internal/e/b;->das:Lokhttp3/internal/e/b;

    invoke-virtual {v3, v4}, Lokhttp3/internal/e/i;->e(Lokhttp3/internal/e/b;)V

    iget-object v4, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget v3, v3, Lokhttp3/internal/e/i;->id:I

    invoke-virtual {v4, v3}, Lokhttp3/internal/e/g;->fT(I)Lokhttp3/internal/e/i;

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

.method public final a(Lokhttp3/internal/e/m;)V
    .locals 13

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    monitor-enter v7

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v2, v2, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    invoke-virtual {v2}, Lokhttp3/internal/e/m;->getInitialWindowSize()I

    move-result v3

    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v6, v2, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    move v2, v1

    :goto_0
    const/16 v8, 0xa

    if-ge v2, v8, :cond_1

    invoke-virtual {p1, v2}, Lokhttp3/internal/e/m;->isSet(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p1, Lokhttp3/internal/e/m;->values:[I

    aget v8, v8, v2

    invoke-virtual {v6, v2, v8}, Lokhttp3/internal/e/m;->aV(II)Lokhttp3/internal/e/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-static {v2}, Lokhttp3/internal/e/g;->c(Lokhttp3/internal/e/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v6, Lokhttp3/internal/e/g$d$3;

    const-string v8, "OkHttp %s ACK Settings"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v11, v11, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-direct {v6, p0, v8, v9, p1}, Lokhttp3/internal/e/g$d$3;-><init>(Lokhttp3/internal/e/g$d;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/e/m;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v2, v2, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    invoke-virtual {v2}, Lokhttp3/internal/e/m;->getInitialWindowSize()I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_6

    if-eq v2, v3, :cond_6

    sub-int/2addr v2, v3

    int-to-long v2, v2

    iget-object v6, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-boolean v6, v6, Lokhttp3/internal/e/g;->receivedInitialPeerSettings:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-wide v8, v6, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    add-long/2addr v8, v2

    iput-wide v8, v6, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    cmp-long v8, v2, v4

    if-lez v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    iget-object v6, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lokhttp3/internal/e/g;->receivedInitialPeerSettings:Z

    :cond_3
    iget-object v6, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v6, v6, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v6, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v6, v6, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Lokhttp3/internal/e/i;

    invoke-interface {v0, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/e/i;

    move-object v6, v0

    :goto_2
    invoke-static {}, Lokhttp3/internal/e/g;->MV()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v8, Lokhttp3/internal/e/g$d$2;

    const-string v9, "OkHttp %s settings"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v12, v12, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-direct {v8, p0, v9, v10}, Lokhttp3/internal/e/g$d$2;-><init>(Lokhttp3/internal/e/g$d;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    array-length v4, v6

    move v0, v1

    :goto_3
    if-ge v0, v4, :cond_4

    aget-object v1, v6, v0

    monitor-enter v1

    :try_start_3
    invoke-virtual {v1, v2, v3}, Lokhttp3/internal/e/i;->addBytesToWriteWindow(J)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_4
    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_5
    move-object v6, v0

    goto :goto_2

    :cond_6
    move-wide v2, v4

    move-object v6, v0

    goto :goto_2
.end method

.method public final a(ZILd/e;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lokhttp3/internal/e/g;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    new-instance v5, Ld/c;

    invoke-direct {v5}, Ld/c;-><init>()V

    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Ld/e;->Z(J)V

    int-to-long v2, p4

    invoke-interface {p3, v5, v2, v3}, Ld/e;->a(Ld/c;J)J

    iget-wide v2, v5, Ld/c;->size:J

    int-to-long v6, p4

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v5, Ld/c;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v8, v1, Lokhttp3/internal/e/g;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/e/g$5;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, v1, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    move v4, p2

    move v6, p4

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/e/g$5;-><init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;ILd/c;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v0, p2}, Lokhttp3/internal/e/g;->fS(I)Lokhttp3/internal/e/i;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    sget-object v1, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;

    invoke-virtual {v0, p2, v1}, Lokhttp3/internal/e/g;->a(ILokhttp3/internal/e/b;)V

    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Ld/e;->ah(J)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lokhttp3/internal/e/i;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iget-object v1, v0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    int-to-long v2, p4

    invoke-virtual {v1, p3, v2, v3}, Lokhttp3/internal/e/i$b;->a(Ld/e;J)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->receiveFin()V

    goto :goto_0
.end method

.method public final b(ZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p2}, Lokhttp3/internal/e/g;->pushedStream(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    :try_start_0
    iget-object v7, v1, Lokhttp3/internal/e/g;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/e/g$4;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, p2

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/e/g$4;-><init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    monitor-enter v6

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v1, p2}, Lokhttp3/internal/e/g;->fS(I)Lokhttp3/internal/e/i;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-boolean v0, v0, Lokhttp3/internal/e/g;->shutdown:Z

    if-eqz v0, :cond_2

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget v0, v0, Lokhttp3/internal/e/g;->lastGoodStreamId:I

    if-gt p2, v0, :cond_3

    monitor-exit v6

    goto :goto_0

    :cond_3
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget v1, v1, Lokhttp3/internal/e/g;->nextStreamId:I

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_4

    monitor-exit v6

    goto :goto_0

    :cond_4
    new-instance v0, Lokhttp3/internal/e/i;

    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    const/4 v3, 0x0

    move v1, p2

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/e/i;-><init>(ILokhttp3/internal/e/g;ZZLjava/util/List;)V

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iput p2, v1, Lokhttp3/internal/e/g;->lastGoodStreamId:I

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v1, v1, Lokhttp3/internal/e/g;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lokhttp3/internal/e/g;->MV()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lokhttp3/internal/e/g$d$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v7, v7, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lokhttp3/internal/e/g$d$1;-><init>(Lokhttp3/internal/e/g$d;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/e/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v6

    goto :goto_0

    :cond_5
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v2, Lokhttp3/internal/e/i;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    monitor-enter v1

    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, v1, Lokhttp3/internal/e/i;->hasResponseHeaders:Z

    iget-object v2, v1, Lokhttp3/internal/e/i;->responseHeaders:Ljava/util/List;

    if-nez v2, :cond_8

    iput-object p3, v1, Lokhttp3/internal/e/i;->responseHeaders:Ljava/util/List;

    invoke-virtual {v1}, Lokhttp3/internal/e/i;->isOpen()Z

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_7

    iget-object v0, v1, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget v2, v1, Lokhttp3/internal/e/i;->id:I

    invoke-virtual {v0, v2}, Lokhttp3/internal/e/g;->fT(I)Lokhttp3/internal/e/i;

    :cond_7
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lokhttp3/internal/e/i;->receiveFin()V

    goto/16 :goto_0

    :cond_8
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lokhttp3/internal/e/i;->responseHeaders:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v1, Lokhttp3/internal/e/i;->responseHeaders:Ljava/util/List;

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public final c(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/e/g;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/e/g;->a(ILokhttp3/internal/e/b;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, v1, Lokhttp3/internal/e/g;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, v1, Lokhttp3/internal/e/g;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/e/g$3;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/e/g$3;-><init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final c(ILokhttp3/internal/e/b;)V
    .locals 7

    invoke-static {p1}, Lokhttp3/internal/e/g;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-object v6, v1, Lokhttp3/internal/e/g;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/e/g$6;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lokhttp3/internal/e/g;->hostname:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/e/g$6;-><init>(Lokhttp3/internal/e/g;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/e/b;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v0, p1}, Lokhttp3/internal/e/g;->fT(I)Lokhttp3/internal/e/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lokhttp3/internal/e/i;->e(Lokhttp3/internal/e/b;)V

    goto :goto_0
.end method

.method protected final execute()V
    .locals 8

    sget-object v0, Lokhttp3/internal/e/b;->daq:Lokhttp3/internal/e/b;

    sget-object v3, Lokhttp3/internal/e/b;->daq:Lokhttp3/internal/e/b;

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbp:Lokhttp3/internal/e/h;

    iget-boolean v2, v1, Lokhttp3/internal/e/h;->client:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lokhttp3/internal/e/h;->a(ZLokhttp3/internal/e/h$b;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Required SETTINGS preface not received"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v2, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v1, v2, v0}, Lokhttp3/internal/e/g;->a(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbp:Lokhttp3/internal/e/h;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_0
    :try_start_4
    iget-object v1, v1, Lokhttp3/internal/e/h;->dad:Ld/e;

    sget-object v2, Lokhttp3/internal/e/e;->daL:Ld/f;

    invoke-virtual {v2}, Ld/f;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-interface {v1, v4, v5}, Ld/e;->az(J)Ld/f;

    move-result-object v1

    sget-object v2, Lokhttp3/internal/e/h;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lokhttp3/internal/e/h;->logger:Ljava/util/logging/Logger;

    const-string v4, "<< CONNECTION %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ld/f;->KJ()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lokhttp3/internal/c;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lokhttp3/internal/e/e;->daL:Ld/f;

    invoke-virtual {v2, v1}, Ld/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Expected a connection header but was %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ld/f;->KE()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/e/g;->a(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbp:Lokhttp3/internal/e/h;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_2
    :try_start_6
    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbp:Lokhttp3/internal/e/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lokhttp3/internal/e/h;->a(ZLokhttp3/internal/e/h$b;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lokhttp3/internal/e/b;->dao:Lokhttp3/internal/e/b;

    sget-object v1, Lokhttp3/internal/e/b;->dat:Lokhttp3/internal/e/b;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/e/g;->a(Lokhttp3/internal/e/b;Lokhttp3/internal/e/b;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_4
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbp:Lokhttp3/internal/e/h;

    invoke-static {v0}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public final ping(ZII)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-static {v0}, Lokhttp3/internal/e/g;->d(Lokhttp3/internal/e/g;)Z

    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-static {v0}, Lokhttp3/internal/e/g;->c(Lokhttp3/internal/e/g;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/e/g$c;

    iget-object v2, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Lokhttp3/internal/e/g$c;-><init>(Lokhttp3/internal/e/g;ZII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final windowUpdate(IJ)V
    .locals 4

    if-nez p1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    iget-wide v2, v0, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lokhttp3/internal/e/g;->bytesLeftInWriteWindow:J

    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

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
    iget-object v0, p0, Lokhttp3/internal/e/g$d;->dbi:Lokhttp3/internal/e/g;

    invoke-virtual {v0, p1}, Lokhttp3/internal/e/g;->fS(I)Lokhttp3/internal/e/i;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p2, p3}, Lokhttp3/internal/e/i;->addBytesToWriteWindow(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
