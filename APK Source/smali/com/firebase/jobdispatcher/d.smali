.class final Lcom/firebase/jobdispatcher/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/d$a;
    }
.end annotation


# static fields
.field private static final axi:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            "Lcom/firebase/jobdispatcher/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final axj:Lcom/firebase/jobdispatcher/l;

.field private final axk:Lcom/firebase/jobdispatcher/d$a;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    sput-object v0, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/firebase/jobdispatcher/d$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/firebase/jobdispatcher/d$1;

    invoke-direct {v0, p0}, Lcom/firebase/jobdispatcher/d$1;-><init>(Lcom/firebase/jobdispatcher/d;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/d;->axj:Lcom/firebase/jobdispatcher/l;

    iput-object p1, p0, Lcom/firebase/jobdispatcher/d;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/d;->axk:Lcom/firebase/jobdispatcher/d$a;

    return-void
.end method

.method static synthetic a(Lcom/firebase/jobdispatcher/d;Lcom/firebase/jobdispatcher/q;I)V
    .locals 3

    sget-object v1, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    iget-object v2, p1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/t;->b(Lcom/firebase/jobdispatcher/q;)V

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/t;->kU()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    iget-object v2, p1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/firebase/jobdispatcher/d;->axk:Lcom/firebase/jobdispatcher/d$a;

    invoke-interface {v0, p1, p2}, Lcom/firebase/jobdispatcher/d$a;->a(Lcom/firebase/jobdispatcher/q;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static a(Lcom/firebase/jobdispatcher/q;Z)V
    .locals 3

    sget-object v1, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/firebase/jobdispatcher/t;->b(Lcom/firebase/jobdispatcher/q;Z)V

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/t;->kU()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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


# virtual methods
.method final a(Lcom/firebase/jobdispatcher/q;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    iget-object v2, p1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/t;->kU()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/t;->d(Lcom/firebase/jobdispatcher/q;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/t;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/firebase/jobdispatcher/t;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/d;->axj:Lcom/firebase/jobdispatcher/l;

    iget-object v3, p0, Lcom/firebase/jobdispatcher/d;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/firebase/jobdispatcher/t;-><init>(Lcom/firebase/jobdispatcher/l;Landroid/content/Context;)V

    sget-object v2, Lcom/firebase/jobdispatcher/d;->axi:Landroid/support/v4/g/m;

    iget-object v3, p1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/t;->c(Lcom/firebase/jobdispatcher/q;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/firebase/jobdispatcher/d;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.firebase.jobdispatcher.ACTION_EXECUTE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/firebase/jobdispatcher/d;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kR()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "FJD.ExternalReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to bind to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/t;->kV()V

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
