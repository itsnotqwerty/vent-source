.class final Lcom/layer/sdk/services/LayerReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/services/LayerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btX:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;

.field final synthetic btY:Lcom/layer/sdk/services/LayerReceiver;


# direct methods
.method constructor <init>(Lcom/layer/sdk/services/LayerReceiver;Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/services/LayerReceiver$1;->btY:Lcom/layer/sdk/services/LayerReceiver;

    iput-object p2, p0, Lcom/layer/sdk/services/LayerReceiver$1;->btX:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/services/LayerReceiver;->wq()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/services/LayerReceiver$1;->btX:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;

    invoke-virtual {v1}, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;->getType()Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/layer/sdk/services/LayerReceiver;->wL()Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/layer/sdk/services/LayerReceiver;->wL()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/services/LayerReceiver$Listener;

    if-nez v1, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/services/LayerReceiver$1;->btX:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;

    invoke-interface {v1, v0}, Lcom/layer/sdk/services/LayerReceiver$Listener;->onServiceEvent(Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/layer/sdk/services/LayerReceiver;->wL()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
