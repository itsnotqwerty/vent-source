.class final Lio/intercom/b/a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/intercom/b/a$a;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :goto_0
    :try_start_0
    const-class v1, Lio/intercom/b/a;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lio/intercom/b/a;->awaitTimeout()Lio/intercom/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    sget-object v2, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    sput-object v0, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    monitor-exit v1

    return-void

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lio/intercom/b/a;->timedOut()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
