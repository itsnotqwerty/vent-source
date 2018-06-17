.class public final Lokhttp3/internal/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/b/g$a;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final cZd:Lokhttp3/h;

.field public final cZl:Lokhttp3/n;

.field public final cZz:Lokhttp3/a;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field public dab:Lokhttp3/aa;

.field public final daf:Lokhttp3/e;

.field public dag:Lokhttp3/internal/b/f$a;

.field public final dah:Lokhttp3/internal/b/f;

.field public dai:Lokhttp3/internal/b/c;

.field public daj:Lokhttp3/internal/c/c;

.field private refusedStreamCount:I

.field private released:Z

.field private reportedAcquired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/b/g;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lokhttp3/h;Lokhttp3/a;Lokhttp3/e;Lokhttp3/n;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    iput-object p2, p0, Lokhttp3/internal/b/g;->cZz:Lokhttp3/a;

    iput-object p3, p0, Lokhttp3/internal/b/g;->daf:Lokhttp3/e;

    iput-object p4, p0, Lokhttp3/internal/b/g;->cZl:Lokhttp3/n;

    new-instance v0, Lokhttp3/internal/b/f;

    invoke-direct {p0}, Lokhttp3/internal/b/g;->MQ()Lokhttp3/internal/b/d;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lokhttp3/internal/b/f;-><init>(Lokhttp3/a;Lokhttp3/internal/b/d;Lokhttp3/e;Lokhttp3/n;)V

    iput-object v0, p0, Lokhttp3/internal/b/g;->dah:Lokhttp3/internal/b/f;

    iput-object p5, p0, Lokhttp3/internal/b/g;->callStackTrace:Ljava/lang/Object;

    return-void
.end method

.method private MQ()Lokhttp3/internal/b/d;
    .locals 2

    sget-object v0, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    iget-object v1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    invoke-virtual {v0, v1}, Lokhttp3/internal/a;->a(Lokhttp3/h;)Lokhttp3/internal/b/d;

    move-result-object v0

    return-object v0
.end method

.method private a(IIIIZZ)Lokhttp3/internal/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/b/g;->d(IIIIZ)Lokhttp3/internal/b/c;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lokhttp3/internal/b/c;->successCount:I

    if-nez v2, :cond_1

    monitor-exit v1

    :cond_0
    return-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p6}, Lokhttp3/internal/b/c;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/b/g;->noNewStreams()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lokhttp3/internal/b/c;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p1, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p1, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

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

.method private d(IIIIZ)Lokhttp3/internal/b/c;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v5

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/b/g;->released:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/b/g;->daj:Lokhttp3/internal/c/c;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lokhttp3/internal/b/g;->canceled:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    sget-boolean v4, Lokhttp3/internal/b/g;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    iget-object v4, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v4, :cond_9

    iget-boolean v4, v4, Lokhttp3/internal/b/c;->noNewStreams:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v6, v7}, Lokhttp3/internal/b/g;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v6, :cond_4

    iget-object v1, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    const/4 v0, 0x0

    :cond_4
    iget-boolean v6, p0, Lokhttp3/internal/b/g;->reportedAcquired:Z

    if-nez v6, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-nez v1, :cond_6

    sget-object v6, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    iget-object v7, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    iget-object v8, p0, Lokhttp3/internal/b/g;->cZz:Lokhttp3/a;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, p0, v9}, Lokhttp3/internal/a;->a(Lokhttp3/h;Lokhttp3/a;Lokhttp3/internal/b/g;Lokhttp3/aa;)Lokhttp3/internal/b/c;

    iget-object v6, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v6, :cond_a

    const/4 v3, 0x1

    iget-object v1, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    :cond_6
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_7

    invoke-static {}, Lokhttp3/n;->Mo()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-static {}, Lokhttp3/n;->Mn()V

    :cond_8
    if-eqz v1, :cond_b

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_9
    const/4 v4, 0x0

    goto :goto_0

    :cond_a
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    if-nez v2, :cond_d

    iget-object v4, p0, Lokhttp3/internal/b/g;->dag:Lokhttp3/internal/b/f$a;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lokhttp3/internal/b/g;->dag:Lokhttp3/internal/b/f$a;

    invoke-virtual {v4}, Lokhttp3/internal/b/f$a;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_c
    const/4 v0, 0x1

    iget-object v4, p0, Lokhttp3/internal/b/g;->dah:Lokhttp3/internal/b/f;

    invoke-virtual {v4}, Lokhttp3/internal/b/f;->MO()Lokhttp3/internal/b/f$a;

    move-result-object v4

    iput-object v4, p0, Lokhttp3/internal/b/g;->dag:Lokhttp3/internal/b/f$a;

    :cond_d
    iget-object v5, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v5

    :try_start_3
    iget-boolean v4, p0, Lokhttp3/internal/b/g;->canceled:Z

    if-eqz v4, :cond_e

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

    :cond_e
    if-eqz v0, :cond_15

    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/b/g;->dag:Lokhttp3/internal/b/f$a;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, v0, Lokhttp3/internal/b/f$a;->routes:Ljava/util/List;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v0

    :goto_3
    if-ge v4, v7, :cond_15

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/aa;

    sget-object v8, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    iget-object v9, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    iget-object v10, p0, Lokhttp3/internal/b/g;->cZz:Lokhttp3/a;

    invoke-virtual {v8, v9, v10, p0, v0}, Lokhttp3/internal/a;->a(Lokhttp3/h;Lokhttp3/a;Lokhttp3/internal/b/g;Lokhttp3/aa;)Lokhttp3/internal/b/c;

    iget-object v8, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v8, :cond_f

    const/4 v3, 0x1

    iget-object v1, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iput-object v0, p0, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;

    move-object v0, v1

    :goto_4
    if-nez v3, :cond_11

    if-nez v2, :cond_14

    iget-object v0, p0, Lokhttp3/internal/b/g;->dag:Lokhttp3/internal/b/f$a;

    invoke-virtual {v0}, Lokhttp3/internal/b/f$a;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_10
    iget-object v1, v0, Lokhttp3/internal/b/f$a;->routes:Ljava/util/List;

    iget v2, v0, Lokhttp3/internal/b/f$a;->nextRouteIndex:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lokhttp3/internal/b/f$a;->nextRouteIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/aa;

    move-object v1, v0

    :goto_5
    iput-object v1, p0, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/b/g;->refusedStreamCount:I

    new-instance v0, Lokhttp3/internal/b/c;

    iget-object v2, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    invoke-direct {v0, v2, v1}, Lokhttp3/internal/b/c;-><init>(Lokhttp3/h;Lokhttp3/aa;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/b/g;->a(Lokhttp3/internal/b/c;Z)V

    :cond_11
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_12

    invoke-static {}, Lokhttp3/n;->Mn()V

    goto/16 :goto_2

    :cond_12
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/b/c;->c(IIIIZ)V

    invoke-direct {p0}, Lokhttp3/internal/b/g;->MQ()Lokhttp3/internal/b/d;

    move-result-object v1

    iget-object v2, v0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    invoke-virtual {v1, v2}, Lokhttp3/internal/b/d;->b(Lokhttp3/aa;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lokhttp3/internal/b/g;->reportedAcquired:Z

    sget-object v3, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    iget-object v4, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    invoke-virtual {v3, v4, v0}, Lokhttp3/internal/a;->b(Lokhttp3/h;Lokhttp3/internal/b/c;)V

    invoke-virtual {v0}, Lokhttp3/internal/b/c;->isMultiplexed()Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v0, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    iget-object v1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    iget-object v3, p0, Lokhttp3/internal/b/g;->cZz:Lokhttp3/a;

    invoke-virtual {v0, v1, v3, p0}, Lokhttp3/internal/a;->a(Lokhttp3/h;Lokhttp3/a;Lokhttp3/internal/b/g;)Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    :cond_13
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v1}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    invoke-static {}, Lokhttp3/n;->Mn()V

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_14
    move-object v1, v2

    goto :goto_5

    :cond_15
    move-object v0, v1

    goto :goto_4
.end method


# virtual methods
.method public final MP()Lokhttp3/internal/c/c;
    .locals 2

    iget-object v1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/b/g;->daj:Lokhttp3/internal/c/c;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized MR()Lokhttp3/internal/b/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lokhttp3/t;Lokhttp3/r$a;Z)Lokhttp3/internal/c/c;
    .locals 7

    invoke-interface {p2}, Lokhttp3/r$a;->connectTimeoutMillis()I

    move-result v1

    invoke-interface {p2}, Lokhttp3/r$a;->readTimeoutMillis()I

    move-result v2

    invoke-interface {p2}, Lokhttp3/r$a;->writeTimeoutMillis()I

    move-result v3

    iget v4, p1, Lokhttp3/t;->pingInterval:I

    iget-boolean v5, p1, Lokhttp3/t;->retryOnConnectionFailure:Z

    move-object v0, p0

    move v6, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/b/g;->a(IIIIZZ)Lokhttp3/internal/b/c;

    move-result-object v1

    iget-object v0, v1, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    if-eqz v0, :cond_0

    new-instance v0, Lokhttp3/internal/e/f;

    iget-object v1, v1, Lokhttp3/internal/b/c;->dac:Lokhttp3/internal/e/g;

    invoke-direct {v0, p1, p2, p0, v1}, Lokhttp3/internal/e/f;-><init>(Lokhttp3/t;Lokhttp3/r$a;Lokhttp3/internal/b/g;Lokhttp3/internal/e/g;)V

    :goto_0
    iget-object v1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lokhttp3/internal/b/g;->daj:Lokhttp3/internal/c/c;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_0
    :try_start_2
    iget-object v0, v1, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    invoke-interface {p2}, Lokhttp3/r$a;->readTimeoutMillis()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, v1, Lokhttp3/internal/b/c;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->MK()Ld/t;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/r$a;->readTimeoutMillis()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ld/t;->d(JLjava/util/concurrent/TimeUnit;)Ld/t;

    iget-object v0, v1, Lokhttp3/internal/b/c;->dae:Ld/d;

    invoke-interface {v0}, Ld/d;->MK()Ld/t;

    move-result-object v0

    invoke-interface {p2}, Lokhttp3/r$a;->writeTimeoutMillis()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ld/t;->d(JLjava/util/concurrent/TimeUnit;)Ld/t;

    new-instance v0, Lokhttp3/internal/d/a;

    iget-object v2, v1, Lokhttp3/internal/b/c;->dad:Ld/e;

    iget-object v1, v1, Lokhttp3/internal/b/c;->dae:Ld/d;

    invoke-direct {v0, p1, p0, v2, v1}, Lokhttp3/internal/d/a;-><init>(Lokhttp3/t;Lokhttp3/internal/b/g;Ld/e;Ld/d;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lokhttp3/internal/b/e;

    invoke-direct {v1, v0}, Lokhttp3/internal/b/e;-><init>(Ljava/io/IOException;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public final a(Lokhttp3/internal/b/c;Z)V
    .locals 3

    sget-boolean v0, Lokhttp3/internal/b/g;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iput-boolean p2, p0, Lokhttp3/internal/b/g;->reportedAcquired:Z

    iget-object v0, p1, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    new-instance v1, Lokhttp3/internal/b/g$a;

    iget-object v2, p0, Lokhttp3/internal/b/g;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/b/g$a;-><init>(Lokhttp3/internal/b/g;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(ZLokhttp3/internal/c/c;Ljava/io/IOException;)V
    .locals 4

    invoke-static {}, Lokhttp3/n;->Mw()V

    iget-object v1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/b/g;->daj:Lokhttp3/internal/c/c;

    if-eq p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lokhttp3/internal/b/g;->daj:Lokhttp3/internal/c/c;

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
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iget v2, v0, Lokhttp3/internal/b/c;->successCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/internal/b/c;->successCount:I

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lokhttp3/internal/b/g;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-boolean v3, p0, Lokhttp3/internal/b/g;->released:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_4

    invoke-static {}, Lokhttp3/n;->Mo()V

    :cond_4
    if-eqz p3, :cond_6

    invoke-static {}, Lokhttp3/n;->My()V

    :cond_5
    :goto_0
    return-void

    :cond_6
    if-eqz v3, :cond_5

    invoke-static {}, Lokhttp3/n;->Mx()V

    goto :goto_0
.end method

.method public final deallocate(ZZZ)Ljava/net/Socket;
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lokhttp3/internal/b/g;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    iput-object v1, p0, Lokhttp3/internal/b/g;->daj:Lokhttp3/internal/c/c;

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean v2, p0, Lokhttp3/internal/b/g;->released:Z

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iput-boolean v2, v0, Lokhttp3/internal/b/c;->noNewStreams:Z

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/b/g;->daj:Lokhttp3/internal/c/c;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lokhttp3/internal/b/g;->released:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iget-boolean v0, v0, Lokhttp3/internal/b/c;->noNewStreams:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    invoke-direct {p0, v0}, Lokhttp3/internal/b/g;->a(Lokhttp3/internal/b/c;)V

    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iget-object v0, v0, Lokhttp3/internal/b/c;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lokhttp3/internal/b/c;->idleAtNanos:J

    sget-object v0, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    iget-object v2, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    iget-object v3, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/a;->a(Lokhttp3/h;Lokhttp3/internal/b/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iget-object v0, v0, Lokhttp3/internal/b/c;->socket:Ljava/net/Socket;

    :goto_0
    iput-object v1, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    move-object v1, v0

    :cond_5
    return-object v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public final noNewStreams()V
    .locals 5

    iget-object v1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lokhttp3/internal/b/g;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lokhttp3/n;->Mo()V

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

    iget-object v1, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lokhttp3/internal/b/g;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_1

    invoke-static {}, Lokhttp3/n;->Mo()V

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

.method public final streamFailed(Ljava/io/IOException;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lokhttp3/internal/b/g;->cZd:Lokhttp3/h;

    monitor-enter v3

    :try_start_0
    instance-of v4, p1, Lokhttp3/internal/e/n;

    if-eqz v4, :cond_7

    check-cast p1, Lokhttp3/internal/e/n;

    iget-object v4, p1, Lokhttp3/internal/e/n;->dbz:Lokhttp3/internal/e/b;

    sget-object v5, Lokhttp3/internal/e/b;->das:Lokhttp3/internal/e/b;

    if-ne v4, v5, :cond_0

    iget v4, p0, Lokhttp3/internal/b/g;->refusedStreamCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lokhttp3/internal/b/g;->refusedStreamCount:I

    :cond_0
    iget-object v4, p1, Lokhttp3/internal/e/n;->dbz:Lokhttp3/internal/e/b;

    sget-object v5, Lokhttp3/internal/e/b;->das:Lokhttp3/internal/e/b;

    if-ne v4, v5, :cond_1

    iget v4, p0, Lokhttp3/internal/b/g;->refusedStreamCount:I

    if-le v4, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;

    move v0, v1

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v4, v5}, Lokhttp3/internal/b/g;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iget-object v4, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lokhttp3/internal/b/g;->reportedAcquired:Z

    if-nez v4, :cond_5

    :cond_4
    move-object v0, v2

    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lokhttp3/internal/c;->closeQuietly(Ljava/net/Socket;)V

    if-eqz v0, :cond_6

    invoke-static {}, Lokhttp3/n;->Mo()V

    :cond_6
    return-void

    :cond_7
    :try_start_1
    iget-object v4, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    invoke-virtual {v4}, Lokhttp3/internal/b/c;->isMultiplexed()Z

    move-result v4

    if-eqz v4, :cond_8

    instance-of v4, p1, Lokhttp3/internal/e/a;

    if-eqz v4, :cond_b

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/b/g;->dai:Lokhttp3/internal/b/c;

    iget v0, v0, Lokhttp3/internal/b/c;->successCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    iget-object v0, p0, Lokhttp3/internal/b/g;->dah:Lokhttp3/internal/b/f;

    iget-object v4, p0, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;

    iget-object v5, v4, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_9

    iget-object v5, v0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v5, v5, Lokhttp3/a;->proxySelector:Ljava/net/ProxySelector;

    if-eqz v5, :cond_9

    iget-object v5, v0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v5, v5, Lokhttp3/a;->proxySelector:Ljava/net/ProxySelector;

    iget-object v6, v0, Lokhttp3/internal/b/f;->cZz:Lokhttp3/a;

    iget-object v6, v6, Lokhttp3/a;->cVX:Lokhttp3/q;

    invoke-virtual {v6}, Lokhttp3/q;->uri()Ljava/net/URI;

    move-result-object v6

    iget-object v7, v4, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_9
    iget-object v0, v0, Lokhttp3/internal/b/f;->cYG:Lokhttp3/internal/b/d;

    invoke-virtual {v0, v4}, Lokhttp3/internal/b/d;->a(Lokhttp3/aa;)V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/b/g;->dab:Lokhttp3/aa;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lokhttp3/internal/b/g;->MR()Lokhttp3/internal/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/b/g;->cZz:Lokhttp3/a;

    invoke-virtual {v0}, Lokhttp3/a;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
