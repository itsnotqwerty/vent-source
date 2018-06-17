.class public final Lio/intercom/a/a/a/c/c/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/c/p$a;
    }
.end annotation


# instance fields
.field private final cMX:Lio/intercom/a/a/a/c/c/r;

.field private final cMY:Lio/intercom/a/a/a/c/c/p$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/g/k$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/c/r;

    invoke-direct {v0, p1}, Lio/intercom/a/a/a/c/c/r;-><init>(Landroid/support/v4/g/k$a;)V

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/c/c/p;-><init>(Lio/intercom/a/a/a/c/c/r;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/c/c/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/c/p$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/c/p$a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/c/p;->cMY:Lio/intercom/a/a/a/c/c/p$a;

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/p;->cMX:Lio/intercom/a/a/a/c/c/r;

    return-void
.end method


# virtual methods
.method public final declared-synchronized F(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/p;->cMX:Lio/intercom/a/a/a/c/c/r;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/c/r;->F(Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ap(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/c/n",
            "<TA;*>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/p;->cMY:Lio/intercom/a/a/a/c/c/p$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/p$a;->cMZ:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/p$a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/p;->cMX:Lio/intercom/a/a/a/c/c/r;

    invoke-virtual {v0, v2}, Lio/intercom/a/a/a/c/c/r;->G(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/p;->cMY:Lio/intercom/a/a/a/c/c/p$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/p$a;->cMZ:Ljava/util/Map;

    new-instance v3, Lio/intercom/a/a/a/c/c/p$a$a;

    invoke-direct {v3, v1}, Lio/intercom/a/a/a/c/c/p$a$a;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/p$a$a;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Already cached loaders for model: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, v0, Lio/intercom/a/a/a/c/c/p$a$a;->cNa:Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/c/n;->aw(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    monitor-exit p0

    return-object v4

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lio/intercom/a/a/a/c/c/o",
            "<+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/c/p;->cMX:Lio/intercom/a/a/a/c/c/r;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/a/a/a/c/c/r;->b(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/c/p;->cMY:Lio/intercom/a/a/a/c/c/p$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/p$a;->cMZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
