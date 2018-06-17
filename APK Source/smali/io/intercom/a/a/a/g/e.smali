.class public final Lio/intercom/a/a/a/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/b;
.implements Lio/intercom/a/a/a/g/f;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/g/e$a;,
        Lio/intercom/a/a/a/g/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/g/b",
        "<TR;>;",
        "Lio/intercom/a/a/a/g/f",
        "<TR;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final cPL:Lio/intercom/a/a/a/g/e$b;


# instance fields
.field private cIs:Z

.field private cKE:Lio/intercom/a/a/a/c/b/p;

.field private cNq:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final cPM:Z

.field private final cPN:Lio/intercom/a/a/a/g/e$b;

.field private cPO:Z

.field private cPP:Z

.field private final height:I

.field private final mainHandler:Landroid/os/Handler;

.field private request:Lio/intercom/a/a/a/g/c;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/g/e$b;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/e$b;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/g/e;->cPL:Lio/intercom/a/a/a/g/e$b;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;II)V
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/g/e;->cPL:Lio/intercom/a/a/a/g/e$b;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/intercom/a/a/a/g/e;-><init>(Landroid/os/Handler;IILio/intercom/a/a/a/g/e$b;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;IILio/intercom/a/a/a/g/e$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/g/e;->mainHandler:Landroid/os/Handler;

    iput p2, p0, Lio/intercom/a/a/a/g/e;->width:I

    iput p3, p0, Lio/intercom/a/a/a/g/e;->height:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPM:Z

    iput-object p4, p0, Lio/intercom/a/a/a/g/e;->cPN:Lio/intercom/a/a/a/g/e$b;

    return-void
.end method

.method private declared-synchronized h(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPM:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/e;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JT()V

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cIs:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPP:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lio/intercom/a/a/a/g/e;->cKE:Lio/intercom/a/a/a/c/b/p;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPO:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/a/a/a/g/e;->cNq:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_3
    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPP:Z

    if-eqz v0, :cond_7

    new-instance v0, Lio/intercom/a/a/a/g/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/g/e;->cKE:Lio/intercom/a/a/a/c/b/p;

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/g/e$a;-><init>(Lio/intercom/a/a/a/c/b/p;)V

    throw v0

    :cond_7
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cIs:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    :cond_8
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPO:Z

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_9
    iget-object v0, p0, Lio/intercom/a/a/a/g/e;->cNq:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized cancel(Z)Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/intercom/a/a/a/g/e;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/intercom/a/a/a/g/e;->cIs:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/e;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/e;->h(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/e;->h(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getRequest()Lio/intercom/a/a/a/g/c;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/e;->request:Lio/intercom/a/a/a/g/c;

    return-object v0
.end method

.method public final getSize(Lio/intercom/a/a/a/g/a/g;)V
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/g/e;->width:I

    iget v1, p0, Lio/intercom/a/a/a/g/e;->height:I

    invoke-interface {p1, v0, v1}, Lio/intercom/a/a/a/g/a/g;->aP(II)V

    return-void
.end method

.method public final declared-synchronized isCancelled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cIs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDone()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cIs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPO:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onLoadFailed(Lio/intercom/a/a/a/c/b/p;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/p;",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/g/a/h",
            "<TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPP:Z

    iput-object p1, p0, Lio/intercom/a/a/a/g/e;->cKE:Lio/intercom/a/a/a/c/b/p;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onResourceReady(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lio/intercom/a/a/a/g/b/d",
            "<-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/g/a/h",
            "<TR;>;",
            "Lio/intercom/a/a/a/c/a;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/intercom/a/a/a/g/e;->cPO:Z

    iput-object p1, p0, Lio/intercom/a/a/a/g/e;->cNq:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStop()V
    .locals 0

    return-void
.end method

.method public final removeCallback(Lio/intercom/a/a/a/g/a/g;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/e;->request:Lio/intercom/a/a/a/g/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/e;->request:Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/g/e;->request:Lio/intercom/a/a/a/g/c;

    :cond_0
    return-void
.end method

.method public final setRequest(Lio/intercom/a/a/a/g/c;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/g/e;->request:Lio/intercom/a/a/a/g/c;

    return-void
.end method
