.class public Lcom/layer/sdk/messaging/ConversationOptions;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/layer/sdk/messaging/ConversationOptions;->a:Z

    iput-boolean v0, p0, Lcom/layer/sdk/messaging/ConversationOptions;->b:Z

    return-void
.end method


# virtual methods
.method public deliveryReceipts(Z)Lcom/layer/sdk/messaging/ConversationOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/layer/sdk/messaging/ConversationOptions;->a:Z

    return-object p0
.end method

.method public distinct(Z)Lcom/layer/sdk/messaging/ConversationOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/layer/sdk/messaging/ConversationOptions;->b:Z

    return-object p0
.end method

.method public isDeliveryReceipts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/messaging/ConversationOptions;->a:Z

    return v0
.end method

.method public isDistinct()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/messaging/ConversationOptions;->b:Z

    return v0
.end method
