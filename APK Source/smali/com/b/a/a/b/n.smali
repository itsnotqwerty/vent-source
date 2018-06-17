.class public final Lcom/b/a/a/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/b/n$b;,
        Lcom/b/a/a/b/n$a;
    }
.end annotation


# static fields
.field private static final bKY:Ljava/util/concurrent/ExecutorService;

.field static final synthetic brj:Z


# instance fields
.field final b:Z

.field private final bCI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/b/a/a/b/p;",
            ">;"
        }
    .end annotation
.end field

.field private bCM:J

.field public final bJR:Lcom/b/a/y;

.field private final bKZ:Lcom/b/a/m;

.field private bKk:I

.field private final bLa:Lcom/b/a/n;

.field private final bLb:Lcom/b/a/a/b/i;

.field private bLc:I

.field private final bLd:Ljava/util/concurrent/ExecutorService;

.field private bLe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/b/a/a/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private final bLf:Lcom/b/a/a/b/o;

.field public final bLg:Lcom/b/a/a/b/l;

.field final bLh:Lcom/b/a/a/b/l;

.field private bLi:Z

.field final bLj:Lcom/b/a/a/b/q;

.field final bLk:Ljava/net/Socket;

.field public final bLl:Lcom/b/a/a/b/c;

.field final bLm:Lcom/b/a/a/b/n$b;

.field c:J

.field d:J

.field private final q:Ljava/lang/String;

.field private t:Z

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/b/a/a/b/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lcom/b/a/a/b/n;->brj:Z

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkHttp SpdyConnection"

    invoke-static {v0, v8}, Lcom/b/a/a/i;->g(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/b/a/a/b/n;->bKY:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Lcom/b/a/a/b/n$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/b/a/a/b/n;->bCM:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/b/a/a/b/n;->c:J

    new-instance v0, Lcom/b/a/a/b/l;

    invoke-direct {v0}, Lcom/b/a/a/b/l;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLg:Lcom/b/a/a/b/l;

    new-instance v0, Lcom/b/a/a/b/l;

    invoke-direct {v0}, Lcom/b/a/a/b/l;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLh:Lcom/b/a/a/b/l;

    iput-boolean v2, p0, Lcom/b/a/a/b/n;->bLi:Z

    iget-object v0, p1, Lcom/b/a/a/b/n$a;->bJH:Lcom/b/a/m;

    iput-object v0, p0, Lcom/b/a/a/b/n;->bKZ:Lcom/b/a/m;

    iget-object v0, p1, Lcom/b/a/a/b/n$a;->bLs:Lcom/b/a/n;

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLa:Lcom/b/a/n;

    iget-object v0, p1, Lcom/b/a/a/b/n$a;->bLu:Lcom/b/a/y;

    iput-object v0, p0, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    iget-boolean v0, p1, Lcom/b/a/a/b/n$a;->h:Z

    iput-boolean v0, p0, Lcom/b/a/a/b/n;->b:Z

    iget-object v0, p1, Lcom/b/a/a/b/n$a;->bLt:Lcom/b/a/a/b/i;

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLb:Lcom/b/a/a/b/i;

    iget-boolean v0, p1, Lcom/b/a/a/b/n$a;->h:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/b/a/a/b/n;->bKk:I

    iget-boolean v0, p1, Lcom/b/a/a/b/n$a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    sget-object v4, Lcom/b/a/y;->bMl:Lcom/b/a/y;

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/b/a/a/b/n;->bKk:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/a/b/n;->bKk:I

    :cond_0
    iget-boolean v0, p1, Lcom/b/a/a/b/n$a;->h:Z

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lcom/b/a/a/b/n;->y:I

    iget-boolean v0, p1, Lcom/b/a/a/b/n$a;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLg:Lcom/b/a/a/b/l;

    const/4 v1, 0x7

    const/high16 v4, 0x1000000

    invoke-virtual {v0, v1, v2, v4}, Lcom/b/a/a/b/l;->m(III)Lcom/b/a/a/b/l;

    :cond_2
    iget-object v0, p1, Lcom/b/a/a/b/n$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/a/b/n;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    sget-object v1, Lcom/b/a/y;->bMl:Lcom/b/a/y;

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/b/a/a/b/g;

    invoke-direct {v0}, Lcom/b/a/a/b/g;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLj:Lcom/b/a/a/b/q;

    :goto_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x2710

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/b/a/a/b/n;->q:Ljava/lang/String;

    aput-object v9, v8, v2

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/b/a/a/i;->g(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/b/a/a/b/n;->bLd:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLh:Lcom/b/a/a/b/l;

    invoke-virtual {v0}, Lcom/b/a/a/b/l;->zS()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/b/a/a/b/n;->d:J

    iget-object v0, p1, Lcom/b/a/a/b/n$a;->bIi:Ljava/net/Socket;

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLk:Ljava/net/Socket;

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLj:Lcom/b/a/a/b/q;

    iget-object v1, p1, Lcom/b/a/a/b/n$a;->bIi:Ljava/net/Socket;

    new-instance v3, Lcom/b/a/a/b/n$1;

    invoke-direct {v3, p0}, Lcom/b/a/a/b/n$1;-><init>(Lcom/b/a/a/b/n;)V

    invoke-static {v1, v3}, Lb/m;->a(Ljava/net/Socket;Lb/k;)Lb/r;

    move-result-object v1

    invoke-static {v1}, Lb/m;->b(Lb/r;)Lb/d;

    move-result-object v1

    iget-boolean v3, p0, Lcom/b/a/a/b/n;->b:Z

    invoke-interface {v0, v1, v3}, Lcom/b/a/a/b/q;->a(Lb/d;Z)Lcom/b/a/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    iget-object v0, p1, Lcom/b/a/a/b/n$a;->bLv:Lcom/b/a/a/b/o;

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLf:Lcom/b/a/a/b/o;

    new-instance v0, Lcom/b/a/a/b/n$b;

    invoke-direct {v0, p0, v2}, Lcom/b/a/a/b/n$b;-><init>(Lcom/b/a/a/b/n;B)V

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLm:Lcom/b/a/a/b/n$b;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/b/a/a/b/n;->bLm:Lcom/b/a/a/b/n$b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    sget-object v1, Lcom/b/a/y;->bJL:Lcom/b/a/y;

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/b/a/a/b/m;

    invoke-direct {v0}, Lcom/b/a/a/b/m;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/n;->bLj:Lcom/b/a/a/b/q;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lcom/b/a/a/b/n$a;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/b/a/a/b/n;-><init>(Lcom/b/a/a/b/n$a;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b/n;)Lcom/b/a/n;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLa:Lcom/b/a/n;

    return-object v0
.end method

.method private a(Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/b/a/a/b/n;->brj:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Lcom/b/a/a/b/n;->t:Z

    if-eqz v0, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    :goto_0
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/b/a/a/b/p;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/b/p;

    iget-object v4, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/b/a/a/b/n;->a(Z)V

    move-object v5, v0

    :goto_1
    iget-object v0, p0, Lcom/b/a/a/b/n;->bLe:Ljava/util/Map;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/a/b/n;->bLe:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/b/a/a/b/k;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/b/k;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/b/a/a/b/n;->bLe:Ljava/util/Map;

    move-object v4, v0

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_4

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_3

    aget-object v1, v5, v2

    :try_start_5
    invoke-virtual {v1, p2}, Lcom/b/a/a/b/p;->a(Lcom/b/a/a/b/a;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/b/a/a/b/n;->t:Z

    iget v0, p0, Lcom/b/a/a/b/n;->bLc:I

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v4, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    sget-object v5, Lcom/b/a/a/i;->bIG:[B

    invoke-interface {v4, v0, p1, v5}, Lcom/b/a/a/b/c;->a(ILcom/b/a/a/b/a;[B)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :catch_1
    move-exception v1

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_3
    move-object v1, v0

    :cond_4
    if-eqz v4, :cond_7

    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_7

    aget-object v3, v4, v0

    iget-wide v6, v3, Lcom/b/a/a/b/k;->c:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_5

    iget-wide v6, v3, Lcom/b/a/a/b/k;->b:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_6
    iget-wide v6, v3, Lcom/b/a/a/b/k;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lcom/b/a/a/b/k;->c:J

    iget-object v3, v3, Lcom/b/a/a/b/k;->bss:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    :try_start_c
    iget-object v0, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v0}, Lcom/b/a/a/b/c;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-object v0, v1

    :cond_8
    :goto_6
    :try_start_d
    iget-object v1, p0, Lcom/b/a/a/b/n;->bLk:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :goto_7
    if-eqz v0, :cond_9

    throw v0

    :catch_2
    move-exception v0

    if-eqz v1, :cond_8

    move-object v0, v1

    goto :goto_6

    :cond_9
    return-void

    :catch_3
    move-exception v0

    goto :goto_7

    :cond_a
    move-object v4, v2

    goto :goto_2

    :cond_b
    move-object v5, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/b/a/a/b/n;II)V
    .locals 7

    sget-object v6, Lcom/b/a/a/b/n;->bKY:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/b/a/a/b/n$4;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/b/a/a/b/n;->q:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/n$4;-><init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b/n;ILjava/util/List;)V
    .locals 7

    iget-object v6, p0, Lcom/b/a/a/b/n;->bLd:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/b/a/a/b/n$5;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/b/a/a/b/n;->q:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/n$5;-><init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b/n;Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b/n;Lcom/b/a/a/b/p;Lcom/b/a/a/b/p;)V
    .locals 7

    iget-object v6, p0, Lcom/b/a/a/b/n;->bLd:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/b/a/a/b/n$6;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/b/a/a/b/n;->q:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget v4, p2, Lcom/b/a/a/b/p;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/n$6;-><init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/b/p;Lcom/b/a/a/b/p;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b/n;ZIILcom/b/a/a/b/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    monitor-enter v1

    if-eqz p4, :cond_1

    :try_start_0
    iget-wide v2, p4, Lcom/b/a/a/b/k;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p4, Lcom/b/a/a/b/k;->b:J

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/b/a/a/b/c;->a(ZII)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/b/a/a/b/n;->bCM:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/b/a/a/b/n;I)Z
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    sget-object v1, Lcom/b/a/y;->bMl:Lcom/b/a/y;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/b/a/a/b/n;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    if-lez p1, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/a/b/n;I)I
    .locals 0

    iput p1, p0, Lcom/b/a/a/b/n;->bLc:I

    return p1
.end method

.method static synthetic b(Lcom/b/a/a/b/n;)Lcom/b/a/m;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/n;->bKZ:Lcom/b/a/m;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/a/b/n;I)Lcom/b/a/a/b/k;
    .locals 1

    invoke-direct {p0, p1}, Lcom/b/a/a/b/n;->dT(I)Lcom/b/a/a/b/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/a/b/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/n;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/a/b/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/b/n;->t:Z

    return v0
.end method

.method private declared-synchronized dT(I)Lcom/b/a/a/b/k;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n;->bLe:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLe:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/k;
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

.method static synthetic e(Lcom/b/a/a/b/n;)I
    .locals 1

    iget v0, p0, Lcom/b/a/a/b/n;->bLc:I

    return v0
.end method

.method static synthetic f(Lcom/b/a/a/b/n;)I
    .locals 1

    iget v0, p0, Lcom/b/a/a/b/n;->bKk:I

    return v0
.end method

.method static synthetic g(Lcom/b/a/a/b/n;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/b/a/a/b/n;)Lcom/b/a/a/b/i;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLb:Lcom/b/a/a/b/i;

    return-object v0
.end method

.method static synthetic i(Lcom/b/a/a/b/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/b/n;->bLi:Z

    return v0
.end method

.method static synthetic j(Lcom/b/a/a/b/n;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/b/n;->bLi:Z

    return v0
.end method

.method static synthetic k(Lcom/b/a/a/b/n;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a/b/n;->t:Z

    return v0
.end method

.method static synthetic l(Lcom/b/a/a/b/n;)Lcom/b/a/a/b/o;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLf:Lcom/b/a/a/b/o;

    return-object v0
.end method

.method static synthetic zT()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/b/a/a/b/n;->bKY:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method final a(ILcom/b/a/a/b/a;)V
    .locals 7

    sget-object v6, Lcom/b/a/a/b/n;->bKY:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/b/a/a/b/n$2;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/b/a/a/b/n;->q:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/n$2;-><init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;ILcom/b/a/a/b/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(IZLb/c;J)V
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

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v0, p2, p1, p3, v1}, Lcom/b/a/a/b/c;->a(ZILb/c;I)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/b/a/a/b/n;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v2}, Lcom/b/a/a/b/c;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lcom/b/a/a/b/n;->d:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/b/a/a/b/n;->d:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v2

    sub-long/2addr p4, v4

    iget-object v3, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    if-eqz p2, :cond_4

    cmp-long v0, p4, v8

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v3, v0, p1, p3, v2}, Lcom/b/a/a/b/c;->a(ZILb/c;I)V

    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-wide v2, p0, Lcom/b/a/a/b/n;->d:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

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

.method public final b(Ljava/util/List;Z)Lcom/b/a/a/b/p;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;Z)",
            "Lcom/b/a/a/b/p;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    iget-object v6, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    monitor-enter v6

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/b/a/a/b/n;->t:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    iget v1, p0, Lcom/b/a/a/b/n;->bKk:I

    iget v0, p0, Lcom/b/a/a/b/n;->bKk:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/a/b/n;->bKk:I

    new-instance v0, Lcom/b/a/a/b/p;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/p;-><init>(ILcom/b/a/a/b/n;ZZLjava/util/List;)V

    invoke-virtual {v0}, Lcom/b/a/a/b/p;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/b/a/a/b/n;->a(Z)V

    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v2, v3, v1, p1}, Lcom/b/a/a/b/c;->a(ZILjava/util/List;)V

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v1}, Lcom/b/a/a/b/c;->b()V

    :cond_3
    return-object v0
.end method

.method final b(ILcom/b/a/a/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v0, p1, p2}, Lcom/b/a/a/b/c;->a(ILcom/b/a/a/b/a;)V

    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/b/a/a/b/n;->bCM:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/b/a/a/b/n;->bCM:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/b/a/a/b/a;->bJS:Lcom/b/a/a/b/a;

    sget-object v1, Lcom/b/a/a/b/a;->bKd:Lcom/b/a/a/b/a;

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V

    return-void
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/n;->bLl:Lcom/b/a/a/b/c;

    invoke-interface {v0}, Lcom/b/a/a/b/c;->b()V

    return-void
.end method

.method final declared-synchronized dR(I)Lcom/b/a/a/b/p;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized dS(I)Lcom/b/a/a/b/p;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/b/a/a/b/n;->bCI:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/b/a/a/b/n;->a(Z)V

    :cond_0
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

.method final g(IJ)V
    .locals 8

    sget-object v0, Lcom/b/a/a/b/n;->bKY:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/b/a/a/b/n$3;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/b/a/a/b/n;->q:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/b/a/a/b/n$3;-><init>(Lcom/b/a/a/b/n;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
