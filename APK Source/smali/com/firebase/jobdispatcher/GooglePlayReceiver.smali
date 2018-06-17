.class public Lcom/firebase/jobdispatcher/GooglePlayReceiver;
.super Landroid/app/Service;

# interfaces
.implements Lcom/firebase/jobdispatcher/d$a;


# static fields
.field private static final axE:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            "Lcom/firebase/jobdispatcher/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final axy:Lcom/firebase/jobdispatcher/p;


# instance fields
.field axA:Landroid/os/Messenger;

.field axB:Lcom/firebase/jobdispatcher/ab;

.field private axC:Lcom/firebase/jobdispatcher/d;

.field private axD:I

.field axm:Lcom/firebase/jobdispatcher/c;

.field private final axz:Lcom/firebase/jobdispatcher/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/firebase/jobdispatcher/p;

    const-string v1, "com.firebase.jobdispatcher."

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axy:Lcom/firebase/jobdispatcher/p;

    new-instance v0, Landroid/support/v4/g/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/g/m;-><init>(I)V

    sput-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/firebase/jobdispatcher/f;

    invoke-direct {v0}, Lcom/firebase/jobdispatcher/f;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axz:Lcom/firebase/jobdispatcher/f;

    return-void
.end method

.method static a(Lcom/firebase/jobdispatcher/o;Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/q;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axy:Lcom/firebase/jobdispatcher/p;

    if-nez p1, :cond_0

    const-string v1, "FJD.ExternalReceiver"

    const-string v2, "Unexpected null Bundle provided"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_3

    const-string v1, "FJD.GooglePlayReceiver"

    const-string v2, "unable to decode job"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a(Lcom/firebase/jobdispatcher/o;I)V

    :goto_1
    return-object v0

    :cond_0
    const-string v2, "extras"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcom/firebase/jobdispatcher/p;->g(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/q$a;

    move-result-object v1

    const-string v2, "triggered_uris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/firebase/jobdispatcher/aa;

    invoke-direct {v3, v2}, Lcom/firebase/jobdispatcher/aa;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Lcom/firebase/jobdispatcher/q$a;->axN:Lcom/firebase/jobdispatcher/aa;

    :cond_2
    invoke-virtual {v1}, Lcom/firebase/jobdispatcher/q$a;->kT()Lcom/firebase/jobdispatcher/q;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    iget-object v3, v1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/m;

    if-nez v0, :cond_4

    new-instance v0, Landroid/support/v4/g/m;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/support/v4/g/m;-><init>(I)V

    sget-object v3, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    iget-object v4, v1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v3, v1, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    invoke-virtual {v0, v3, p0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/firebase/jobdispatcher/o;I)V
    .locals 3

    :try_start_0
    invoke-interface {p0, p1}, Lcom/firebase/jobdispatcher/o;->ct(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FJD.GooglePlayReceiver"

    const-string v2, "Encountered error running callback"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static b(Lcom/firebase/jobdispatcher/n;)V
    .locals 3

    sget-object v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/n;->axF:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/m;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/firebase/jobdispatcher/n;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/firebase/jobdispatcher/o;

    if-nez v0, :cond_1

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
    new-instance v0, Lcom/firebase/jobdispatcher/q$a;

    invoke-direct {v0}, Lcom/firebase/jobdispatcher/q$a;-><init>()V

    iget-object v2, p0, Lcom/firebase/jobdispatcher/n;->tag:Ljava/lang/String;

    iput-object v2, v0, Lcom/firebase/jobdispatcher/q$a;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/n;->axF:Ljava/lang/String;

    iput-object v2, v0, Lcom/firebase/jobdispatcher/q$a;->axF:Ljava/lang/String;

    iget-object v2, p0, Lcom/firebase/jobdispatcher/n;->axG:Lcom/firebase/jobdispatcher/u;

    iput-object v2, v0, Lcom/firebase/jobdispatcher/q$a;->axG:Lcom/firebase/jobdispatcher/u;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/q$a;->kT()Lcom/firebase/jobdispatcher/q;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/firebase/jobdispatcher/d;->a(Lcom/firebase/jobdispatcher/q;Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized kG()Landroid/os/Messenger;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axA:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/firebase/jobdispatcher/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/firebase/jobdispatcher/j;-><init>(Landroid/os/Looper;Lcom/firebase/jobdispatcher/GooglePlayReceiver;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axA:Landroid/os/Messenger;

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axA:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized kI()Lcom/firebase/jobdispatcher/c;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axm:Lcom/firebase/jobdispatcher/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/firebase/jobdispatcher/g;

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axm:Lcom/firebase/jobdispatcher/c;

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axm:Lcom/firebase/jobdispatcher/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized kJ()Lcom/firebase/jobdispatcher/ab;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axB:Lcom/firebase/jobdispatcher/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/firebase/jobdispatcher/ab;

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kI()Lcom/firebase/jobdispatcher/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/firebase/jobdispatcher/c;->kD()Lcom/firebase/jobdispatcher/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/ab;-><init>(Lcom/firebase/jobdispatcher/v;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axB:Lcom/firebase/jobdispatcher/ab;

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axB:Lcom/firebase/jobdispatcher/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static kK()Lcom/firebase/jobdispatcher/p;
    .locals 1

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axy:Lcom/firebase/jobdispatcher/p;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/firebase/jobdispatcher/q;I)V
    .locals 5

    const/4 v2, 0x1

    sget-object v3, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    iget-object v1, p1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :cond_1
    :try_start_2
    iget-object v1, p1, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/jobdispatcher/o;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_3

    :try_start_3
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    iget-object v4, p1, Lcom/firebase/jobdispatcher/q;->axF:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/support/v4/g/m;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kQ()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/firebase/jobdispatcher/r;->kO()Lcom/firebase/jobdispatcher/u;

    move-result-object v0

    instance-of v0, v0, Lcom/firebase/jobdispatcher/u$a;

    if-eqz v0, :cond_6

    if-eq p2, v2, :cond_6

    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    new-instance v0, Lcom/firebase/jobdispatcher/n$a;

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kJ()Lcom/firebase/jobdispatcher/ab;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/firebase/jobdispatcher/n$a;-><init>(Lcom/firebase/jobdispatcher/ab;Lcom/firebase/jobdispatcher/r;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/firebase/jobdispatcher/n$a;->axL:Z

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/n$a;->kS()Lcom/firebase/jobdispatcher/n;

    move-result-object v0

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kI()Lcom/firebase/jobdispatcher/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/firebase/jobdispatcher/c;->a(Lcom/firebase/jobdispatcher/n;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    :try_start_6
    const-string v0, "FJD.GooglePlayReceiver"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "FJD.GooglePlayReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sending jobFinished for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/firebase/jobdispatcher/q;->tag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v1, p2}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a(Lcom/firebase/jobdispatcher/o;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_7
    sget-object v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v1}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_9
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method final declared-synchronized kH()Lcom/firebase/jobdispatcher/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axC:Lcom/firebase/jobdispatcher/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/firebase/jobdispatcher/d;

    invoke-direct {v0, p0, p0}, Lcom/firebase/jobdispatcher/d;-><init>(Landroid/content/Context;Lcom/firebase/jobdispatcher/d$a;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axC:Lcom/firebase/jobdispatcher/d;

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axC:Lcom/firebase/jobdispatcher/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kG()Landroid/os/Messenger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    if-nez p1, :cond_1

    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "Null Intent passed, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_1
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_0
    monitor-exit v1

    :goto_0
    return v4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->kH()Lcom/firebase/jobdispatcher/d;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "FJD.GooglePlayReceiver"

    const-string v3, "No data provided, terminating"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v2, v0}, Lcom/firebase/jobdispatcher/d;->a(Lcom/firebase/jobdispatcher/q;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-object v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_3
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    :try_start_4
    invoke-static {v1}, Lcom/firebase/jobdispatcher/f;->d(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "FJD.GooglePlayReceiver"

    const-string v3, "no callback found"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    sget-object v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_5
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    sget-object v2, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v2}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v2}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :cond_5
    :try_start_6
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/firebase/jobdispatcher/o;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->a(Lcom/firebase/jobdispatcher/o;Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/q;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v0, "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v0

    if-eqz v0, :cond_8

    sget-object v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_7
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_7
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_8
    :try_start_8
    const-string v0, "FJD.GooglePlayReceiver"

    const-string v1, "Unknown action received, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    sget-object v1, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    monitor-enter v1

    :try_start_9
    iput p3, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    sget-object v0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axE:Landroid/support/v4/g/m;

    invoke-virtual {v0}, Landroid/support/v4/g/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->axD:I

    invoke-virtual {p0, v0}, Lcom/firebase/jobdispatcher/GooglePlayReceiver;->stopSelf(I)V

    :cond_9
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0
.end method
