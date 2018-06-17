.class final Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/j;->deleteLocalContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/sdk/internal/lsdkk/f$c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    const-string v1, "Cannot delete message part data when no user is authenticated."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->g()Lcom/layer/sdk/internal/lsdkc/a;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    const/4 v2, 0x1

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/k$a;->a:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;ZLcom/layer/sdk/internal/lsdkd/k$a;)Z

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_API_ACTION:Lcom/layer/sdk/exceptions/LayerException$Type;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    return-void
.end method
