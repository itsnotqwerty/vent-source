.class public abstract Lcom/firebase/jobdispatcher/s;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/s$a;
    }
.end annotation


# static fields
.field public static final RESULT_FAIL_NORETRY:I = 0x2

.field public static final RESULT_FAIL_RETRY:I = 0x1

.field public static final RESULT_SUCCESS:I

.field static final mainHandler:Landroid/os/Handler;


# instance fields
.field private final binder:Lcom/firebase/jobdispatcher/m$a;

.field final runningJobs:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            "Lcom/firebase/jobdispatcher/s$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/firebase/jobdispatcher/s;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/support/v4/g/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/g/m;-><init>(I)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    new-instance v0, Lcom/firebase/jobdispatcher/s$1;

    invoke-direct {v0, p0}, Lcom/firebase/jobdispatcher/s$1;-><init>(Lcom/firebase/jobdispatcher/s;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/s;->binder:Lcom/firebase/jobdispatcher/m$a;

    return-void
.end method

.method static synthetic a(Lcom/firebase/jobdispatcher/s;)Landroid/support/v4/g/m;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    return-object v0
.end method


# virtual methods
.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final jobFinished(Lcom/firebase/jobdispatcher/r;Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "FJD.JobService"

    const-string v1, "jobFinished called with a null JobParameters"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/s$a;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/s$a;->cu(I)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/firebase/jobdispatcher/s;->binder:Lcom/firebase/jobdispatcher/m$a;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p3}, Lcom/firebase/jobdispatcher/s;->stopSelf(I)V

    const/4 v0, 0x2

    return v0
.end method

.method public abstract onStartJob(Lcom/firebase/jobdispatcher/r;)Z
.end method

.method public abstract onStopJob(Lcom/firebase/jobdispatcher/r;)Z
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 4

    iget-object v3, p0, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/s;->runningJobs:Landroid/support/v4/g/m;

    invoke-virtual {v1, v2}, Landroid/support/v4/g/m;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/s$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/firebase/jobdispatcher/s$a;->axS:Lcom/firebase/jobdispatcher/r;

    invoke-virtual {p0, v1}, Lcom/firebase/jobdispatcher/s;->onStopJob(Lcom/firebase/jobdispatcher/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/s$a;->cu(I)V

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
