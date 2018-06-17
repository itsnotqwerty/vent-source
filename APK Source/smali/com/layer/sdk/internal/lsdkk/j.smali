.class public Lcom/layer/sdk/internal/lsdkk/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/j$a;,
        Lcom/layer/sdk/internal/lsdkk/j$e;,
        Lcom/layer/sdk/internal/lsdkk/j$b;,
        Lcom/layer/sdk/internal/lsdkk/j$d;,
        Lcom/layer/sdk/internal/lsdkk/j$f;,
        Lcom/layer/sdk/internal/lsdkk/j$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdkk/k$a;

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/layer/sdk/internal/lsdkk/j$d",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/layer/sdk/internal/lsdkk/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->c:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private c(Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkk/j$d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/layer/sdk/internal/lsdkk/j$d",
            "<TT;>;"
        }
    .end annotation

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/j;->d()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/j$d;

    instance-of v2, v1, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->isEnqueued()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_2
    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 5

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing dead reference to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j$f;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j$d;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/j$d;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/j;->d()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkk/o;",
            "Lcom/layer/sdk/internal/lsdkk/j$b",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/j;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/layer/sdk/internal/lsdkk/j$1;

    invoke-direct {v2, p0, p2, v1}, Lcom/layer/sdk/internal/lsdkk/j$1;-><init>(Lcom/layer/sdk/internal/lsdkk/j;Lcom/layer/sdk/internal/lsdkk/j$b;Ljava/lang/Object;)V

    instance-of v1, v1, Lcom/layer/sdk/internal/lsdkk/j$a;

    if-eqz v1, :cond_0

    invoke-interface {p1, v2}, Lcom/layer/sdk/internal/lsdkk/o;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Lcom/layer/sdk/internal/lsdkk/o;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a null object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/j;->d()V

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkk/j;->c(Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkk/j$d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/j$d;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/j$d;->clear()V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/j$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    new-instance v2, Lcom/layer/sdk/internal/lsdkk/j$f;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkk/j;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p0, p1, v3}, Lcom/layer/sdk/internal/lsdkk/j$f;-><init>(Lcom/layer/sdk/internal/lsdkk/j;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    new-instance v2, Lcom/layer/sdk/internal/lsdkk/j$c;

    invoke-direct {v2, p0, p1}, Lcom/layer/sdk/internal/lsdkk/j$c;-><init>(Lcom/layer/sdk/internal/lsdkk/j;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/j;->d()V

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkk/j;->c(Ljava/lang/Object;)Lcom/layer/sdk/internal/lsdkk/j$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/j$d;->clear()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/j;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/j;->d()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/j;->d()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j$d;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkk/j$d;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
