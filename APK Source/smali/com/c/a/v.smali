.class public final Lcom/c/a/v;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/v$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/c/a/ag$b;

    invoke-direct {v8}, Lcom/c/a/ag$b;-><init>()V

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method final ed(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/c/a/v;->setCorePoolSize(I)V

    invoke-virtual {p0, p1}, Lcom/c/a/v;->setMaximumPoolSize(I)V

    return-void
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/c/a/v$a;

    check-cast p1, Lcom/c/a/c;

    invoke-direct {v0, p1}, Lcom/c/a/v$a;-><init>(Lcom/c/a/c;)V

    invoke-virtual {p0, v0}, Lcom/c/a/v;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
