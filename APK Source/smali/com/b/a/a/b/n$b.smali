.class final Lcom/b/a/a/b/n$b;
.super Lcom/b/a/a/d;

# interfaces
.implements Lcom/b/a/a/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field bLw:Lcom/b/a/a/b/b;

.field final synthetic bLx:Lcom/b/a/a/b/n;


# direct methods
.method private constructor <init>(Lcom/b/a/a/b/n;)V
    .locals 4

    iput-object p1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/b/a/a/b/n;->c(Lcom/b/a/a/b/n;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/b/n;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/a/b/n$b;-><init>(Lcom/b/a/a/b/n;)V

    return-void
.end method


# virtual methods
.method public final a(ILb/f;)V
    .locals 5

    iget-object v0, p2, Lb/f;->bMw:[B

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0}, Lcom/b/a/a/b/n;->g(Lcom/b/a/a/b/n;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v2}, Lcom/b/a/a/b/n;->g(Lcom/b/a/a/b/n;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/b/a/a/b/p;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/b/p;

    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v2}, Lcom/b/a/a/b/n;->k(Lcom/b/a/a/b/n;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    iget v4, v3, Lcom/b/a/a/b/p;->f:I

    if-le v4, p1, :cond_0

    invoke-virtual {v3}, Lcom/b/a/a/b/p;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/b/a/a/b/a;->bKc:Lcom/b/a/a/b/a;

    invoke-virtual {v3, v4}, Lcom/b/a/a/b/p;->d(Lcom/b/a/a/b/a;)V

    iget-object v4, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget v3, v3, Lcom/b/a/a/b/p;->f:I

    invoke-virtual {v4, v3}, Lcom/b/a/a/b/n;->dS(I)Lcom/b/a/a/b/p;

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

.method public final a(ILcom/b/a/a/b/a;)V
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-virtual {v0, p1}, Lcom/b/a/a/b/n;->dS(I)Lcom/b/a/a/b/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/b/a/a/b/p;->d(Lcom/b/a/a/b/a;)V

    :cond_0
    return-void
.end method

.method public final a(ZII)V
    .locals 6

    const-wide/16 v4, -0x1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0, p2}, Lcom/b/a/a/b/n;->c(Lcom/b/a/a/b/n;I)Lcom/b/a/a/b/k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/b/a/a/b/k;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/b/a/a/b/k;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/b/a/a/b/k;->c:J

    iget-object v0, v0, Lcom/b/a/a/b/k;->bss:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0, p2, p3}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;II)V

    goto :goto_0
.end method

.method public final a(ZILb/e;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-virtual {v0, p2}, Lcom/b/a/a/b/n;->dR(I)Lcom/b/a/a/b/p;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    sget-object v1, Lcom/b/a/a/b/a;->bJU:Lcom/b/a/a/b/a;

    invoke-virtual {v0, p2, v1}, Lcom/b/a/a/b/n;->a(ILcom/b/a/a/b/a;)V

    int-to-long v0, p4

    invoke-interface {p3, v0, v1}, Lb/e;->at(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/b/a/a/b/p;->e:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget-object v1, v0, Lcom/b/a/a/b/p;->bLC:Lcom/b/a/a/b/p$b;

    int-to-long v2, p4

    invoke-virtual {v1, p3, v2, v3}, Lcom/b/a/a/b/p$b;->a(Lb/e;J)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/b/a/a/b/p;->i()V

    goto :goto_0
.end method

.method public final a(ZLcom/b/a/a/b/l;)V
    .locals 12

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-object v2, v2, Lcom/b/a/a/b/n;->bLh:Lcom/b/a/a/b/l;

    invoke-virtual {v2}, Lcom/b/a/a/b/l;->zS()I

    move-result v4

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-object v2, v2, Lcom/b/a/a/b/n;->bLh:Lcom/b/a/a/b/l;

    const/4 v5, 0x0

    iput v5, v2, Lcom/b/a/a/b/l;->c:I

    iput v5, v2, Lcom/b/a/a/b/l;->b:I

    iput v5, v2, Lcom/b/a/a/b/l;->a:I

    iget-object v2, v2, Lcom/b/a/a/b/l;->brd:[I

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-object v5, v2, Lcom/b/a/a/b/n;->bLh:Lcom/b/a/a/b/l;

    move v2, v1

    :goto_0
    const/16 v8, 0xa

    if-ge v2, v8, :cond_2

    invoke-virtual {p2, v2}, Lcom/b/a/a/b/l;->a(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p2, v2}, Lcom/b/a/a/b/l;->dQ(I)I

    move-result v8

    iget-object v9, p2, Lcom/b/a/a/b/l;->brd:[I

    aget v9, v9, v2

    invoke-virtual {v5, v2, v8, v9}, Lcom/b/a/a/b/l;->m(III)Lcom/b/a/a/b/l;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-object v2, v2, Lcom/b/a/a/b/n;->bJR:Lcom/b/a/y;

    sget-object v5, Lcom/b/a/y;->bMl:Lcom/b/a/y;

    if-ne v2, v5, :cond_3

    invoke-static {}, Lcom/b/a/a/b/n;->zT()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v5, Lcom/b/a/a/b/n$b$3;

    const-string v8, "OkHttp %s ACK Settings"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v11}, Lcom/b/a/a/b/n;->c(Lcom/b/a/a/b/n;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v5, p0, v8, v9, p2}, Lcom/b/a/a/b/n$b$3;-><init>(Lcom/b/a/a/b/n$b;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/b/l;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-object v2, v2, Lcom/b/a/a/b/n;->bLh:Lcom/b/a/a/b/l;

    invoke-virtual {v2}, Lcom/b/a/a/b/l;->zS()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_8

    if-eq v2, v4, :cond_8

    sub-int/2addr v2, v4

    int-to-long v4, v2

    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v2}, Lcom/b/a/a/b/n;->i(Lcom/b/a/a/b/n;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-wide v8, v2, Lcom/b/a/a/b/n;->d:J

    add-long/2addr v8, v4

    iput-wide v8, v2, Lcom/b/a/a/b/n;->d:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    :cond_4
    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v2}, Lcom/b/a/a/b/n;->j(Lcom/b/a/a/b/n;)Z

    :cond_5
    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v2}, Lcom/b/a/a/b/n;->g(Lcom/b/a/a/b/n;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0}, Lcom/b/a/a/b/n;->g(Lcom/b/a/a/b/n;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v2}, Lcom/b/a/a/b/n;->g(Lcom/b/a/a/b/n;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/b/a/a/b/p;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/b/p;

    move-object v2, v0

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_6

    aget-object v1, v2, v0

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, v4, v5}, Lcom/b/a/a/b/p;->a(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

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

    :cond_6
    return-void

    :cond_7
    move-object v2, v0

    goto :goto_1

    :cond_8
    move-object v2, v0

    move-wide v4, v6

    goto :goto_1
.end method

.method public final a(ZZIILjava/util/List;Lcom/b/a/a/b/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;",
            "Lcom/b/a/a/b/e;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v7, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    monitor-enter v7

    :try_start_0
    iget-object v3, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v3}, Lcom/b/a/a/b/n;->d(Lcom/b/a/a/b/n;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v7

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-virtual {v3, p3}, Lcom/b/a/a/b/n;->dR(I)Lcom/b/a/a/b/p;

    move-result-object v4

    iget-object v3, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v3, p3}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;I)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-virtual {v3, p4}, Lcom/b/a/a/b/n;->dR(I)Lcom/b/a/a/b/p;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    sget-object v1, Lcom/b/a/a/b/a;->bJU:Lcom/b/a/a/b/a;

    invoke-virtual {v0, p3, v1}, Lcom/b/a/a/b/n;->a(ILcom/b/a/a/b/a;)V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v6, v3

    :goto_1
    if-nez v4, :cond_9

    :try_start_1
    sget-object v1, Lcom/b/a/a/b/e;->bKz:Lcom/b/a/a/b/e;

    if-eq p6, v1, :cond_3

    sget-object v1, Lcom/b/a/a/b/e;->bKA:Lcom/b/a/a/b/e;

    if-ne p6, v1, :cond_4

    :cond_3
    move v2, v0

    :cond_4
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    sget-object v1, Lcom/b/a/a/b/a;->bJU:Lcom/b/a/a/b/a;

    invoke-virtual {v0, p3, v1}, Lcom/b/a/a/b/n;->a(ILcom/b/a/a/b/a;)V

    monitor-exit v7

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0}, Lcom/b/a/a/b/n;->e(Lcom/b/a/a/b/n;)I

    move-result v0

    if-gt p3, v0, :cond_6

    monitor-exit v7

    goto :goto_0

    :cond_6
    rem-int/lit8 v0, p3, 0x2

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v1}, Lcom/b/a/a/b/n;->f(Lcom/b/a/a/b/n;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_7

    monitor-exit v7

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/b/a/a/b/p;

    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/p;-><init>(ILcom/b/a/a/b/n;ZZLjava/util/List;)V

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v1, p3}, Lcom/b/a/a/b/n;->b(Lcom/b/a/a/b/n;I)I

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v1}, Lcom/b/a/a/b/n;->g(Lcom/b/a/a/b/n;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v1, p3}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v1, v6, v0}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;Lcom/b/a/a/b/p;Lcom/b/a/a/b/p;)V

    monitor-exit v7

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/b/a/a/b/n;->zT()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/b/a/a/b/n$b$2;

    const-string v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v6}, Lcom/b/a/a/b/n;->c(Lcom/b/a/a/b/n;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/b/a/a/b/n$b$2;-><init>(Lcom/b/a/a/b/n$b;Ljava/lang/String;[Ljava/lang/Object;Lcom/b/a/a/b/p;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    monitor-exit v7

    goto/16 :goto_0

    :cond_9
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v3, Lcom/b/a/a/b/e;->bKy:Lcom/b/a/a/b/e;

    if-ne p6, v3, :cond_a

    move v3, v0

    :goto_2
    if-eqz v3, :cond_b

    sget-object v0, Lcom/b/a/a/b/a;->bJT:Lcom/b/a/a/b/a;

    invoke-virtual {v4, v0}, Lcom/b/a/a/b/p;->b(Lcom/b/a/a/b/a;)V

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-virtual {v0, p3}, Lcom/b/a/a/b/n;->dS(I)Lcom/b/a/a/b/p;

    goto/16 :goto_0

    :cond_a
    move v3, v2

    goto :goto_2

    :cond_b
    sget-boolean v3, Lcom/b/a/a/b/p;->e:Z

    if-nez v3, :cond_c

    invoke-static {v4}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    monitor-enter v4

    :try_start_2
    iget-object v3, v4, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;

    if-nez v3, :cond_10

    sget-object v3, Lcom/b/a/a/b/e;->bKA:Lcom/b/a/a/b/e;

    if-ne p6, v3, :cond_d

    move v2, v0

    :cond_d
    if-eqz v2, :cond_f

    sget-object v1, Lcom/b/a/a/b/a;->bJT:Lcom/b/a/a/b/a;

    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_13

    invoke-virtual {v4, v1}, Lcom/b/a/a/b/p;->b(Lcom/b/a/a/b/a;)V

    :cond_e
    :goto_4
    if-eqz p2, :cond_0

    invoke-virtual {v4}, Lcom/b/a/a/b/p;->i()V

    goto/16 :goto_0

    :cond_f
    :try_start_3
    iput-object p5, v4, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;

    invoke-virtual {v4}, Lcom/b/a/a/b/p;->b()Z

    move-result v0

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_10
    :try_start_4
    sget-object v3, Lcom/b/a/a/b/e;->bKz:Lcom/b/a/a/b/e;

    if-ne p6, v3, :cond_11

    move v2, v0

    :cond_11
    if-eqz v2, :cond_12

    sget-object v1, Lcom/b/a/a/b/a;->bJW:Lcom/b/a/a/b/a;

    goto :goto_3

    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v4, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v4, Lcom/b/a/a/b/p;->bCF:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :cond_13
    if-nez v0, :cond_e

    iget-object v0, v4, Lcom/b/a/a/b/p;->bIk:Lcom/b/a/a/b/n;

    iget v1, v4, Lcom/b/a/a/b/p;->f:I

    invoke-virtual {v0, v1}, Lcom/b/a/a/b/n;->dS(I)Lcom/b/a/a/b/p;

    goto :goto_4

    :cond_14
    move-object v6, v1

    goto/16 :goto_1
.end method

.method public final b(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0, p1, p2}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;ILjava/util/List;)V

    return-void
.end method

.method protected final e()V
    .locals 5

    sget-object v0, Lcom/b/a/a/b/a;->bJY:Lcom/b/a/a/b/a;

    sget-object v3, Lcom/b/a/a/b/a;->bJY:Lcom/b/a/a/b/a;

    :try_start_0
    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-object v1, v1, Lcom/b/a/a/b/n;->bLj:Lcom/b/a/a/b/q;

    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-object v2, v2, Lcom/b/a/a/b/n;->bLk:Ljava/net/Socket;

    new-instance v4, Lcom/b/a/a/b/n$b$1;

    invoke-direct {v4, p0}, Lcom/b/a/a/b/n$b$1;-><init>(Lcom/b/a/a/b/n$b;)V

    invoke-static {v2, v4}, Lb/m;->b(Ljava/net/Socket;Lb/k;)Lb/s;

    move-result-object v2

    invoke-static {v2}, Lb/m;->b(Lb/s;)Lb/e;

    move-result-object v2

    iget-object v4, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-boolean v4, v4, Lcom/b/a/a/b/n;->b:Z

    invoke-interface {v1, v2, v4}, Lcom/b/a/a/b/q;->a(Lb/e;Z)Lcom/b/a/a/b/b;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/a/b/n$b;->bLw:Lcom/b/a/a/b/b;

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-boolean v1, v1, Lcom/b/a/a/b/n;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLw:Lcom/b/a/a/b/b;

    invoke-interface {v1}, Lcom/b/a/a/b/b;->a()V

    :cond_0
    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLw:Lcom/b/a/a/b/b;

    invoke-interface {v1, p0}, Lcom/b/a/a/b/b;->a(Lcom/b/a/a/b/b$a;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/b/a/a/b/a;->bJS:Lcom/b/a/a/b/a;

    sget-object v1, Lcom/b/a/a/b/a;->bKd:Lcom/b/a/a/b/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v2, v0, v1}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLw:Lcom/b/a/a/b/b;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/b/a/a/b/a;->bJT:Lcom/b/a/a/b/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lcom/b/a/a/b/a;->bJT:Lcom/b/a/a/b/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v1, v2, v0}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLw:Lcom/b/a/a/b/b;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-static {v0, v2, v3}, Lcom/b/a/a/b/n;->a(Lcom/b/a/a/b/n;Lcom/b/a/a/b/a;Lcom/b/a/a/b/a;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLw:Lcom/b/a/a/b/b;

    invoke-static {v0}, Lcom/b/a/a/i;->a(Ljava/io/Closeable;)V

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

.method public final g(IJ)V
    .locals 4

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    iget-wide v2, v0, Lcom/b/a/a/b/n;->d:J

    add-long/2addr v2, p2

    iput-wide v2, v0, Lcom/b/a/a/b/n;->d:J

    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

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
    iget-object v0, p0, Lcom/b/a/a/b/n$b;->bLx:Lcom/b/a/a/b/n;

    invoke-virtual {v0, p1}, Lcom/b/a/a/b/n;->dR(I)Lcom/b/a/a/b/p;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_1
    invoke-virtual {v1, p2, p3}, Lcom/b/a/a/b/p;->a(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
