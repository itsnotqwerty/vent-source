.class final Lcom/layer/sdk/internal/lsdkh/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkh/d;->a()Lcom/layer/sdk/internal/lsdkh/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bsk:Lcom/layer/sdk/internal/lsdkh/d;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkh/d;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/d;->b(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkh/d;->c(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkh/d;->d(Lcom/layer/sdk/internal/lsdkh/d;)Lcom/layer/sdk/LayerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/LayerClient;->registerEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkh/d;->a(Lcom/layer/sdk/internal/lsdkh/d;Ljava/util/List;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/d;->e(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkh/d;->f(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkh/d$2;->bsk:Lcom/layer/sdk/internal/lsdkh/d;

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkh/d;->f(Lcom/layer/sdk/internal/lsdkh/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
