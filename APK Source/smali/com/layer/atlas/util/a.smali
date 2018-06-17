.class public final Lcom/layer/atlas/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerChangeEventListener$Weak;


# instance fields
.field private final adP:Landroid/support/v7/widget/RecyclerView$a;

.field private final bpp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/atlas/util/a;->bpp:Ljava/util/Map;

    iput-object p1, p0, Lcom/layer/atlas/util/a;->adP:Landroid/support/v7/widget/RecyclerView$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    iget-object v1, p0, Lcom/layer/atlas/util/a;->bpp:Ljava/util/Map;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/layer/atlas/util/a;->bpp:Ljava/util/Map;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/layer/sdk/changes/LayerChangeEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/changes/LayerChange;

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getObjectType()Lcom/layer/sdk/messaging/LayerObject$Type;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/messaging/LayerObject$Type;->IDENTITY:Lcom/layer/sdk/messaging/LayerObject$Type;

    invoke-virtual {v2, v3}, Lcom/layer/sdk/messaging/LayerObject$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getId()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/atlas/util/a;->bpp:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/layer/atlas/util/a;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$a;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
