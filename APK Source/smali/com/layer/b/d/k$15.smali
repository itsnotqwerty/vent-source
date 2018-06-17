.class final Lcom/layer/b/d/k$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/b/d/k;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/b/d/k;


# direct methods
.method constructor <init>(Lcom/layer/b/d/k;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->g(Lcom/layer/b/d/k;)Lcom/b/a/h;

    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->i(Lcom/layer/b/d/k;)Lcom/layer/b/d/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/layer/b/d/e;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;)V
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final e(Lcom/b/a/ac;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x6

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0, p1}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;Lcom/b/a/ac;)Lcom/layer/b/d/j;
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->g(Lcom/layer/b/d/k;)Lcom/b/a/h;

    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->i(Lcom/layer/b/d/k;)Lcom/layer/b/d/e;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/b/a/ac;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/layer/b/d/e;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;)V
    :try_end_1
    .catch Lcom/layer/b/d/m; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v5}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/f;->bvV:Lcom/layer/b/d/f;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->g(Lcom/layer/b/d/k;)Lcom/b/a/h;

    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    iget-object v0, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->i(Lcom/layer/b/d/k;)Lcom/layer/b/d/e;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/b/a/ac;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/layer/b/d/e;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->g(Lcom/layer/b/d/k;)Lcom/b/a/h;

    iget-object v2, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->h(Lcom/layer/b/d/k;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    iget-object v2, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->i(Lcom/layer/b/d/k;)Lcom/layer/b/d/e;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/b/a/ac;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/layer/b/d/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    :try_start_3
    iget-object v1, p0, Lcom/layer/b/d/k$15;->a:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;)V
    :try_end_3
    .catch Lcom/layer/b/d/m; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v5}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
