.class final Lcom/firebase/jobdispatcher/s$1;
.super Lcom/firebase/jobdispatcher/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic axO:Lcom/firebase/jobdispatcher/s;


# direct methods
.method constructor <init>(Lcom/firebase/jobdispatcher/s;)V
    .locals 0

    iput-object p1, p0, Lcom/firebase/jobdispatcher/s$1;->axO:Lcom/firebase/jobdispatcher/s;

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Lcom/firebase/jobdispatcher/l;)V
    .locals 7

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kK()Lcom/firebase/jobdispatcher/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/p;->g(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/q$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "FJD.JobService"

    const-string v1, "start: unknown invocation provided"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/s$1;->axO:Lcom/firebase/jobdispatcher/s;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/q$a;->kT()Lcom/firebase/jobdispatcher/q;

    move-result-object v0

    iget-object v2, v1, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    invoke-interface {v0}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/g/m;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "FJD.JobService"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Job with tag = %s was already running."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    invoke-interface {v0}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/firebase/jobdispatcher/s$a;

    const/4 v6, 0x0

    invoke-direct {v5, v0, p2, v6}, Lcom/firebase/jobdispatcher/s$a;-><init>(Lcom/firebase/jobdispatcher/r;Lcom/firebase/jobdispatcher/l;B)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/firebase/jobdispatcher/s;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/firebase/jobdispatcher/s$2;

    invoke-direct {v4, v1, v0}, Lcom/firebase/jobdispatcher/s$2;-><init>(Lcom/firebase/jobdispatcher/s;Lcom/firebase/jobdispatcher/r;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;Z)V
    .locals 6

    invoke-static {}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kK()Lcom/firebase/jobdispatcher/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/p;->g(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/q$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "FJD.JobService"

    const-string v1, "stop: unknown invocation provided"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/s$1;->axO:Lcom/firebase/jobdispatcher/s;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/q$a;->kT()Lcom/firebase/jobdispatcher/q;

    move-result-object v2

    iget-object v3, v1, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    invoke-interface {v2}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/s$a;

    if-nez v0, :cond_2

    const-string v0, "FJD.JobService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FJD.JobService"

    const-string v1, "Provided job has already been executed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v4, Lcom/firebase/jobdispatcher/s;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/firebase/jobdispatcher/s$3;

    invoke-direct {v5, v1, v2, p2, v0}, Lcom/firebase/jobdispatcher/s$3;-><init>(Lcom/firebase/jobdispatcher/s;Lcom/firebase/jobdispatcher/r;ZLcom/firebase/jobdispatcher/s$a;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
