.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/layer/b/d/c;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/layer/b/d/c;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final c:Lcom/layer/b/d/k;

.field private final d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/b/d/k;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->c:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    return-object v0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/a/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/a/c/e;)V

    return-void
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/a/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/a/c/e;)V

    return-void
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/a/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/a/c/e;)V

    return-void
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/lang/Iterable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/c;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PostEventsTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    new-instance v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j$1;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;Lcom/layer/b/d/c;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->c:Lcom/layer/b/d/k;

    iget-object v7, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    new-instance v8, Lcom/layer/b/d/k$b;

    invoke-direct {v8, v6, v1}, Lcom/layer/b/d/k$b;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/k$c;)V

    const/16 v1, 0xc8

    invoke-virtual {v8, v1}, Lcom/layer/b/d/k$b;->do(I)Lcom/layer/b/d/k$b;

    move-result-object v1

    new-instance v8, Lcom/layer/b/d/k$14;

    invoke-direct {v8, v6, v0, v7}, Lcom/layer/b/d/k$14;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/c;Ljava/util/UUID;)V

    invoke-virtual {v1, v8}, Lcom/layer/b/d/k$b;->a(Lcom/layer/b/d/k$a;)Lcom/b/a/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v6, 0x6

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v7, "Exception"

    invoke-static {v6, v7, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v6, Lcom/layer/a/c/e;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v0, v7, v1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Lcom/layer/a/c/e;)V

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/h;

    invoke-virtual {v0}, Lcom/b/a/h;->c()V

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->a(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
