.class public abstract Lcom/firebase/jobdispatcher/y;
.super Lcom/firebase/jobdispatcher/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/y$a;
    }
.end annotation


# instance fields
.field private final runningJobs:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Lcom/firebase/jobdispatcher/r;",
            "Lcom/firebase/jobdispatcher/y$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/s;-><init>()V

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/y;->runningJobs:Landroid/support/v4/g/m;

    return-void
.end method

.method static synthetic a(Lcom/firebase/jobdispatcher/y;Lcom/firebase/jobdispatcher/r;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/y;->onJobFinished(Lcom/firebase/jobdispatcher/r;Z)V

    return-void
.end method

.method private onJobFinished(Lcom/firebase/jobdispatcher/r;Z)V
    .locals 2

    iget-object v1, p0, Lcom/firebase/jobdispatcher/y;->runningJobs:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/y;->runningJobs:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/firebase/jobdispatcher/y;->jobFinished(Lcom/firebase/jobdispatcher/r;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract onRunJob(Lcom/firebase/jobdispatcher/r;)I
.end method

.method public onStartJob(Lcom/firebase/jobdispatcher/r;)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/firebase/jobdispatcher/y$a;

    invoke-direct {v0, p0, p1, v3}, Lcom/firebase/jobdispatcher/y$a;-><init>(Lcom/firebase/jobdispatcher/y;Lcom/firebase/jobdispatcher/r;B)V

    iget-object v1, p0, Lcom/firebase/jobdispatcher/y;->runningJobs:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/firebase/jobdispatcher/y;->runningJobs:Landroid/support/v4/g/m;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/y$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStopJob(Lcom/firebase/jobdispatcher/r;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/firebase/jobdispatcher/y;->runningJobs:Landroid/support/v4/g/m;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/y;->runningJobs:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/y$a;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/firebase/jobdispatcher/y$a;->cancel(Z)Z

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v2

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
