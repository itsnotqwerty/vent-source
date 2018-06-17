.class final Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/d/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(ILjava/util/Map;)Ljava/util/concurrent/ConcurrentLinkedQueue;
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
.field final synthetic a:Ljava/util/UUID;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic bsA:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

.field final synthetic bsz:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/UUID;Ljava/lang/Integer;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->bsA:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->a:Ljava/util/UUID;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->bsz:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/b/d/m;)V
    .locals 6

    const/4 v0, 0x6

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in fetchEvents. Stream: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->a:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->bsA:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

    new-instance v1, Lcom/layer/a/c/e;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->bsA:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

    new-instance v3, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$b;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->a:Ljava/util/UUID;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->b:Ljava/lang/Integer;

    invoke-direct {v3, v4, v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$b;-><init>(Ljava/util/UUID;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Lcom/layer/a/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->bsz:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->bsz:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/layer/b/d/c;

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->a:Ljava/util/UUID;

    iput-object v0, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-virtual {p1}, Lcom/layer/b/d/c;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/layer/b/d/c;->dx(I)Lcom/layer/b/f/c/d;

    :cond_0
    invoke-virtual {p1}, Lcom/layer/b/d/c;->xE()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/layer/b/d/c;->dv(I)Lcom/layer/b/f/c/d;

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->bsz:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;->bsz:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
