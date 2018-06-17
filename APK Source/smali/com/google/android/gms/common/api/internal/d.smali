.class final Lcom/google/android/gms/common/api/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/c/a",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/google/android/gms/common/api/internal/cb",
        "<*>;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic aDP:Lcom/google/android/gms/common/api/internal/b;


# virtual methods
.method public final a(Lcom/google/android/gms/c/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/c/e",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/b;->aDK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/c/e;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    new-instance v1, Landroid/support/v4/g/a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/b;->aDA:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/g/a;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/b;->aDA:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cs;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    sget-object v3, Lcom/google/android/gms/common/a;->aCh:Lcom/google/android/gms/common/a;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/c/e;->getException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/common/api/c;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/c/e;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-boolean v1, v1, Lcom/google/android/gms/common/api/internal/b;->aDI:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    new-instance v2, Landroid/support/v4/g/a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/b;->aDA:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v4/g/a;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/b;->aDA:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/cs;

    iget-object v3, v1, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/a;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v5, v1, v4}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/api/internal/cs;Lcom/google/android/gms/common/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    new-instance v4, Lcom/google/android/gms/common/a;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/a;-><init>(I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/c;->aCy:Landroid/support/v4/g/a;

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/b;->aDL:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/a;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->b(Lcom/google/android/gms/common/api/internal/b;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b;->c(Lcom/google/android/gms/common/api/internal/b;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/b;->aDF:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_6
    :try_start_3
    const-string v0, "ConnectionlessGAC"

    const-string v1, "Unexpected availability exception"

    invoke-virtual {p1}, Lcom/google/android/gms/c/e;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d;->aDP:Lcom/google/android/gms/common/api/internal/b;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method
