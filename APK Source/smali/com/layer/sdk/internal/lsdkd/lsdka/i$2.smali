.class final Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/i;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/f$b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/i;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    const-string v1, "Cannot mark message read when no user is authenticated."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->wx()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Cannot mark a new message read"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->MESSAGE_IS_NEW:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot mark a new message read"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->wx()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Cannot mark a deleted message read"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->MESSAGE_DELETED:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot mark a deleted message read"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->wx()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Cannot mark your own message read"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->MARKING_OWN_MESSAGE_READ:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot mark your own message read"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->isReadReceiptsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->wx()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Cannot mark a message as read when the conversation has read receipts disabled"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->CONVERSATION_HAS_DISABLED_READ_RECEIPTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot mark a message as read when the conversation has read receipts disabled"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_7
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getRecipientStatus(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    if-eq v0, v1, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->wx()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Marking Message (Id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") as read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v3, v3, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Lcom/layer/sdk/messaging/Message$RecipientStatus;Ljava/lang/Integer;)V

    new-array v0, v6, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    aput-object v4, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/i;->n()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v4, v4, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lcom/layer/sdk/internal/lsdke/b;->b(Lcom/layer/sdk/messaging/Conversation;I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Ljava/lang/Integer;)V

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    :cond_1
    invoke-virtual {v1, v2, v6}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdkd/i;->a(Ljava/util/HashSet;)V

    :cond_3
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_API_ACTION:Lcom/layer/sdk/exceptions/LayerException$Type;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;->brc:Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v2, v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/h;->j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getRecipientStatus(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    :pswitch_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$3;->b:[I

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/Message$RecipientStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
