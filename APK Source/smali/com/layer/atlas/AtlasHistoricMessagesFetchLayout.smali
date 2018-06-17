.class public final Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;
.super Landroid/support/v4/widget/n;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerChangeEventListener$BackgroundThread$Weak;


# instance fields
.field public bmU:Lcom/layer/sdk/LayerClient;

.field public bmV:Lcom/layer/sdk/messaging/Conversation;

.field public bmW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x19

    iput v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmW:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x19

    iput v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmW:I

    return-void
.end method


# virtual methods
.method public final onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/layer/sdk/changes/LayerChangeEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/changes/LayerChange;

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmV:Lcom/layer/sdk/messaging/Conversation;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getAttributeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "historicSyncStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->we()Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/n;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->we()Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    goto :goto_0
.end method

.method public final we()Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;
    .locals 1

    new-instance v0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;

    invoke-direct {v0, p0}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;-><init>(Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;)V

    invoke-virtual {p0, v0}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method
