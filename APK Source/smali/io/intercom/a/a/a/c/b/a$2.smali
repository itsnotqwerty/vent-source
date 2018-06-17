.class final Lio/intercom/a/a/a/c/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cIK:Lio/intercom/a/a/a/c/b/a;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/a$2;->cIK:Lio/intercom/a/a/a/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a$2;->cIK:Lio/intercom/a/a/a/c/b/a;

    iget-boolean v0, v0, Lio/intercom/a/a/a/c/b/a;->cII:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a$2;->cIK:Lio/intercom/a/a/a/c/b/a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/a;->cIG:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a$b;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a$2;->cIK:Lio/intercom/a/a/a/c/b/a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/a;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a$2;->cIK:Lio/intercom/a/a/a/c/b/a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/a;->cIJ:Lio/intercom/a/a/a/c/b/a$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    return-void
.end method
