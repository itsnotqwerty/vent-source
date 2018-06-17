.class public final Lio/intercom/a/a/a/f/d;
.super Ljava/lang/Object;


# instance fields
.field private final cPE:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/intercom/a/a/a/i/g;",
            ">;"
        }
    .end annotation
.end field

.field public final cPF:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Lio/intercom/a/a/a/i/g;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/f/d;->cPE:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/f/d;->cPF:Landroid/support/v4/g/a;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/a/a/a/f/d;->cPE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/i/g;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/a/a/a/i/g;

    invoke-direct {v0, p1, p2}, Lio/intercom/a/a/a/i/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lio/intercom/a/a/a/f/d;->cPF:Landroid/support/v4/g/a;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/f/d;->cPF:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lio/intercom/a/a/a/f/d;->cPE:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2, v1}, Lio/intercom/a/a/a/i/g;->f(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
