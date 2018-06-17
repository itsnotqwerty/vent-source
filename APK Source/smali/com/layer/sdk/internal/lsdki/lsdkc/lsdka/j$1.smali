.class final Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/d/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Ljava/util/List;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/b/d/k$c",
        "<",
        "Lcom/layer/b/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic brr:Lcom/layer/b/d/c;

.field final synthetic bsG:Ljava/util/concurrent/CountDownLatch;

.field final synthetic bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/b/d/c;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsG:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/b/d/m;)V
    .locals 5

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in PostEventsTask for event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :try_start_0
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$2;->bqe:[I

    iget-object v1, p1, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v1}, Lcom/layer/b/d/f;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    new-instance v1, Lcom/layer/a/c/e;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    invoke-virtual {p1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->b(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/a/c/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    iget-object v1, v1, Lcom/layer/b/d/c;->bvQ:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->e(Ljava/lang/Long;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    new-instance v1, Lcom/layer/a/c/e;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    invoke-virtual {p1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->c(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/a/c/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    :try_start_5
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v1

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/layer/b/d/c;

    :try_start_0
    invoke-virtual {p1}, Lcom/layer/b/d/c;->xE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    iget v1, p1, Lcom/layer/b/f/c/d;->d:I

    invoke-virtual {v0, v1}, Lcom/layer/b/d/c;->dv(I)Lcom/layer/b/f/c/d;

    :cond_0
    invoke-virtual {p1}, Lcom/layer/b/d/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    iget-object v1, p1, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/layer/b/d/c;->xG()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    iget-wide v2, p1, Lcom/layer/b/f/c/d;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/layer/b/d/c;->M(J)Lcom/layer/b/f/c/d;

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    iget-boolean v0, v0, Lcom/layer/b/f/c/d;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/b/d/c;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/layer/b/d/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Ljava/lang/Iterable;)V

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    new-instance v2, Lcom/layer/a/c/e;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsH:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->brr:Lcom/layer/b/d/c;

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/a/c/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;->bsG:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
