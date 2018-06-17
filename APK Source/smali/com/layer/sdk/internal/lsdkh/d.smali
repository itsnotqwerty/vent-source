.class public Lcom/layer/sdk/internal/lsdkh/d;
.super Lcom/layer/sdk/query/ListViewController;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerChangeEventListener$BackgroundThread$Weak;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tquery::",
        "Lcom/layer/sdk/query/Queryable;",
        ">",
        "Lcom/layer/sdk/query/ListViewController",
        "<TTquery;>;",
        "Lcom/layer/sdk/listeners/LayerChangeEventListener$BackgroundThread$Weak;"
    }
.end annotation


# instance fields
.field a:Lcom/layer/sdk/internal/lsdkk/k$a;

.field private final b:Lcom/layer/sdk/LayerClient;

.field private c:Lcom/layer/sdk/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/query/Query",
            "<TTquery;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/layer/sdk/query/ListViewController$Callback;

.field private final f:Lcom/layer/sdk/internal/lsdkh/a;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/layer/sdk/query/ListViewController$PreProcessCallback",
            "<TTquery;>;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/lang/Object;

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/query/Query;Ljava/util/Set;Lcom/layer/sdk/query/ListViewController$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/LayerClient;",
            "Lcom/layer/sdk/query/Query",
            "<TTquery;>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/layer/sdk/query/ListViewController$Callback;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/layer/sdk/query/ListViewController;-><init>()V

    const-class v0, Lcom/layer/sdk/internal/lsdkh/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->j:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/d;->b:Lcom/layer/sdk/LayerClient;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkh/d;->c:Lcom/layer/sdk/query/Query;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkh/d;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkh/d;->e:Lcom/layer/sdk/query/ListViewController$Callback;

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/a;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/layer/sdk/internal/lsdkh/d$1;

    invoke-direct {v3, p0}, Lcom/layer/sdk/internal/lsdkh/d$1;-><init>(Lcom/layer/sdk/internal/lsdkh/d;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/layer/sdk/internal/lsdkh/a;-><init>(Lcom/layer/sdk/internal/a;Ljava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdkh/a$a;)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d;->f:Lcom/layer/sdk/internal/lsdkh/a;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkh/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkh/d;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifying ListViewController results. Size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/d$4;

    invoke-direct {v1, p0, p1}, Lcom/layer/sdk/internal/lsdkh/d$4;-><init>(Lcom/layer/sdk/internal/lsdkh/d;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/d;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->c:Lcom/layer/sdk/query/Query;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkh/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Query item count: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    monitor-exit v2

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->b:Lcom/layer/sdk/LayerClient;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d;->c:Lcom/layer/sdk/query/Query;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/LayerClient;->executeQueryForIds(Lcom/layer/sdk/query/Query;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkh/d;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/layer/sdk/internal/lsdkh/d;)Lcom/layer/sdk/LayerClient;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->b:Lcom/layer/sdk/LayerClient;

    return-object v0
.end method

.method static synthetic e(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic g(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic i(Lcom/layer/sdk/internal/lsdkh/d;)Lcom/layer/sdk/query/ListViewController$Callback;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->e:Lcom/layer/sdk/query/ListViewController$Callback;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/lsdkh/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/layer/sdk/internal/lsdkh/d",
            "<TTquery;>;"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/d$2;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkh/d$2;-><init>(Lcom/layer/sdk/internal/lsdkh/d;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->d(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public synthetic execute()Lcom/layer/sdk/query/ListViewController;
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/d;->a()Lcom/layer/sdk/internal/lsdkh/d;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/layer/sdk/query/Queryable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTquery;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/d;->j:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    monitor-exit v2

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d;->b:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/LayerClient;->get(Landroid/net/Uri;)Lcom/layer/sdk/query/Queryable;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

.method public getItemId(I)Landroid/net/Uri;
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPosition(Lcom/layer/sdk/query/Queryable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTquery;)I"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Lcom/layer/sdk/query/Queryable;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

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

.method public getPosition(Lcom/layer/sdk/query/Queryable;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTquery;I)I"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Lcom/layer/sdk/query/Queryable;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/layer/sdk/internal/lsdkk/q;->a(Ljava/util/List;Ljava/lang/Object;I)I

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

.method public onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->d:Ljava/util/Set;

    if-nez v0, :cond_1

    :goto_0
    if-eqz v2, :cond_0

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/d$3;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkh/d$3;-><init>(Lcom/layer/sdk/internal/lsdkh/d;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/changes/LayerChangeEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/changes/LayerChange;

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v4

    sget-object v5, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    if-eq v4, v5, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkh/d;->d:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_0
.end method

.method public setPreProcessCallback(Lcom/layer/sdk/query/ListViewController$PreProcessCallback;)Lcom/layer/sdk/query/ListViewController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/ListViewController$PreProcessCallback",
            "<TTquery;>;)",
            "Lcom/layer/sdk/query/ListViewController",
            "<TTquery;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public setQuery(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/query/ListViewController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<TTquery;>;)",
            "Lcom/layer/sdk/query/ListViewController",
            "<TTquery;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/d;->c:Lcom/layer/sdk/query/Query;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBoundPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d;->f:Lcom/layer/sdk/internal/lsdkh/a;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkh/a;->a(I)V

    return-void
.end method
