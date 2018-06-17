.class public final Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;


# direct methods
.method public constructor <init>(Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$1;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final em()V
    .locals 2

    iget-object v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$1;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    iget-object v0, v0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmV:Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$1;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    iget-object v0, v0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmV:Lcom/layer/sdk/messaging/Conversation;

    iget-object v1, p0, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout$1;->bmX:Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;

    iget v1, v1, Lcom/layer/atlas/AtlasHistoricMessagesFetchLayout;->bmW:I

    invoke-virtual {v0, v1}, Lcom/layer/sdk/messaging/Conversation;->syncMoreHistoricMessages(I)V

    :cond_0
    return-void
.end method
