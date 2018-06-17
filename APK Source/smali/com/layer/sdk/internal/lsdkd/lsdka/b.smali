.class public Lcom/layer/sdk/internal/lsdkd/lsdka/b;
.super Lcom/layer/sdk/internal/lsdkd/lsdka/i;

# interfaces
.implements Lcom/layer/sdk/messaging/Announcement;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/layer/sdk/messaging/Message$RecipientStatus;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/b;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->d()Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->SENT:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getConversation()Lcom/layer/sdk/messaging/Conversation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipientStatus()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Lcom/layer/sdk/messaging/Message$RecipientStatus;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/b;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/b;->getRecipientStatus(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
