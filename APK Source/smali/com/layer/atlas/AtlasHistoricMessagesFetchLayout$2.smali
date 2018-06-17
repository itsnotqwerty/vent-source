.class final Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->we()Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;


# direct methods
.method constructor <init>(Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    iget-object v0, v0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmV:Lcom/layer/sdk/messaging/Conversation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    invoke-virtual {v0, v2}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    invoke-virtual {v0, v2}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->setRefreshing(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    iget-object v0, v0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmV:Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    sget-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    if-ne v3, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$2;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    sget-object v4, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->SYNC_PENDING:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->setRefreshing(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
