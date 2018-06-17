.class public Lcom/layer/sdk/internal/lsdkf/d;
.super Lcom/layer/a/a;


# instance fields
.field private final a:Lcom/layer/b/d/k;

.field private final b:Lcom/layer/sdk/internal/lsdke/g;

.field private final c:Lcom/layer/sdk/internal/lsdkf/c;


# direct methods
.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkf/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkf/d;->a:Lcom/layer/b/d/k;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkf/d;->b:Lcom/layer/sdk/internal/lsdke/g;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkf/d;->c:Lcom/layer/sdk/internal/lsdkf/c;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 9

    const/4 v1, 0x3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkf/d;->a(Lcom/layer/a/c/d;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkf/a;

    if-eqz v0, :cond_e

    if-ne p3, v1, :cond_e

    check-cast p1, Lcom/layer/sdk/internal/lsdkf/a;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkf/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/d;->c:Lcom/layer/sdk/internal/lsdkf/c;

    iget-boolean v2, v1, Lcom/layer/sdk/internal/lsdkf/c;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    monitor-enter v3

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v5, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v5, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v5, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsb:Lcom/layer/sdk/internal/b;

    invoke-virtual {v5}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/layer/sdk/internal/lsdke/g;->t()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkf/c;->v(Ljava/util/List;)Ljava/util/LinkedHashSet;

    move-result-object v5

    iget-object v6, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsb:Lcom/layer/sdk/internal/b;

    invoke-virtual {v6}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/layer/sdk/internal/lsdke/g;->u()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkf/c;->v(Ljava/util/List;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Nothing new in toBlockSet and toUnblockSet, bailing"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    monitor-exit v3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/policy/Policy;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Persisting block for: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    iget-object v6, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsb:Lcom/layer/sdk/internal/b;

    invoke-virtual {v6}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v6

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/layer/sdk/internal/lsdke/g;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/policy/Policy;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/layer/sdk/internal/lsdkf/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Persisting unblock for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    iget-object v5, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsb:Lcom/layer/sdk/internal/b;

    invoke-virtual {v5}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v5

    invoke-virtual {v0}, Lcom/layer/sdk/policy/Policy;->getSentByUserID()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/layer/sdk/internal/lsdke/g;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v0, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsc:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lcom/layer/sdk/internal/lsdkf/c;->bsd:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkf/c$a;

    invoke-interface {v0, v4, v5}, Lcom/layer/sdk/internal/lsdkf/c$a;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    :cond_d
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_e
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkf/e;

    if-eqz v0, :cond_0

    if-ne p3, v1, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkf/e;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkf/e;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkf/e$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/d;->c:Lcom/layer/sdk/internal/lsdkf/c;

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkf/c;->b(Lcom/layer/sdk/internal/lsdkf/e$a;)V

    goto/16 :goto_0
.end method

.method public a()Z
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/d;->b:Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/g;->t()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkf/d;->b:Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdke/g;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Lcom/layer/sdk/internal/lsdkf/e$a;

    invoke-direct {v6}, Lcom/layer/sdk/internal/lsdkf/e$a;-><init>()V

    iput-object v0, v6, Lcom/layer/sdk/internal/lsdkf/e$a;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/sdk/internal/lsdkf/e$a;->bry:Ljava/lang/Boolean;

    new-instance v0, Lcom/layer/sdk/internal/lsdkf/e;

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdkf/d;->a:Lcom/layer/b/d/k;

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdkf/d;->b:Lcom/layer/sdk/internal/lsdke/g;

    invoke-direct {v0, v7, v8, v6}, Lcom/layer/sdk/internal/lsdkf/e;-><init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkf/e$a;)V

    new-array v6, v2, [Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/e;->b()Lcom/layer/a/c/a;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lcom/layer/sdk/internal/lsdkf/d;->a([Lcom/layer/a/c/d;)V

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Lcom/layer/sdk/internal/lsdkf/e$a;

    invoke-direct {v6}, Lcom/layer/sdk/internal/lsdkf/e$a;-><init>()V

    iput-object v0, v6, Lcom/layer/sdk/internal/lsdkf/e$a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v6, Lcom/layer/sdk/internal/lsdkf/e$a;->bry:Ljava/lang/Boolean;

    new-instance v0, Lcom/layer/sdk/internal/lsdkf/e;

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdkf/d;->a:Lcom/layer/b/d/k;

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdkf/d;->b:Lcom/layer/sdk/internal/lsdke/g;

    invoke-direct {v0, v7, v8, v6}, Lcom/layer/sdk/internal/lsdkf/e;-><init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkf/e$a;)V

    new-array v6, v2, [Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/e;->b()Lcom/layer/a/c/a;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lcom/layer/sdk/internal/lsdkf/d;->a([Lcom/layer/a/c/d;)V

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/layer/sdk/internal/lsdkf/a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkf/d;->a:Lcom/layer/b/d/k;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/layer/sdk/internal/lsdkf/a;-><init>(Lcom/layer/b/d/k;Ljava/lang/Void;)V

    new-array v3, v2, [Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkf/a;->b()Lcom/layer/a/c/a;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Lcom/layer/sdk/internal/lsdkf/d;->a([Lcom/layer/a/c/d;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkf/d;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkf/d;->a(I)V

    move v0, v1

    :goto_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkf/d;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkf/d;->a(Lcom/layer/a/c/d;)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method
