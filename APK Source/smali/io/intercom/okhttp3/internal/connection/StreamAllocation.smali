.class public final Lio/intercom/okhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lio/intercom/okhttp3/Address;

.field public final call:Lio/intercom/okhttp3/Call;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

.field private connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lio/intercom/okhttp3/ConnectionPool;

.field public final eventListener:Lio/intercom/okhttp3/EventListener;

.field private refusedStreamCount:I

.field private released:Z

.field private reportedAcquired:Z

.field private route:Lio/intercom/okhttp3/Route;

.field private routeSelection:Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lio/intercom/okhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->address:Lio/intercom/okhttp3/Address;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    iput-object p4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    new-instance v0, Lio/intercom/okhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeDatabase()Lio/intercom/okhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lio/intercom/okhttp3/internal/connection/RouteSelector;-><init>(Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/RouteDatabase;Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lio/intercom/okhttp3/internal/connection/RouteSelector;

    iput-object p5, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    iput-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->released:Z

    :cond_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iput-boolean v2, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    :cond_3
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget-boolean v0, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->release(Lio/intercom/okhttp3/internal/connection/RealConnection;)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sget-object v0, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-virtual {v0, v2, v3}, Lio/intercom/okhttp3/internal/Internal;->connectionBecameIdle(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/internal/connection/RealConnection;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-object v1, v0

    :cond_5
    return-object v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private findConnection(IIIZ)Lio/intercom/okhttp3/internal/connection/RealConnection;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v4

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->released:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->releaseIfNoNewStreams()Ljava/net/Socket;

    move-result-object v5

    iget-object v6, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v6, :cond_3

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    const/4 v0, 0x0

    :cond_3
    iget-boolean v6, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v6, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-nez v1, :cond_5

    sget-object v6, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    iget-object v7, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iget-object v8, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->address:Lio/intercom/okhttp3/Address;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, p0, v9}, Lio/intercom/okhttp3/internal/Internal;->get(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/Route;)Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget-object v6, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v6, :cond_8

    const/4 v3, 0x1

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    :cond_5
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v5}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_6

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v5, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v4, v5, v0}, Lio/intercom/okhttp3/EventListener;->connectionReleased(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v0, v4, v1}, Lio/intercom/okhttp3/EventListener;->connectionAcquired(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V

    :cond_7
    if-eqz v1, :cond_9

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_8
    :try_start_2
    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->route:Lio/intercom/okhttp3/Route;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    if-nez v2, :cond_b

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelection:Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelection:Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v4}, Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    const/4 v0, 0x1

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lio/intercom/okhttp3/internal/connection/RouteSelector;

    invoke-virtual {v4}, Lio/intercom/okhttp3/internal/connection/RouteSelector;->next()Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v4

    iput-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelection:Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

    :cond_b
    iget-object v5, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v5

    :try_start_3
    iget-boolean v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v4, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_c
    if-eqz v0, :cond_12

    :try_start_4
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelection:Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v6

    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v0

    :goto_2
    if-ge v4, v7, :cond_12

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/Route;

    sget-object v8, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    iget-object v9, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iget-object v10, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->address:Lio/intercom/okhttp3/Address;

    invoke-virtual {v8, v9, v10, p0, v0}, Lio/intercom/okhttp3/internal/Internal;->get(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/Route;)Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget-object v8, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v8, :cond_e

    const/4 v3, 0x1

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->route:Lio/intercom/okhttp3/Route;

    move-object v0, v1

    :goto_3
    if-nez v3, :cond_d

    if-nez v2, :cond_11

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelection:Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;->next()Lio/intercom/okhttp3/Route;

    move-result-object v0

    move-object v1, v0

    :goto_4
    iput-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->route:Lio/intercom/okhttp3/Route;

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    new-instance v0, Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    invoke-direct {v0, v2, v1}, Lio/intercom/okhttp3/internal/connection/RealConnection;-><init>(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Route;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->acquire(Lio/intercom/okhttp3/internal/connection/RealConnection;Z)V

    :cond_d
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_f

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lio/intercom/okhttp3/EventListener;->connectionAcquired(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V

    goto :goto_1

    :cond_e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_f
    iget-object v5, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    iget-object v6, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/intercom/okhttp3/internal/connection/RealConnection;->connect(IIIZLio/intercom/okhttp3/Call;Lio/intercom/okhttp3/EventListener;)V

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeDatabase()Lio/intercom/okhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->route()Lio/intercom/okhttp3/Route;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/okhttp3/internal/connection/RouteDatabase;->connected(Lio/intercom/okhttp3/Route;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    sget-object v3, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    invoke-virtual {v3, v4, v0}, Lio/intercom/okhttp3/internal/Internal;->put(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/internal/connection/RealConnection;)V

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v0, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->address:Lio/intercom/okhttp3/Address;

    invoke-virtual {v0, v1, v3, p0}, Lio/intercom/okhttp3/internal/Internal;->deduplicate(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    :cond_10
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lio/intercom/okhttp3/EventListener;->connectionAcquired(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_11
    move-object v1, v2

    goto :goto_4

    :cond_12
    move-object v0, v1

    goto :goto_3
.end method

.method private findHealthyConnection(IIIZZ)Lio/intercom/okhttp3/internal/connection/RealConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_1

    monitor-exit v1

    :cond_0
    return-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p5}, Lio/intercom/okhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private release(Lio/intercom/okhttp3/internal/connection/RealConnection;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p1, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p1, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private releaseIfNoNewStreams()Ljava/net/Socket;
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v1, v1, v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private routeDatabase()Lio/intercom/okhttp3/internal/connection/RouteDatabase;
    .locals 2

    sget-object v0, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/Internal;->routeDatabase(Lio/intercom/okhttp3/ConnectionPool;)Lio/intercom/okhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final acquire(Lio/intercom/okhttp3/internal/connection/RealConnection;Z)V
    .locals 3

    sget-boolean v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iput-boolean p2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    iget-object v0, p1, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Lio/intercom/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lio/intercom/okhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lio/intercom/okhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final cancel()V
    .locals 3

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->canceled:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/intercom/okhttp3/internal/http/HttpCodec;->cancel()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/intercom/okhttp3/internal/connection/RealConnection;->cancel()V

    goto :goto_0
.end method

.method public final codec()Lio/intercom/okhttp3/internal/http/HttpCodec;
    .locals 2

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized connection()Lio/intercom/okhttp3/internal/connection/RealConnection;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hasMoreRoutes()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->route:Lio/intercom/okhttp3/Route;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelection:Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelection:Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lio/intercom/okhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newStream(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Interceptor$Chain;Z)Lio/intercom/okhttp3/internal/http/HttpCodec;
    .locals 6

    invoke-interface {p2}, Lio/intercom/okhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v1

    invoke-interface {p2}, Lio/intercom/okhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v2

    invoke-interface {p2}, Lio/intercom/okhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    invoke-virtual {p1}, Lio/intercom/okhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v4

    move-object v0, p0

    move v5, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->newCodec(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Interceptor$Chain;Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Lio/intercom/okhttp3/internal/http/HttpCodec;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lio/intercom/okhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lio/intercom/okhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public final noNewStreams()V
    .locals 5

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lio/intercom/okhttp3/EventListener;->connectionReleased(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final release()V
    .locals 5

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lio/intercom/okhttp3/EventListener;->connectionReleased(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final releaseAndAcquire(Lio/intercom/okhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-direct {p0, v2, v1, v1}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget-object v2, p1, Lio/intercom/okhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final streamFailed(Ljava/io/IOException;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v3

    :try_start_0
    instance-of v4, p1, Lio/intercom/okhttp3/internal/http2/StreamResetException;

    if-eqz v4, :cond_7

    check-cast p1, Lio/intercom/okhttp3/internal/http2/StreamResetException;

    iget-object v4, p1, Lio/intercom/okhttp3/internal/http2/StreamResetException;->errorCode:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    sget-object v5, Lio/intercom/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    if-ne v4, v5, :cond_0

    iget v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    :cond_0
    iget-object v4, p1, Lio/intercom/okhttp3/internal/http2/StreamResetException;->errorCode:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    sget-object v5, Lio/intercom/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    if-ne v4, v5, :cond_1

    iget v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le v4, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->route:Lio/intercom/okhttp3/Route;

    move v0, v1

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v4, v5}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v4, :cond_5

    :cond_4
    move-object v0, v2

    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_6

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lio/intercom/okhttp3/EventListener;->connectionReleased(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V

    :cond_6
    return-void

    :cond_7
    :try_start_1
    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    invoke-virtual {v4}, Lio/intercom/okhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, p1, Lio/intercom/okhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v4, :cond_a

    :cond_8
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget v0, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->route:Lio/intercom/okhttp3/Route;

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->routeSelector:Lio/intercom/okhttp3/internal/connection/RouteSelector;

    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->route:Lio/intercom/okhttp3/Route;

    invoke-virtual {v0, v4, p1}, Lio/intercom/okhttp3/internal/connection/RouteSelector;->connectFailed(Lio/intercom/okhttp3/Route;Ljava/io/IOException;)V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->route:Lio/intercom/okhttp3/Route;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    move v1, v0

    goto :goto_0
.end method

.method public final streamFinished(ZLio/intercom/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V
    .locals 5

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v0, v1, p3, p4}, Lio/intercom/okhttp3/EventListener;->responseBodyEnd(Lio/intercom/okhttp3/Call;J)V

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connectionPool:Lio/intercom/okhttp3/ConnectionPool;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    if-eq p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec:Lio/intercom/okhttp3/internal/http/HttpCodec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iget v2, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->successCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lio/intercom/okhttp3/internal/connection/RealConnection;->successCount:I

    :cond_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection:Lio/intercom/okhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-boolean v3, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->released:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v2, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lio/intercom/okhttp3/EventListener;->connectionReleased(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V

    :cond_4
    if-eqz p5, :cond_6

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v0, v1, p5}, Lio/intercom/okhttp3/EventListener;->callFailed(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    if-eqz v3, :cond_5

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->eventListener:Lio/intercom/okhttp3/EventListener;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->call:Lio/intercom/okhttp3/Call;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/EventListener;->callEnd(Lio/intercom/okhttp3/Call;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection()Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->address:Lio/intercom/okhttp3/Address;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
