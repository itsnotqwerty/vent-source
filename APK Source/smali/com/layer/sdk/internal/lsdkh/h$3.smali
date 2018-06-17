.class final Lcom/layer/sdk/internal/lsdkh/h$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkh/h;->onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bsn:Lcom/layer/sdk/changes/LayerChangeEvent;

.field final synthetic bso:Lcom/layer/sdk/internal/lsdkh/h;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkh/h;Lcom/layer/sdk/changes/LayerChangeEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/h$3;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkh/h$3;->bsn:Lcom/layer/sdk/changes/LayerChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$3;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->b(Lcom/layer/sdk/internal/lsdkh/h;)Lcom/layer/sdk/internal/lsdkh/h$d;

    move-result-object v2

    iget-object v0, v2, Lcom/layer/sdk/internal/lsdkh/h$d;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v2, Lcom/layer/sdk/internal/lsdkh/h$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkh/h$f;

    instance-of v5, v0, Lcom/layer/sdk/internal/lsdkh/h$h;

    if-nez v5, :cond_0

    instance-of v5, v0, Lcom/layer/sdk/internal/lsdkh/h$i;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/layer/sdk/internal/lsdkh/h$i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/h$i;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    instance-of v5, v0, Lcom/layer/sdk/internal/lsdkh/h$g;

    if-eqz v5, :cond_0

    check-cast v0, Lcom/layer/sdk/internal/lsdkh/h$g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkh/h$g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$3;->bsn:Lcom/layer/sdk/changes/LayerChangeEvent;

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChangeEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/layer/sdk/changes/LayerChange;

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/Queryable;

    invoke-interface {v0}, Lcom/layer/sdk/query/Queryable;->getId()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v0

    sget-object v8, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v0, v8}, Lcom/layer/sdk/changes/LayerChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$3;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->g(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$3;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/h;->g(Lcom/layer/sdk/internal/lsdkh/h;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/Queryable;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v0, v2, Lcom/layer/sdk/internal/lsdkh/h$d;->a:Ljava/util/List;

    invoke-static {v5, v0}, Lcom/layer/sdk/internal/lsdkh/h;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v2, Lcom/layer/sdk/internal/lsdkh/h$d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/h$3;->bso:Lcom/layer/sdk/internal/lsdkh/h;

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/layer/sdk/internal/lsdkh/h$d;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkh/h;->a(Lcom/layer/sdk/internal/lsdkh/h;ZLjava/util/List;)V

    return-void
.end method
