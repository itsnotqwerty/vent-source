.class final Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/c;->removeParticipants(Ljava/util/Set;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/layer/sdk/internal/lsdke/b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->a:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f(Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-interface {v0, v3, v4}, Lcom/layer/sdk/internal/lsdke/b;->a(Lcom/layer/sdk/messaging/Conversation;Z)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/j;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkd/j;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    :cond_1
    new-array v0, v4, [Lcom/layer/sdk/internal/lsdkd/d;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    aput-object v3, v0, v5

    invoke-virtual {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-virtual {v1, v2, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdkd/i;->a(Ljava/util/HashSet;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_API_ACTION:Lcom/layer/sdk/exceptions/LayerException$Type;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;->bqL:Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    return-void
.end method
