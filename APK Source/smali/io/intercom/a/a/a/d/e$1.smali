.class final Lio/intercom/a/a/a/d/e$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cPf:Lio/intercom/a/a/a/d/e;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/d/e;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/d/e$1;->cPf:Lio/intercom/a/a/a/d/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/d/e$1;->cPf:Lio/intercom/a/a/a/d/e;

    iget-boolean v1, v0, Lio/intercom/a/a/a/d/e;->cPd:Z

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/d/e$1;->cPf:Lio/intercom/a/a/a/d/e;

    invoke-static {p1}, Lio/intercom/a/a/a/d/e;->cb(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lio/intercom/a/a/a/d/e;->cPd:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lio/intercom/a/a/a/d/e$1;->cPf:Lio/intercom/a/a/a/d/e;

    iget-boolean v0, v0, Lio/intercom/a/a/a/d/e;->cPd:Z

    if-eq v1, v0, :cond_1

    const-string v0, "ConnectivityMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectivity changed, isConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/a/a/a/d/e$1;->cPf:Lio/intercom/a/a/a/d/e;

    iget-boolean v2, v2, Lio/intercom/a/a/a/d/e;->cPd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/d/e$1;->cPf:Lio/intercom/a/a/a/d/e;

    iget-object v0, v0, Lio/intercom/a/a/a/d/e;->cPc:Lio/intercom/a/a/a/d/c$a;

    iget-object v1, p0, Lio/intercom/a/a/a/d/e$1;->cPf:Lio/intercom/a/a/a/d/e;

    iget-boolean v1, v1, Lio/intercom/a/a/a/d/e;->cPd:Z

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/d/c$a;->bu(Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ConnectivityMonitor"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ConnectivityMonitor"

    const-string v3, "Failed to determine connectivity status when connectivity changed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v0, p0, Lio/intercom/a/a/a/d/e$1;->cPf:Lio/intercom/a/a/a/d/e;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/intercom/a/a/a/d/e;->cPd:Z

    goto :goto_0
.end method
