.class public Lcom/layer/sdk/internal/lsdkf/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkf/c$a;
    }
.end annotation


# static fields
.field static final b:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field protected final a:Lcom/layer/a/b/a;

.field final bsb:Lcom/layer/sdk/internal/b;

.field final bsc:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/policy/Policy;",
            ">;"
        }
    .end annotation
.end field

.field final bsd:Lcom/layer/sdk/internal/lsdkk/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkk/j",
            "<",
            "Lcom/layer/sdk/internal/lsdkf/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkf/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/b;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->d:Z

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/q$a;

    const-string v1, "PolicyExecutor"

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkk/q$a;-><init>(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->a:Lcom/layer/a/b/a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/j;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/j;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsd:Lcom/layer/sdk/internal/lsdkk/j;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsb:Lcom/layer/sdk/internal/b;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkf/c;)Lcom/layer/sdk/internal/b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsb:Lcom/layer/sdk/internal/b;

    return-object v0
.end method

.method public static a(Ljava/util/LinkedHashSet;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/policy/Policy;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/policy/Policy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static v(Ljava/util/List;)Ljava/util/LinkedHashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/policy/Policy;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/layer/sdk/internal/lsdkf/b;

    sget-object v4, Lcom/layer/sdk/policy/Policy$PolicyType;->BLOCK:Lcom/layer/sdk/policy/Policy$PolicyType;

    invoke-direct {v3, v4, v0}, Lcom/layer/sdk/internal/lsdkf/b;-><init>(Lcom/layer/sdk/policy/Policy$PolicyType;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Lcom/layer/sdk/policy/Policy;)Ljava/lang/Boolean;
    .locals 5

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PolicyManager::addPolicy:Enter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/layer/sdk/policy/Policy;->getPolicyType()Lcom/layer/sdk/policy/Policy$PolicyType;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/policy/Policy$PolicyType;->BLOCK:Lcom/layer/sdk/policy/Policy$PolicyType;

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->a:Lcom/layer/a/b/a;

    new-instance v4, Lcom/layer/sdk/internal/lsdkf/c$1;

    invoke-direct {v4, p0, p1}, Lcom/layer/sdk/internal/lsdkf/c$1;-><init>(Lcom/layer/sdk/internal/lsdkf/c;Lcom/layer/sdk/policy/Policy;)V

    invoke-virtual {v0, v4}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsd:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkf/c$a;

    invoke-interface {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkf/c$a;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "PolicyManager::addPolicy:Exit"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a()Ljava/util/LinkedHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/layer/sdk/policy/Policy;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkf/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsd:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkk/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/layer/sdk/policy/Policy;)Ljava/lang/Boolean;
    .locals 5

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PolicyManager::removePolicy:Enter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/layer/sdk/policy/Policy;->getPolicyType()Lcom/layer/sdk/policy/Policy$PolicyType;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/policy/Policy$PolicyType;->BLOCK:Lcom/layer/sdk/policy/Policy$PolicyType;

    if-eq v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->a:Lcom/layer/a/b/a;

    new-instance v4, Lcom/layer/sdk/internal/lsdkf/c$2;

    invoke-direct {v4, p0, p1}, Lcom/layer/sdk/internal/lsdkf/c$2;-><init>(Lcom/layer/sdk/internal/lsdkf/c;Lcom/layer/sdk/policy/Policy;)V

    invoke-virtual {v0, v4}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsd:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkf/c$a;

    invoke-interface {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkf/c$a;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "PolicyManager::addPolicy:Exit"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Pausing PolicyManager"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->a:Lcom/layer/a/b/a;

    invoke-virtual {v0}, Lcom/layer/a/b/a;->a()V

    return-void
.end method

.method final b(Lcom/layer/sdk/internal/lsdkf/e$a;)V
    .locals 4

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsd:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkf/c$a;

    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkf/e$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkf/e$a;->bry:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkf/c$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Closing PolicyManager"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/c;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->d:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->a:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->a:Lcom/layer/a/b/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->b(Ljava/util/concurrent/ThreadPoolExecutor;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsd:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 4

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkf/c;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Executing policy sync"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkf/d;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/c;->a:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsb:Lcom/layer/sdk/internal/b;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/b;->h()Lcom/layer/b/d/k;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkf/c;->bsb:Lcom/layer/sdk/internal/b;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/layer/sdk/internal/lsdkf/d;-><init>(Lcom/layer/a/b/a;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkf/c;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/d;->a()Z

    goto :goto_0
.end method
