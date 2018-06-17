.class public Lcom/layer/sdk/internal/lsdkh/h;
.super Lcom/layer/sdk/query/RecyclerViewController;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerChangeEventListener$BackgroundThread$Weak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkh/h$b;,
        Lcom/layer/sdk/internal/lsdkh/h$a;,
        Lcom/layer/sdk/internal/lsdkh/h$h;,
        Lcom/layer/sdk/internal/lsdkh/h$g;,
        Lcom/layer/sdk/internal/lsdkh/h$i;,
        Lcom/layer/sdk/internal/lsdkh/h$e;,
        Lcom/layer/sdk/internal/lsdkh/h$c;,
        Lcom/layer/sdk/internal/lsdkh/h$f;,
        Lcom/layer/sdk/internal/lsdkh/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tquery::",
        "Lcom/layer/sdk/query/Queryable;",
        ">",
        "Lcom/layer/sdk/query/RecyclerViewController",
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

.field private final e:Lcom/layer/sdk/query/RecyclerViewController$Callback;

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

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/util/concurrent/atomic/AtomicReference;
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

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/query/Query;Ljava/util/Set;Lcom/layer/sdk/query/RecyclerViewController$Callback;)V
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
            "Lcom/layer/sdk/query/RecyclerViewController$Callback;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/layer/sdk/query/RecyclerViewController;-><init>()V

    const-class v0, Lcom/layer/sdk/internal/lsdkh/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->j:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->k:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkh/h;->c:Lcom/layer/sdk/query/Query;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkh/h;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkh/h;->e:Lcom/layer/sdk/query/RecyclerViewController$Callback;

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/a;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/layer/sdk/internal/lsdkh/h$1;

    invoke-direct {v3, p0}, Lcom/layer/sdk/internal/lsdkh/h$1;-><init>(Lcom/layer/sdk/internal/lsdkh/h;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/layer/sdk/internal/lsdkh/a;-><init>(Lcom/layer/sdk/internal/a;Ljava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdkh/a$a;)V

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h;->f:Lcom/layer/sdk/internal/lsdkh/a;

    return-void
.end method

.method protected static a(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method protected static a(Lcom/layer/sdk/internal/lsdkh/h$a;Lcom/layer/sdk/internal/lsdkh/h$b;)V
    .locals 9

    const/4 v5, 0x0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const v1, 0x7fffffff

    const/high16 v0, -0x80000000

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->c()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-ge v1, v3, :cond_0

    move v3, v1

    :cond_0
    if-le v1, v2, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v2

    move v1, v3

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    sub-int v0, v2, v3

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move-object v4, v5

    move v6, v3

    :goto_1
    if-gt v6, v2, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_5

    if-nez v4, :cond_4

    new-instance v3, Lcom/layer/sdk/internal/lsdkh/h$i;

    sub-int v4, v6, v1

    invoke-direct {v3, v4, v0}, Lcom/layer/sdk/internal/lsdkh/h$i;-><init>(ILandroid/net/Uri;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v1, v0

    move-object v4, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkh/h$i;->a(Landroid/net/Uri;)V

    add-int/lit8 v0, v1, 0x1

    move-object v3, v4

    goto :goto_2

    :cond_5
    move v0, v1

    move-object v3, v5

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v8}, Lcom/layer/sdk/internal/lsdkh/h$b;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkh/h;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkh/h;->a(ZLjava/util/List;)V

    return-void
.end method

.method protected static a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/h$f;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkh/h$f;

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkh/h$f;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static a(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/h$f;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/layer/sdk/internal/lsdkh/h;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/h$f;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

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

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifying RecyclerViewController updates. Size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/h$4;

    invoke-direct {v1, p0, p2}, Lcom/layer/sdk/internal/lsdkh/h$4;-><init>(Lcom/layer/sdk/internal/lsdkh/h;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/h$5;

    invoke-direct {v1, p0, p2}, Lcom/layer/sdk/internal/lsdkh/h$5;-><init>(Lcom/layer/sdk/internal/lsdkh/h;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b()Lcom/layer/sdk/internal/lsdkh/h$d;
    .locals 5

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/h;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->c:Lcom/layer/sdk/query/Query;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkh/h;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

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
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkh/h;->b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkh/h;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkh/h;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lcom/layer/sdk/internal/lsdkh/h$d;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/layer/sdk/internal/lsdkh/h$d;-><init>(Ljava/util/List;Ljava/util/List;B)V

    monitor-exit v2

    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h;->c:Lcom/layer/sdk/query/Query;

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

.method static synthetic b(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/internal/lsdkh/h$d;
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkh/h;->b()Lcom/layer/sdk/internal/lsdkh/h$d;

    move-result-object v0

    return-object v0
.end method

.method protected static b(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/h$f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/h$a;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkh/h$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->a(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkh/h$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkh/h$a;->b(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkh/h$a;

    move-result-object v1

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/h$b;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkh/h$b;-><init>()V

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$a;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkh/h$b;->a(Ljava/util/List;Ljava/util/Map;)Lcom/layer/sdk/internal/lsdkh/h$b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkh/h;->a(Lcom/layer/sdk/internal/lsdkh/h$a;Lcom/layer/sdk/internal/lsdkh/h$b;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkh/h$a;->a()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkh/h$a;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkh/h$a;-><init>()V

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkh/h$b;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkh/h$a;->a(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkh/h$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkh/h$a;->b(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkh/h$a;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkh/h;->b(Lcom/layer/sdk/internal/lsdkh/h$a;Lcom/layer/sdk/internal/lsdkh/h$b;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/h$a;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkh/h$a;-><init>()V

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkh/h$b;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkh/h$a;->a(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkh/h$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkh/h$a;->b(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkh/h$a;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkh/h;->c(Lcom/layer/sdk/internal/lsdkh/h$a;Lcom/layer/sdk/internal/lsdkh/h$b;)V

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkh/h$b;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static b(Lcom/layer/sdk/internal/lsdkh/h$a;Lcom/layer/sdk/internal/lsdkh/h$b;)V
    .locals 8

    new-instance v0, Lcom/layer/sdk/internal/lsdkh/h$b;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkh/h$b;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkh/h$b;->a(Ljava/util/List;Ljava/util/Map;)Lcom/layer/sdk/internal/lsdkh/h$b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sizes do not match "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->d()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkh/h$b;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/layer/sdk/internal/lsdkh/h$h;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v7, 0x0

    invoke-direct {v6, v2, v1, v0, v7}, Lcom/layer/sdk/internal/lsdkh/h$h;-><init>(IILandroid/net/Uri;B)V

    invoke-virtual {v3, v6}, Lcom/layer/sdk/internal/lsdkh/h$b;->a(Lcom/layer/sdk/internal/lsdkh/h$f;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4}, Lcom/layer/sdk/internal/lsdkh/h$b;->a(Ljava/util/List;)V

    return-void
.end method

.method protected static c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/query/Queryable;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkh/h$f;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkh/h;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/Queryable;

    invoke-interface {v0}, Lcom/layer/sdk/query/Queryable;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/query/Queryable;

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Lcom/layer/sdk/internal/lsdkh/h$c;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v1, v0}, Lcom/layer/sdk/internal/lsdkh/h$c;-><init>(ILandroid/net/Uri;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkh/h$c;->a(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    return-object v6
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method protected static c(Lcom/layer/sdk/internal/lsdkh/h$a;Lcom/layer/sdk/internal/lsdkh/h$b;)V
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->d()Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h$a;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v1, :cond_1

    if-nez v3, :cond_0

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/h$g;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkh/h$g;-><init>(ILandroid/net/Uri;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkh/h$g;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v5}, Lcom/layer/sdk/internal/lsdkh/h$b;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/LayerClient;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    return-object v0
.end method

.method static synthetic e(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic g(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic j(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/query/RecyclerViewController$Callback;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->e:Lcom/layer/sdk/query/RecyclerViewController$Callback;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/lsdkh/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/layer/sdk/internal/lsdkh/h",
            "<TTquery;>;"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lcom/layer/sdk/internal/lsdkh/h$2;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkh/h$2;-><init>(Lcom/layer/sdk/internal/lsdkh/h;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->d(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/query/ListViewController$PreProcessCallback;)Lcom/layer/sdk/internal/lsdkh/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/ListViewController$PreProcessCallback",
            "<TTquery;>;)",
            "Lcom/layer/sdk/internal/lsdkh/h",
            "<TTquery;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/internal/lsdkh/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<TTquery;>;)",
            "Lcom/layer/sdk/internal/lsdkh/h",
            "<TTquery;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/h;->c:Lcom/layer/sdk/query/Query;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic execute()Lcom/layer/sdk/query/ListViewController;
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkh/h;->a()Lcom/layer/sdk/internal/lsdkh/h;

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

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/h;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

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
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/LayerClient;->get(Landroid/net/Uri;)Lcom/layer/sdk/query/Queryable;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/h;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->l:Ljava/util/concurrent/atomic/AtomicReference;

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
    .locals 2

    new-instance v1, Lcom/layer/sdk/internal/lsdkh/h$3;

    invoke-direct {v1, p0, p1}, Lcom/layer/sdk/internal/lsdkh/h$3;-><init>(Lcom/layer/sdk/internal/lsdkh/h;Lcom/layer/sdk/changes/LayerChangeEvent;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/a;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/a;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic setPreProcessCallback(Lcom/layer/sdk/query/ListViewController$PreProcessCallback;)Lcom/layer/sdk/query/ListViewController;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/h;->a(Lcom/layer/sdk/query/ListViewController$PreProcessCallback;)Lcom/layer/sdk/internal/lsdkh/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setQuery(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/query/ListViewController;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkh/h;->a(Lcom/layer/sdk/query/Query;)Lcom/layer/sdk/internal/lsdkh/h;

    move-result-object v0

    return-object v0
.end method

.method public updateBoundPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h;->f:Lcom/layer/sdk/internal/lsdkh/a;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkh/a;->a(I)V

    return-void
.end method
