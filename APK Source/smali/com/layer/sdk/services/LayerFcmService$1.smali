.class final Lcom/layer/sdk/services/LayerFcmService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/services/LayerFcmService;->a(Lcom/layer/sdk/internal/a;Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/a;

.field final synthetic b:Ljava/util/HashSet;

.field private final btV:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Ljava/util/HashSet;)V
    .locals 2

    iput-object p1, p0, Lcom/layer/sdk/services/LayerFcmService$1;->a:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/services/LayerFcmService$1;->b:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/services/LayerFcmService$1;->btV:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/services/LayerFcmService$1;->btV:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/layer/sdk/services/LayerFcmService$1$1;

    invoke-direct {v1, p0}, Lcom/layer/sdk/services/LayerFcmService$1$1;-><init>(Lcom/layer/sdk/services/LayerFcmService$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final onConnectionConnected(Lcom/layer/sdk/LayerClient;)V
    .locals 8

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/layer/sdk/LayerClient;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/services/LayerFcmService$1;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/layer/sdk/LayerClient;->unregisterConnectionListener(Lcom/layer/sdk/listeners/LayerConnectionListener;)Lcom/layer/sdk/LayerClient;

    move-object v0, p1

    check-cast v0, Lcom/layer/sdk/internal/a;

    sget-object v1, Lcom/layer/sdk/internal/lsdki/a$e;->c:Lcom/layer/sdk/internal/lsdki/a$e;

    iget-object v3, p0, Lcom/layer/sdk/services/LayerFcmService$1;->b:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    iget-object v5, p0, Lcom/layer/sdk/services/LayerFcmService$1;->b:Ljava/util/HashSet;

    new-instance v6, Lcom/layer/sdk/services/LayerFcmService$1$2;

    invoke-direct {v6, p0}, Lcom/layer/sdk/services/LayerFcmService$1$2;-><init>(Lcom/layer/sdk/services/LayerFcmService$1;)V

    const/4 v7, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/layer/sdk/internal/a;->a(Lcom/layer/sdk/internal/lsdki/a$e;ZZZLjava/util/HashSet;Lcom/layer/sdk/internal/lsdki/a$c;Z)V

    goto :goto_0
.end method

.method public final onConnectionDisconnected(Lcom/layer/sdk/LayerClient;)V
    .locals 0

    invoke-virtual {p0}, Lcom/layer/sdk/services/LayerFcmService$1;->a()V

    return-void
.end method

.method public final onConnectionError(Lcom/layer/sdk/LayerClient;Lcom/layer/sdk/exceptions/LayerException;)V
    .locals 0

    invoke-virtual {p0}, Lcom/layer/sdk/services/LayerFcmService$1;->a()V

    return-void
.end method
