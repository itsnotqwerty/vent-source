.class public final Landroid/support/v4/e/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/e/c$a;
    }
.end annotation


# instance fields
.field DG:Landroid/os/HandlerThread;

.field private DH:I

.field private DI:Landroid/os/Handler$Callback;

.field final DJ:I

.field private final DK:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field private final zD:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/e/c;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/e/c$1;

    invoke-direct {v0, p0}, Landroid/support/v4/e/c$1;-><init>(Landroid/support/v4/e/c;)V

    iput-object v0, p0, Landroid/support/v4/e/c;->DI:Landroid/os/Handler$Callback;

    iput-object p1, p0, Landroid/support/v4/e/c;->DK:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Landroid/support/v4/e/c;->zD:I

    const/16 v0, 0x2710

    iput v0, p0, Landroid/support/v4/e/c;->DJ:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/e/c;->DH:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Landroid/support/v4/e/c$3;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/e/c$3;-><init>(Landroid/support/v4/e/c;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/e/c;->g(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p2

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    :cond_1
    :try_start_2
    invoke-interface {v6, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-gtz v3, :cond_1

    :try_start_4
    new-instance v0, Ljava/lang/InterruptedException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method final g(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v1, p0, Landroid/support/v4/e/c;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/e/c;->DG:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v2, p0, Landroid/support/v4/e/c;->DK:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/e/c;->zD:I

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/support/v4/e/c;->DG:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/support/v4/e/c;->DG:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/e/c;->DG:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/e/c;->DI:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    iget v0, p0, Landroid/support/v4/e/c;->DH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/e/c;->DH:I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
