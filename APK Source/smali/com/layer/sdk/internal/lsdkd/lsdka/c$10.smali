.class final Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/c;->send(Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/listeners/LayerProgressListener;)V
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
        "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

.field final synthetic bqT:Lcom/layer/sdk/messaging/Message;

.field final synthetic bqU:Lcom/layer/sdk/listeners/LayerProgressListener;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/listeners/LayerProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqT:Lcom/layer/sdk/messaging/Message;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqU:Lcom/layer/sdk/listeners/LayerProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    const-string v1, "Cannot send messages when no user is authenticated."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqT:Lcom/layer/sdk/messaging/Message;

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->MESSAGE_ALREADY_SENT:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot send an already-sent Message."

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->CONVERSATION_DELETED:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot send a message to a deleted Conversation."

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v4

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/util/Set;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    new-array v1, v10, [Lcom/layer/sdk/internal/lsdkd/d;

    aput-object v0, v1, v9

    invoke-virtual {v2, v3, v1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/j;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/layer/sdk/internal/lsdkd/j;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v1

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v1, v4, v9}, Lcom/layer/sdk/internal/lsdke/b;->a(Lcom/layer/sdk/messaging/Conversation;I)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v1

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v1, v4, v9}, Lcom/layer/sdk/internal/lsdke/b;->b(Lcom/layer/sdk/messaging/Conversation;I)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Ljava/lang/Integer;)V

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqT:Lcom/layer/sdk/messaging/Message;

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v5

    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(J)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v11}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getRecipientStatus()Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v4

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdkd/h;->j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v4

    sget-object v5, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j()Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-eqz v1, :cond_2

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/util/Date;)V

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v7

    invoke-interface {v7}, Lcom/layer/sdk/internal/lsdkd/h;->g()Lcom/layer/sdk/internal/lsdkc/a;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Lcom/layer/sdk/internal/lsdkc/a$c;

    move-result-object v7

    sget-object v8, Lcom/layer/sdk/internal/lsdkc/a$c;->b:Lcom/layer/sdk/internal/lsdkc/a$c;

    if-ne v7, v8, :cond_3

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalMessageCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Integer;)V

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v4

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v4

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v4, v6, v1}, Lcom/layer/sdk/internal/lsdke/b;->a(Lcom/layer/sdk/messaging/Conversation;I)V

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    :cond_5
    new-array v1, v10, [Lcom/layer/sdk/internal/lsdkd/d;

    aput-object v0, v1, v9

    invoke-virtual {v2, v3, v1}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-virtual {v2, v3, v10}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v3

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdkd/h;->g()Lcom/layer/sdk/internal/lsdkc/a;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqU:Lcom/layer/sdk/listeners/LayerProgressListener;

    invoke-virtual {v3, v1, v4}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/h;->g()Lcom/layer/sdk/internal/lsdkc/a;

    move-result-object v2

    invoke-virtual {v2, v0, v11}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener;)Z

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdkd/i;->a(Ljava/util/HashSet;)V

    :cond_9
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_API_ACTION:Lcom/layer/sdk/exceptions/LayerException$Type;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqT:Lcom/layer/sdk/messaging/Message;

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->e()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->e(Z)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getRecipientStatus()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/h;->j()Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/util/Date;)V

    return-object v0
.end method
