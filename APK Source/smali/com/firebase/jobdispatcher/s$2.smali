.class final Lcom/firebase/jobdispatcher/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic axP:Lcom/firebase/jobdispatcher/r;


# direct methods
.method constructor <init>(Lcom/firebase/jobdispatcher/s;Lcom/firebase/jobdispatcher/r;)V
    .locals 0

    iput-object p1, p0, Lcom/firebase/jobdispatcher/s$2;->axO:Lcom/firebase/jobdispatcher/s;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/s$2;->axP:Lcom/firebase/jobdispatcher/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/firebase/jobdispatcher/s$2;->axO:Lcom/firebase/jobdispatcher/s;

    invoke-static {v0}, Lcom/firebase/jobdispatcher/s;->a(Lcom/firebase/jobdispatcher/s;)Landroid/support/v4/g/m;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/s$2;->axO:Lcom/firebase/jobdispatcher/s;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/s$2;->axP:Lcom/firebase/jobdispatcher/r;

    invoke-virtual {v0, v2}, Lcom/firebase/jobdispatcher/s;->onStartJob(Lcom/firebase/jobdispatcher/r;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/jobdispatcher/s$2;->axO:Lcom/firebase/jobdispatcher/s;

    invoke-static {v0}, Lcom/firebase/jobdispatcher/s;->a(Lcom/firebase/jobdispatcher/s;)Landroid/support/v4/g/m;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/jobdispatcher/s$2;->axP:Lcom/firebase/jobdispatcher/r;

    invoke-interface {v2}, Lcom/firebase/jobdispatcher/r;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/s$a;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/firebase/jobdispatcher/s$a;->cu(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
