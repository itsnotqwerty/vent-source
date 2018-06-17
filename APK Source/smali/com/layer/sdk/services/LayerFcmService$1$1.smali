.class final Lcom/layer/sdk/services/LayerFcmService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/services/LayerFcmService$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btW:Lcom/layer/sdk/services/LayerFcmService$1;


# direct methods
.method constructor <init>(Lcom/layer/sdk/services/LayerFcmService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/services/LayerFcmService$1$1;->btW:Lcom/layer/sdk/services/LayerFcmService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/services/LayerFcmService;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting 3 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/layer/sdk/services/LayerFcmService;->wK()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to try closing client..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/layer/sdk/services/LayerFcmService;->wK()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/services/LayerFcmService$1$1;->btW:Lcom/layer/sdk/services/LayerFcmService$1;

    iget-object v0, v0, Lcom/layer/sdk/services/LayerFcmService$1;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/layer/sdk/services/LayerFcmService$1$1;->btW:Lcom/layer/sdk/services/LayerFcmService$1;

    iget-object v0, v0, Lcom/layer/sdk/services/LayerFcmService$1;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/services/LayerFcmService$1$1;->btW:Lcom/layer/sdk/services/LayerFcmService$1;

    iget-object v1, v1, Lcom/layer/sdk/services/LayerFcmService$1;->a:Lcom/layer/sdk/internal/a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/a;->close()V

    throw v0
.end method
