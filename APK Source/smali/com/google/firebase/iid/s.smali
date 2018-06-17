.class final synthetic Lcom/google/firebase/iid/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bfA:Lcom/google/firebase/iid/p;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/s;->bfA:Lcom/google/firebase/iid/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x2

    iget-object v1, p0, Lcom/google/firebase/iid/s;->bfA:Lcom/google/firebase/iid/p;

    :goto_0
    monitor-enter v1

    :try_start_0
    iget v0, v1, Lcom/google/firebase/iid/p;->state:I

    if-eq v0, v7, :cond_0

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    iget-object v0, v1, Lcom/google/firebase/iid/p;->bfx:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/iid/p;->uN()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/google/firebase/iid/p;->bfx:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/w;

    iget-object v2, v1, Lcom/google/firebase/iid/p;->bfy:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/firebase/iid/w;->bfD:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v1, Lcom/google/firebase/iid/p;->bfz:Lcom/google/firebase/iid/o;

    iget-object v2, v2, Lcom/google/firebase/iid/o;->bfs:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/firebase/iid/t;

    invoke-direct {v3, v1, v0}, Lcom/google/firebase/iid/t;-><init>(Lcom/google/firebase/iid/p;Lcom/google/firebase/iid/w;)V

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "MessengerIpcClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MessengerIpcClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sending "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, v1, Lcom/google/firebase/iid/p;->bfz:Lcom/google/firebase/iid/o;

    iget-object v2, v2, Lcom/google/firebase/iid/o;->aUM:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/firebase/iid/p;->bfv:Landroid/os/Messenger;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iget v5, v0, Lcom/google/firebase/iid/w;->what:I

    iput v5, v4, Landroid/os/Message;->what:I

    iget v5, v0, Lcom/google/firebase/iid/w;->bfD:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    iput-object v3, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "oneWay"

    invoke-virtual {v0}, Lcom/google/firebase/iid/w;->uP()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "pkg"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    iget-object v0, v0, Lcom/google/firebase/iid/w;->bfF:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_2
    iget-object v0, v1, Lcom/google/firebase/iid/p;->bfw:Lcom/google/firebase/iid/u;

    iget-object v2, v0, Lcom/google/firebase/iid/u;->bfp:Landroid/os/Messenger;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/google/firebase/iid/u;->bfp:Landroid/os/Messenger;

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/google/firebase/iid/p;->f(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    iget-object v2, v0, Lcom/google/firebase/iid/u;->bfC:Lcom/google/firebase/iid/m;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/google/firebase/iid/u;->bfC:Lcom/google/firebase/iid/m;

    invoke-virtual {v0, v4}, Lcom/google/firebase/iid/m;->send(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Both messengers are null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
.end method
