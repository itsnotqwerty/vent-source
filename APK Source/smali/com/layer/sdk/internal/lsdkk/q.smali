.class public Lcom/layer/sdk/internal/lsdkk/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/q$c;,
        Lcom/layer/sdk/internal/lsdkk/q$b;,
        Lcom/layer/sdk/internal/lsdkk/q$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkk/q;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/q;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/layer/b/f/c/m;)I
    .locals 1

    invoke-virtual {p0}, Lcom/layer/b/f/c/m;->yw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/layer/b/f/c/m;->bEN:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/lang/Object;I)I
    .locals 8

    const/4 v1, -0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_6

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v6, :cond_2

    add-int/lit8 v0, v6, -0x1

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sub-int v2, v6, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v2, 0x1

    move v3, v2

    move v4, v0

    move v5, v0

    :goto_2
    if-gt v3, v7, :cond_5

    add-int/lit8 v0, v4, -0x1

    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    add-int/lit8 v2, v5, 0x1

    if-ge v2, v6, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    move v5, v2

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, p2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layer/b/b/a;
    .locals 5

    invoke-static {p0}, Lcom/layer/b/e/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/b/e/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-static {p2}, Lcom/layer/b/e/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-static {p3}, Lcom/layer/b/e/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    new-instance v4, Lcom/layer/sdk/internal/lsdkk/q$2;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdkk/q$2;-><init>(Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)V

    return-object v4
.end method

.method public static a(Ljava/util/concurrent/ThreadPoolExecutor;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/q;->c(Ljava/util/concurrent/ThreadPoolExecutor;)V

    instance-of v1, p0, Lcom/layer/a/b/a;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/layer/a/b/a;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/layer/a/b/a;->a()V

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkk/q;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/concurrent/ThreadPoolExecutor;)Z
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    const-wide/16 v2, 0x64

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/q$1;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/q$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/q;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/q;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method
