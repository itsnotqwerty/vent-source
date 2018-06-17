.class final Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/d/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/List;
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
        "Lcom/layer/b/d/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bsD:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic bsE:Ljava/util/concurrent/CountDownLatch;

.field final synthetic bsF:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

.field final synthetic c:Ljava/util/UUID;

.field final synthetic d:Ljava/util/Set;

.field final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/CountDownLatch;Ljava/util/UUID;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsF:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsD:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsE:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->c:Ljava/util/UUID;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->d:Ljava/util/Set;

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/b/d/m;)V
    .locals 5

    :try_start_0
    iget-object v0, p1, Lcom/layer/b/d/m;->buL:Lcom/layer/b/d/b;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$2;->bqe:[I

    iget-object v2, p1, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v2}, Lcom/layer/b/d/f;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsE:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_0
    const/4 v0, 0x6

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recoverable exception while getting streams, will retry right away: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsF:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    :pswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recoverable exception while getting streams, will retry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsF:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    new-instance v1, Lcom/layer/a/c/e;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsF:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->c:Ljava/util/UUID;

    invoke-virtual {p1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;Lcom/layer/a/c/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsE:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :pswitch_2
    :try_start_2
    sget-object v1, Lcom/layer/b/d/b;->buQ:Lcom/layer/b/d/b;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stream was deleted while getting streams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->d:Ljava/util/Set;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->c:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecoverable exception while getting streams, will not retry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->c:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsF:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    new-instance v1, Lcom/layer/a/c/e;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsF:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->c:Ljava/util/UUID;

    invoke-virtual {p1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;->b(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;Lcom/layer/a/c/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/layer/b/d/h;

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsD:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsE:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h$1;->bsE:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
