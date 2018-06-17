.class final Landroid/support/v4/e/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DL:Landroid/support/v4/e/c;


# direct methods
.method constructor <init>(Landroid/support/v4/e/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/e/c$1;->DL:Landroid/support/v4/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v6

    :pswitch_0
    iget-object v1, p0, Landroid/support/v4/e/c$1;->DL:Landroid/support/v4/e/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v2, v1, Landroid/support/v4/e/c;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v1, v1, Landroid/support/v4/e/c;->DJ:I

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/e/c$1;->DL:Landroid/support/v4/e/c;

    iget-object v1, v0, Landroid/support/v4/e/c;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_0
    :try_start_2
    iget-object v2, v0, Landroid/support/v4/e/c;->DG:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/e/c;->DG:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/e/c;->mHandler:Landroid/os/Handler;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
