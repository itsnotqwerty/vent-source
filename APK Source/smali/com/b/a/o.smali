.class public final Lcom/b/a/o;
.super Ljava/lang/Object;


# static fields
.field private static final bIf:Lcom/b/a/o;


# instance fields
.field private final b:I

.field final bIn:Lcom/b/a/n;

.field private final bIo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/b/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private bIp:Ljava/util/concurrent/Executor;

.field private final bIq:Ljava/lang/Runnable;

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "http.keepAliveDuration"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http.maxConnections"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/b/a/o;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/b/a/o;-><init>(IJ)V

    sput-object v2, Lcom/b/a/o;->bIf:Lcom/b/a/o;

    :goto_1
    return-void

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    new-instance v2, Lcom/b/a/o;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lcom/b/a/o;-><init>(IJ)V

    sput-object v2, Lcom/b/a/o;->bIf:Lcom/b/a/o;

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/b/a/o;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0, v1}, Lcom/b/a/o;-><init>(IJ)V

    sput-object v2, Lcom/b/a/o;->bIf:Lcom/b/a/o;

    goto :goto_1
.end method

.method public constructor <init>(IJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/b/a/o;-><init>(IJLcom/b/a/n;)V

    return-void
.end method

.method public constructor <init>(IJLcom/b/a/n;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/b/a/a/i;->g(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/b/a/o;->bIp:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/b/a/o$1;

    invoke-direct {v0, p0}, Lcom/b/a/o$1;-><init>(Lcom/b/a/o;)V

    iput-object v0, p0, Lcom/b/a/o;->bIq:Ljava/lang/Runnable;

    iput p1, p0, Lcom/b/a/o;->b:I

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/b/a/o;->c:J

    iput-object p4, p0, Lcom/b/a/o;->bIn:Lcom/b/a/n;

    return-void
.end method

.method static synthetic a(Lcom/b/a/o;)V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/b/a/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private e()Z
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v2, p0, Lcom/b/a/o;->c:J

    iget-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/m;

    invoke-virtual {v0}, Lcom/b/a/m;->zs()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/b/a/o;->c:J

    add-long/2addr v10, v12

    sub-long/2addr v10, v6

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/b/a/m;->e()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-interface {v8}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/b/a/m;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    move v1, v4

    :goto_3
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/b/a/o;->b:I

    if-le v1, v0, :cond_4

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/m;

    invoke-virtual {v0}, Lcom/b/a/m;->h()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v0, v1, -0x1

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    const-wide/32 v0, 0xf4240

    :try_start_2
    div-long v0, v2, v0

    const-wide/32 v6, 0xf4240

    mul-long/2addr v6, v0

    sub-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/m;

    iget-object v0, v0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    move-wide v0, v2

    goto :goto_2
.end method

.method public static zt()Lcom/b/a/o;
    .locals 1

    sget-object v0, Lcom/b/a/o;->bIf:Lcom/b/a/o;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/b/a/a;)Lcom/b/a/m;
    .locals 8

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/m;

    iget-object v1, v0, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v1, v1, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    invoke-virtual {v1, p1}, Lcom/b/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/b/a/m;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/b/a/m;->zs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/b/a/o;->c:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    invoke-virtual {v0}, Lcom/b/a/m;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/b/a/a/g;->zw()Lcom/b/a/a/g;

    move-result-object v1

    iget-object v4, v0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v1, v4}, Lcom/b/a/a/g;->a(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lcom/b/a/m;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v0, v0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    invoke-static {}, Lcom/b/a/a/g;->zw()Lcom/b/a/a/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unable to tagSocket(): "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/g;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method final a(Lcom/b/a/m;)V
    .locals 2

    iget-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/o;->bIp:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/b/a/o;->bIq:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method

.method public final declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
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

.method public final d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/b/a/o;->bIo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/m;

    iget-object v0, v0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/net/Socket;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
