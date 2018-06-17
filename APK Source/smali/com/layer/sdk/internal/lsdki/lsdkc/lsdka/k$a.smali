.class final Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/d/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/b/d/k$c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final bsE:Ljava/util/concurrent/CountDownLatch;

.field final synthetic bsI:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Ljava/util/Set;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsI:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsE:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->c:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Ljava/util/Set;Ljava/util/concurrent/CountDownLatch;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Ljava/util/Set;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/b/d/m;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$1;->bqe:[I

    iget-object v1, p1, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v1}, Lcom/layer/b/d/f;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsE:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :pswitch_0
    const/4 v0, 0x6

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Retry-able exception while updating identities, will retry"

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsI:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    new-instance v1, Lcom/layer/a/c/e;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsI:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Lcom/layer/a/c/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsE:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsI:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Ljava/util/Collection;)V

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Unrecoverable exception while updating identities, will not retry: 16842960"

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsI:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    new-instance v1, Lcom/layer/a/c/e;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsI:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->b(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;Lcom/layer/a/c/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

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
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsI:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k$a;->bsE:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
