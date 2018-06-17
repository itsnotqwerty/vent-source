.class public abstract Lcom/layer/a/c/c;
.super Lcom/layer/a/c/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/a/c/c$a;,
        Lcom/layer/a/c/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Targs:",
        "Ljava/lang/Object;",
        "Tresults:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/layer/a/c/d",
        "<TTargs;TTresults;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/a/a/a;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lcom/layer/a/c/c$a;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/layer/a/a/a;Lcom/layer/a/c/c$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/a/a/a;",
            "Lcom/layer/a/c/c$a;",
            "TTargs;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/layer/a/c/d;-><init>(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/layer/a/c/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/a/c/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/a/c/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/layer/a/c/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/layer/a/c/c;->a:Lcom/layer/a/a/a;

    iput-object p2, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/layer/a/c/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/layer/a/c/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/a/c/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/a/c/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public f()Lcom/layer/a/c/d;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layer/a/c/c;->a(I)V

    return-object p0
.end method

.method public run()V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/layer/a/c/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/layer/a/c/c;->g()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/layer/a/c/c;->f()Lcom/layer/a/c/d;

    :cond_0
    iget-object v0, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    invoke-interface {v0, p0}, Lcom/layer/a/c/c$a;->a(Lcom/layer/a/c/c;)V

    :cond_1
    invoke-virtual {p0}, Lcom/layer/a/c/c;->g()I

    move-result v0

    if-eq v0, v3, :cond_3

    new-instance v0, Lcom/layer/a/c/e;

    const-string v2, "Task run while not ready"

    invoke-direct {v0, p0, v2}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/layer/a/c/c;->a(Lcom/layer/a/c/e;)V

    :goto_0
    invoke-virtual {p0}, Lcom/layer/a/c/c;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/layer/a/c/c;->e()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/layer/a/c/c;->i()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/a/c/c;->a(I)V

    iget-object v0, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    invoke-interface {v0, p0}, Lcom/layer/a/c/c$a;->b(Lcom/layer/a/c/c;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/layer/a/c/c;->a(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/layer/a/c/c;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/layer/a/c/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0}, Lcom/layer/a/c/c;->a_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/a/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/a/c/c;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    iget-object v0, p0, Lcom/layer/a/c/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/layer/a/c/c;->a:Lcom/layer/a/a/a;

    invoke-interface {v2}, Lcom/layer/a/a/a;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    iget-object v2, p0, Lcom/layer/a/c/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/layer/a/c/e;

    const/4 v3, 0x0

    const-string v4, "Uncaught Task exception"

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/layer/a/c/c;->a(Lcom/layer/a/c/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/layer/a/c/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    :try_start_4
    iget-object v4, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    invoke-interface {v4, p0, v2, v3, v0}, Lcom/layer/a/c/c$a;->a(Lcom/layer/a/c/c;JLjava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/layer/a/c/c;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0

    :cond_7
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/layer/a/c/c;->a(I)V

    invoke-virtual {p0}, Lcom/layer/a/c/c;->i()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/layer/a/c/c;->i()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/layer/a/c/e;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/layer/a/c/c;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    sget-object v2, Lcom/layer/a/c/c$b;->bpH:Lcom/layer/a/c/c$b;

    invoke-interface {v1, p0, v2, v0}, Lcom/layer/a/c/c$a;->a(Lcom/layer/a/c/c;Lcom/layer/a/c/c$b;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/layer/a/c/c;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    sget-object v2, Lcom/layer/a/c/c$b;->bpI:Lcom/layer/a/c/c$b;

    invoke-interface {v1, p0, v2, v0}, Lcom/layer/a/c/c$a;->a(Lcom/layer/a/c/c;Lcom/layer/a/c/c$b;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/layer/a/c/c;->f:Lcom/layer/a/c/c$a;

    sget-object v2, Lcom/layer/a/c/c$b;->bpJ:Lcom/layer/a/c/c$b;

    invoke-interface {v1, p0, v2, v0}, Lcom/layer/a/c/c$a;->a(Lcom/layer/a/c/c;Lcom/layer/a/c/c$b;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto :goto_3
.end method
