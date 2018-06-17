.class final Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/c;->putMetadataAtKeyPath(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic bqO:Lcom/layer/sdk/internal/lsdkk/m$c;

.field final synthetic bqP:Lcom/layer/sdk/internal/lsdkk/m$h;

.field final synthetic bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$h;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqO:Lcom/layer/sdk/internal/lsdkk/m$c;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqP:Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    const-string v1, "Cannot put metadata when no user is authenticated."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->CONVERSATION_DELETED:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot put metadata on a deleted conversation."

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/k;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqO:Lcom/layer/sdk/internal/lsdkk/m$c;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqP:Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v2, v3, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    new-array v2, v5, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-virtual {v0, v1, v5}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdkd/i;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_API_ACTION:Lcom/layer/sdk/exceptions/LayerException$Type;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    return-void
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->wv()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Putting Conversation metadata at key path"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqQ:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqO:Lcom/layer/sdk/internal/lsdkk/m$c;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;->bqP:Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
