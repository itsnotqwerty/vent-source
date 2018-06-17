.class final Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/c;->delete(Lcom/layer/sdk/LayerClient$DeletionMode;)V
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
.field final synthetic bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

.field final synthetic bqS:Lcom/layer/sdk/LayerClient$DeletionMode;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/LayerClient$DeletionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqS:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    const-string v1, "Cannot delete conversations when no user is authenticated."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->CONVERSATION_IS_NEW:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot delete a new conversation."

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqS:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-object v1, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_MY_DEVICES:Lcom/layer/sdk/LayerClient$DeletionMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->wv()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot delete a message with `ALL_MY_DEVICES when conversation has read receipts disabled. Conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->CONVERSATION_DOESNT_SUPPPORT_DELETE_ALL_MY_DEVICES:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot delete a message with `ALL_MY_DEVICES when conversation has read receipts disabled"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->wv()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deleting Conversation with mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqS:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1, v0, v3}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Z)Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqe:[I

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqS:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v4}, Lcom/layer/sdk/LayerClient$DeletionMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown deletion mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqS:Lcom/layer/sdk/LayerClient$DeletionMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqS:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-boolean v5, Lcom/layer/sdk/internal/lsdkd/f;->b:Z

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/LayerClient$DeletionMode;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqS:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-boolean v4, Lcom/layer/sdk/internal/lsdkd/f;->a:Z

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/LayerClient$DeletionMode;Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v0, v2, v3}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkd/k;Lcom/layer/sdk/messaging/Conversation;)V

    invoke-virtual {v1, v2, v6}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdkd/i;->a(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqS:Lcom/layer/sdk/LayerClient$DeletionMode;

    sget-object v1, Lcom/layer/sdk/LayerClient$DeletionMode;->ALL_PARTICIPANTS:Lcom/layer/sdk/LayerClient$DeletionMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/j;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/j;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_API_ACTION:Lcom/layer/sdk/exceptions/LayerException$Type;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
