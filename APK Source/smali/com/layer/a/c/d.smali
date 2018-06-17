.class public abstract Lcom/layer/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/a/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Targs:",
        "Ljava/lang/Object;",
        "Tresults:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTresults;"
        }
    .end annotation
.end field

.field private final c:J

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/a/c/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTargs;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/layer/a/c/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/layer/a/c/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/layer/a/c/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/a/c/d;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/layer/a/c/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/a/c/d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/a/c/d;->g:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTargs;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/layer/a/c/d;-><init>()V

    iput-object p1, p0, Lcom/layer/a/c/d;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/layer/a/c/d$a;)Lcom/layer/a/c/d;
    .locals 1

    iget-object v0, p0, Lcom/layer/a/c/d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTargs;)TTresults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected a(I)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/layer/a/c/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-gt v1, p1, :cond_1

    iget-object v0, p0, Lcom/layer/a/c/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/a/c/d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d$a;

    invoke-interface {v0, p0, v1, p1}, Lcom/layer/a/c/d$a;->b(Lcom/layer/a/c/d;II)V

    goto :goto_0
.end method

.method protected a(Lcom/layer/a/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/a/c/d;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/layer/a/c/d;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d$a;

    invoke-interface {v0, p0, p1}, Lcom/layer/a/c/d$a;->a(Lcom/layer/a/c/d;Lcom/layer/a/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a_()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTargs;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/a/c/d;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/layer/a/c/d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/layer/a/c/d;->c:J

    check-cast p1, Lcom/layer/a/c/d;

    iget-wide v4, p1, Lcom/layer/a/c/d;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/layer/a/c/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTresults;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/a/c/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/layer/a/c/d;->c:J

    long-to-int v0, v0

    return v0
.end method

.method public i()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/layer/a/c/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/a/c/d;->g:Ljava/util/Queue;

    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/layer/a/c/d;->c:J

    return-wide v0
.end method

.method public run()V
    .locals 4

    const v2, 0x7fffffff

    invoke-virtual {p0}, Lcom/layer/a/c/d;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/layer/a/c/d;->a(I)V

    new-instance v0, Lcom/layer/a/c/e;

    const-string v1, "Task run while not ready"

    invoke-direct {v0, p0, v1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/layer/a/c/d;->a(Lcom/layer/a/c/e;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/layer/a/c/d;->a(I)V

    invoke-virtual {p0}, Lcom/layer/a/c/d;->a_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/a/c/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/a/c/d;->b:Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/a/c/d;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/layer/a/c/d;->a(I)V

    new-instance v1, Lcom/layer/a/c/e;

    const/4 v2, 0x0

    const-string v3, "Uncaught Task exception"

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/a/c/d;->a(Lcom/layer/a/c/e;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/a/c/d;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
