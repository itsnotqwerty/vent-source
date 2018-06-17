.class public Lcom/layer/sdk/internal/lsdki/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/a$d;,
        Lcom/layer/sdk/internal/lsdki/a$c;,
        Lcom/layer/sdk/internal/lsdki/a$b;,
        Lcom/layer/sdk/internal/lsdki/a$a;,
        Lcom/layer/sdk/internal/lsdki/a$e;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private volatile b:Z

.field private volatile c:Ljava/lang/Boolean;

.field private volatile d:Z

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/layer/a/b/a;

.field private i:Lcom/layer/a/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/layer/sdk/internal/lsdki/a;->b:Z

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->c:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/layer/sdk/internal/lsdki/a;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/a;->f()Lcom/layer/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/a;->e()Lcom/layer/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    return-void
.end method

.method private declared-synchronized a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing sync. SyncRecon type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->b(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->c(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    iget-object v8, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/a$d;

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/layer/sdk/internal/lsdki/a$d;-><init>(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZLcom/layer/a/b/a;B)V

    invoke-virtual {v8, v0}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/a;->d:Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/a$b;ZZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/layer/sdk/internal/lsdki/a;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->p()Lcom/layer/sdk/internal/lsdki/a$c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->p()Lcom/layer/sdk/internal/lsdki/a$c;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/layer/sdk/internal/lsdki/a$c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;)V

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/internal/lsdki/a$e;->d:Lcom/layer/sdk/internal/lsdki/a$e;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p3, v1, v2}, Lcom/layer/sdk/internal/lsdka/b;->a(Lcom/layer/sdk/internal/lsdki/a$b;Lcom/layer/sdk/internal/lsdki/a$e;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdki/a$b;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/layer/sdk/internal/lsdki/a;->d:Z

    if-eqz v2, :cond_a

    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kicking off new sync due to: results.isSyncReconComplete: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdki/a$b;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNextSyncRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/layer/sdk/internal/lsdki/a;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Results: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdki/a$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->A()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/a;->d:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Clearing the sync contract\'s cache to prepare for subsequent run"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/f;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->A()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_6
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->x()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/b;->b()I

    move-result v0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SyncRecon: Cycle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->e()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " completed. Progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/layer/sdk/internal/lsdka/b;->a(Lcom/layer/sdk/internal/lsdki/a$e;I)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->e()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-virtual {p3}, Lcom/layer/sdk/internal/lsdki/a$b;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->b(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_8
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->s()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    new-instance v0, Lcom/layer/sdk/internal/lsdki/a$b;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdki/a$b;-><init>()V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZ)V

    move v0, v1

    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->o()Lcom/layer/sdk/internal/lsdka/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v2

    invoke-interface {v1, p3, v2, v0}, Lcom/layer/sdk/internal/lsdka/b;->a(Lcom/layer/sdk/internal/lsdki/a$b;Lcom/layer/sdk/internal/lsdki/a$e;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    :try_start_2
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdki/a$e;->b:Lcom/layer/sdk/internal/lsdki/a$e;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Historic Sync complete"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "SyncRecon: Sync complete"

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->p()Lcom/layer/sdk/internal/lsdki/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->p()Lcom/layer/sdk/internal/lsdki/a$c;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/layer/sdk/internal/lsdki/a$c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Ljava/lang/Error;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->p()Lcom/layer/sdk/internal/lsdki/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->p()Lcom/layer/sdk/internal/lsdki/a$c;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/layer/sdk/internal/lsdki/a$c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Ljava/lang/Error;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/a$b;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/a$b;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/a;Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Ljava/lang/Error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c;Ljava/lang/Error;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/a;->b:Z

    return v0
.end method

.method private e()Lcom/layer/a/b/a;
    .locals 6

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/q$a;

    const-string v1, "Sync-Recon-Executor"

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkk/q$a;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;I)V

    return-object v0
.end method

.method private f()Lcom/layer/a/b/a;
    .locals 8

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/q$b;

    const-string v2, "SyncExecutor"

    const/16 v3, 0x100

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v7, 0xa

    invoke-direct/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdkk/q$b;-><init>(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V

    return-object v1
.end method

.method static synthetic wz()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Pausing SyncRecon"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/layer/sdk/internal/lsdki/a$a;ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->v()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->a(Lcom/layer/sdk/internal/lsdki/a$a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->v()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/a$a;->A()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/a;->d:Z

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Sync in progress. Requesting a new sync on completion"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    new-instance v0, Lcom/layer/sdk/internal/lsdki/a$b;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdki/a$b;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/layer/sdk/internal/lsdki/a;->a(Lcom/layer/sdk/internal/lsdki/a$a;Lcom/layer/sdk/internal/lsdki/a$b;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Resuming SyncRecon"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->isTerminating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/a;->e()Lcom/layer/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->isTerminating()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/a;->f()Lcom/layer/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->b()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Closing SyncRecon"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdki/a;->b:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to close "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to close "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->b(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to terminate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->b(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdki/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to terminate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->i:Lcom/layer/a/b/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/a;->h:Lcom/layer/a/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
