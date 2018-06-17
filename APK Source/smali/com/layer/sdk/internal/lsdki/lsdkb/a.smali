.class public Lcom/layer/sdk/internal/lsdki/lsdkb/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;
    }
.end annotation


# direct methods
.method public static declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;Lcom/layer/sdk/internal/lsdkd/f;Lcom/layer/sdk/internal/lsdkd/k;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;",
            "Lcom/layer/sdk/internal/lsdkd/f;",
            "Lcom/layer/sdk/internal/lsdkd/k;",
            ")V"
        }
    .end annotation

    const-class v1, Lcom/layer/sdk/internal/lsdki/lsdkb/a;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p2, p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Lcom/layer/sdk/internal/lsdkd/f;->b(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p2, p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkb/a$a;->k(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getLastMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Landroid/net/Uri;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p3, v0, v6}, Lcom/layer/sdk/internal/lsdkd/f;->c(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Landroid/net/Uri;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Lcom/layer/sdk/messaging/Message;->getPosition()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getPosition()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Landroid/net/Uri;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Lcom/layer/sdk/messaging/Message;->isDeleted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Landroid/net/Uri;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/d;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/d;

    check-cast v0, [Lcom/layer/sdk/internal/lsdkd/d;

    invoke-virtual {p3, p4, v0}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v1

    return-void
.end method
