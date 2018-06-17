.class public Lcom/layer/sdk/exceptions/LayerConversationException;
.super Lcom/layer/sdk/exceptions/LayerException;


# instance fields
.field private a:Lcom/layer/sdk/messaging/Conversation;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/Conversation;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/layer/sdk/exceptions/LayerConversationException;->a:Lcom/layer/sdk/messaging/Conversation;

    return-void
.end method


# virtual methods
.method public getConversation()Lcom/layer/sdk/messaging/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/exceptions/LayerConversationException;->a:Lcom/layer/sdk/messaging/Conversation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/exceptions/LayerConversationException;->a:Lcom/layer/sdk/messaging/Conversation;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/layer/sdk/exceptions/LayerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/exceptions/LayerConversationException;->a:Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/layer/sdk/exceptions/LayerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : <null Conversation>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
