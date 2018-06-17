.class final Lcom/layer/sdk/internal/telemetry/g;
.super Ljava/lang/Object;


# instance fields
.field final btN:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        value = "id"
    .end annotation
.end field

.field final btO:Ljava/lang/String;
    .annotation runtime Lcom/google/a/a/c;
        value = "layer_app_id"
    .end annotation
.end field

.field final btP:Ljava/util/List;
    .annotation runtime Lcom/google/a/a/c;
        value = "records"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/telemetry/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/telemetry/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/telemetry/g;->btN:Ljava/lang/String;

    iput-object p2, p0, Lcom/layer/sdk/internal/telemetry/g;->btO:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Lcom/layer/sdk/internal/telemetry/f;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/a/g;

    invoke-direct {v0}, Lcom/google/a/g;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/a/g;->bgR:Z

    invoke-virtual {v0}, Lcom/google/a/g;->vc()Lcom/google/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/telemetry/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/f;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/a/f;->ab(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/telemetry/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method final wH()Lcom/layer/sdk/internal/telemetry/f;
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/telemetry/f;

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final wI()Lcom/layer/sdk/internal/telemetry/f;
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    iget-object v2, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/telemetry/f;

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final wJ()I
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/g;->btP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
