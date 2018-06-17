.class final Lcom/layer/sdk/internal/a$f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqm:Lcom/layer/sdk/internal/a$f;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$f$2;->bqm:Lcom/layer/sdk/internal/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/a$f$2;->bqm:Lcom/layer/sdk/internal/a$f;

    invoke-static {v0}, Lcom/layer/sdk/internal/a$f;->b(Lcom/layer/sdk/internal/a$f;)Lcom/layer/sdk/LayerClient$ContentAvailableCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/a$f$2;->bqm:Lcom/layer/sdk/internal/a$f;

    invoke-static {v1}, Lcom/layer/sdk/internal/a$f;->a(Lcom/layer/sdk/internal/a$f;)Lcom/layer/sdk/LayerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/a$f$2;->bqm:Lcom/layer/sdk/internal/a$f;

    invoke-static {v2}, Lcom/layer/sdk/internal/a$f;->c(Lcom/layer/sdk/internal/a$f;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v4, Lcom/layer/sdk/exceptions/LayerException$Type;->TIMED_OUT:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-direct {v3, v4}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/layer/sdk/LayerClient$ContentAvailableCallback;->onContentFailed(Lcom/layer/sdk/LayerClient;Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method
