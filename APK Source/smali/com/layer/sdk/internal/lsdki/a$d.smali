.class final Lcom/layer/sdk/internal/lsdki/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final bsp:Lcom/layer/sdk/internal/lsdki/a$a;

.field private final bsq:Lcom/layer/sdk/internal/lsdki/a$b;

.field final synthetic bsr:Lcom/layer/sdk/internal/lsdki/a;

.field private final d:Z

.field private final e:Z

.field private final f:Lcom/layer/a/b/a;


# direct methods
.method private constructor <init>(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZLcom/layer/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsr:Lcom/layer/sdk/internal/lsdki/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsq:Lcom/layer/sdk/internal/lsdki/a$b;

    iput-boolean p4, p0, Lcom/layer/sdk/internal/lsdki/a$d;->d:Z

    iput-boolean p5, p0, Lcom/layer/sdk/internal/lsdki/a$d;->e:Z

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdki/a$d;->f:Lcom/layer/a/b/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZLcom/layer/a/b/a;B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/layer/sdk/internal/lsdki/a$d;-><init>(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZLcom/layer/a/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/a$d;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/a$d;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsr:Lcom/layer/sdk/internal/lsdki/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-static {v0, v1, p1, p2}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
    .locals 6

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->s()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->s()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v4, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/layer/b/d/m;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/layer/b/d/m;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/exceptions/LayerException;->fromTransportException(Lcom/layer/b/d/m;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/database/sqlite/SQLiteException;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v4, Lcom/layer/sdk/exceptions/LayerException$Type;->DEVICE_PERSISTENCE_FAILURE:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v4, v5, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v4, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/layer/sdk/internal/lsdka/b;->a(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsr:Lcom/layer/sdk/internal/lsdki/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsq:Lcom/layer/sdk/internal/lsdki/a$b;

    iget-boolean v4, p0, Lcom/layer/sdk/internal/lsdki/a$d;->d:Z

    iget-boolean v5, p0, Lcom/layer/sdk/internal/lsdki/a$d;->e:Z

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/a$b;ZZ)V

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->s()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsr:Lcom/layer/sdk/internal/lsdki/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-static {v0, v1, p1, p2}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Ljava/lang/Error;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SyncRecon: Start run"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsr:Lcom/layer/sdk/internal/lsdki/a;

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v5}, Lcom/layer/sdk/internal/lsdki/a$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v5

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdki/a$a;->e()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-ne v6, v0, :cond_5

    :goto_1
    invoke-interface {v4, v5, v0}, Lcom/layer/sdk/internal/lsdka/b;->a(Lcom/layer/sdk/internal/lsdki/a$e;Z)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/a;->wz()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v4, "Historic Sync start"

    invoke-static {v0, v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v4

    sget-object v5, Lcom/layer/sdk/internal/lsdkd/k$a;->c:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v4, v5}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/layer/sdk/internal/lsdki/a$a;->a(Lcom/layer/sdk/internal/lsdkd/k;)V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SyncRecon: Step 1: Outbound recon"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->y()Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdka/b;->a(Lcom/layer/sdk/internal/lsdki/lsdka/b$a;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->d:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    invoke-direct {p0, v2}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    new-instance v1, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V

    invoke-direct {p0, v2}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "SyncRecon: Step 2: Synchronize changes"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->h:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)V

    new-instance v4, Lcom/layer/sdk/internal/lsdki/lsdkc/c;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->f:Lcom/layer/a/b/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsq:Lcom/layer/sdk/internal/lsdki/a$b;

    invoke-direct {v4, v0, v1, v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdki/a$d$1;

    invoke-direct {v0, p0, v3}, Lcom/layer/sdk/internal/lsdki/a$d$1;-><init>(Lcom/layer/sdk/internal/lsdki/a$d;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;)Lcom/layer/sdk/internal/lsdki/lsdkc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a()V

    const-wide/32 v0, 0x1d4c0

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->b()Lcom/layer/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/a;->wz()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Sync interrupted"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SyncRecon: Step 3: Inbound recon"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->b:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)V

    :try_start_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->c()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/g;->e()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-result-object v1

    :try_start_3
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "SyncRecon: Step 3a: Convert changes to models"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsq:Lcom/layer/sdk/internal/lsdki/a$b;

    iget-boolean v3, p0, Lcom/layer/sdk/internal/lsdki/a$d;->e:Z

    invoke-static {v0, v2, v1, v3}, Lcom/layer/sdk/internal/lsdki/lsdka/a;->a(Lcom/layer/sdk/internal/lsdki/lsdka/a$a;Lcom/layer/sdk/internal/lsdki/lsdka/a$c;Landroid/database/sqlite/SQLiteDatabase;Z)I

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "SyncRecon: Step 3b: Re-calculate last messages"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->q()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/a$a;->d()Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v3

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v5}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v5

    invoke-static {v1, v0, v2, v3, v5}, Lcom/layer/sdk/internal/lsdki/lsdkb/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;Lcom/layer/sdk/internal/lsdkd/f;Lcom/layer/sdk/internal/lsdkd/k;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->q()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "SyncRecon: Step 3c: Updating unread messages"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/a$a;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkb/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkb/b$a;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-eqz v1, :cond_d

    :try_start_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->c()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_d
    :try_start_5
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "SyncRecon: Ending cache transaction"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "SyncRecon: Completed run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_f
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "SyncRecon: Completed run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_10
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_11
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "SyncRecon: Ending cache transaction"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_12
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_13
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v1, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_14
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_15
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    throw v0

    :catch_4
    move-exception v0

    move-object v1, v2

    :goto_3
    const/4 v2, 0x6

    :try_start_9
    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/layer/sdk/internal/lsdki/a;->wz()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v2

    const-string v3, "Error in InboundRecon"

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    const/4 v2, 0x0

    new-instance v3, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v0, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    if-eqz v1, :cond_17

    :try_start_a
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->c()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_17
    :try_start_b
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "SyncRecon: Ending cache transaction"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "SyncRecon: Completed run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_19
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    :try_start_c
    new-instance v2, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "SyncRecon: Completed run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1a
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1b
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    throw v0

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "SyncRecon: Ending cache transaction"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1c
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1d
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    :goto_4
    throw v0

    :catch_6
    move-exception v1

    const/4 v2, 0x0

    :try_start_e
    new-instance v3, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v1, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1e
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1f
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    throw v0

    :catchall_6
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_20

    :try_start_f
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->c()Lcom/layer/sdk/internal/lsdki/lsdka/a$b;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdke/g;->i(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_20
    :try_start_10
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "SyncRecon: Ending cache transaction"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "SyncRecon: Completed run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_22
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    :goto_6
    throw v3

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    :try_start_11
    new-instance v2, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v0, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "SyncRecon: Completed run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_23
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_24
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    throw v0

    :catchall_8
    move-exception v0

    :try_start_12
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "SyncRecon: Ending cache transaction"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_25
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a$d;->bsp:Lcom/layer/sdk/internal/lsdki/a$a;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/a$a;->n()Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_26
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    :goto_7
    throw v0

    :catch_8
    move-exception v1

    const/4 v2, 0x0

    :try_start_13
    new-instance v3, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v1, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_27
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    goto :goto_7

    :catchall_9
    move-exception v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "SyncRecon: Completed run"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_28
    invoke-direct {p0, v4}, Lcom/layer/sdk/internal/lsdki/a$d;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    throw v0

    :catchall_a
    move-exception v0

    move-object v3, v0

    goto/16 :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_3
.end method
