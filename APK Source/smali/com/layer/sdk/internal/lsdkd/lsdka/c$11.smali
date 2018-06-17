.class final Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/c;->syncMoreHistoricMessages(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/f$a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic bqM:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

.field final synthetic bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqM:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iput p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqM:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->MORE_AVAILABLE:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    sget-object v2, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->SYNC_PENDING:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqM:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/layer/sdk/internal/lsdke/b;->a(Lcom/layer/sdk/messaging/Conversation;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Ljava/util/HashSet;)V

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    new-array v2, v5, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqM:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    :cond_2
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_API_ACTION:Lcom/layer/sdk/exceptions/LayerException$Type;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->wv()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "failed to fetch more historic messages"

    invoke-static {v0, v1, p2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
