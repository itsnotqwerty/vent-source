.class public Lcom/layer/sdk/internal/lsdkd/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/f$b;


# instance fields
.field private a:Lcom/layer/sdk/internal/lsdkd/j;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdkd/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/d;Ljava/util/Map;)Lcom/layer/sdk/internal/lsdkd/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdkd/d;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/layer/sdk/internal/lsdkd/g;->b(Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/layer/sdk/internal/lsdkd/j;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/j;->a(Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkd/c;)V
    .locals 12

    const/4 v11, 0x1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/k$a;->d:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/j;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v2

    sget-object v4, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v2, v4}, Lcom/layer/sdk/changes/LayerChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v2

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/b;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {v4, v2, v1}, Lcom/layer/sdk/internal/lsdkd/j;->a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {v2, v5, v11}, Lcom/layer/sdk/internal/lsdkd/j;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    throw v1

    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/b;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/b;->a()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v8

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    sget-object v9, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v1, v9}, Lcom/layer/sdk/changes/LayerChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/layer/sdk/internal/lsdkd/j;->c(Ljava/util/Set;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v9, 0x0

    aput-object v3, v2, v9

    invoke-virtual {v1, v5, v2}, Lcom/layer/sdk/internal/lsdkd/j;->a(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/layer/sdk/internal/lsdkd/g;->b(Landroid/net/Uri;Ljava/util/Map;)V

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/b;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/layer/sdk/internal/lsdkd/j;->a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/d;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/layer/sdk/internal/lsdkd/j;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-object v0, v3

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    :goto_2
    sget-object v1, Lcom/layer/sdk/internal/lsdkd/g$1;->bqe:[I

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v3, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Foreground changeable cannot be null for insert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-direct {p0, v2, v6}, Lcom/layer/sdk/internal/lsdkd/g;->a(Lcom/layer/sdk/internal/lsdkd/d;Ljava/util/Map;)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v3}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-interface {v3, v4}, Lcom/layer/sdk/internal/lsdkd/d;->a(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto/16 :goto_1

    :pswitch_1
    if-eqz v3, :cond_6

    invoke-virtual {v5, v3}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-direct {p0, v8, v6}, Lcom/layer/sdk/internal/lsdkd/g;->a(Landroid/net/Uri;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3, v4}, Lcom/layer/sdk/internal/lsdkd/d;->a(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {v3, v4}, Lcom/layer/sdk/internal/lsdkd/d;->b(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5, v4}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz v3, :cond_8

    invoke-virtual {v5, v3}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-direct {p0, v8, v6}, Lcom/layer/sdk/internal/lsdkd/g;->a(Landroid/net/Uri;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3, v4}, Lcom/layer/sdk/internal/lsdkd/d;->a(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto/16 :goto_1

    :cond_7
    invoke-interface {v3, v4}, Lcom/layer/sdk/internal/lsdkd/d;->b(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v5, v4}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/g;->a:Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {v1, v5, v11}, Lcom/layer/sdk/internal/lsdkd/j;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
