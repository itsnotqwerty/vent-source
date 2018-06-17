.class public Lio/intercom/b/a;
.super Lio/intercom/b/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/b/a$a;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lio/intercom/b/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private inQueue:Z

.field private next:Lio/intercom/b/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/b/a;->IDLE_TIMEOUT_MILLIS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v2, Lio/intercom/b/a;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/b/a;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/b/t;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lio/intercom/b/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-wide/32 v6, 0xf4240

    const/4 v0, 0x0

    sget-object v1, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    iget-object v1, v1, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-class v1, Lio/intercom/b/a;

    sget-wide v4, Lio/intercom/b/a;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    sget-object v1, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    iget-object v1, v1, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lio/intercom/b/a;->IDLE_TIMEOUT_NANOS:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    sget-object v0, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lio/intercom/b/a;->remainingNanos(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    div-long v4, v2, v6

    mul-long/2addr v6, v4

    sub-long/2addr v2, v6

    const-class v1, Lio/intercom/b/a;

    long-to-int v2, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V

    goto :goto_0

    :cond_2
    sget-object v2, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    iget-object v3, v1, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    iput-object v3, v2, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    iput-object v0, v1, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    move-object v0, v1

    goto :goto_0
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lio/intercom/b/a;)Z
    .locals 3

    const-class v1, Lio/intercom/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    if-ne v2, p0, :cond_0

    iget-object v2, p0, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    iput-object v2, v0, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/b/a;->next:Lio/intercom/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_1
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, v0, Lio/intercom/b/a;->next:Lio/intercom/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private remainingNanos(J)J
    .locals 3

    iget-wide v0, p0, Lio/intercom/b/a;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lio/intercom/b/a;JZ)V
    .locals 9

    const-wide/16 v4, 0x0

    const-class v1, Lio/intercom/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/b/a;

    invoke-direct {v0}, Lio/intercom/b/a;-><init>()V

    sput-object v0, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    new-instance v0, Lio/intercom/b/a$a;

    invoke-direct {v0}, Lio/intercom/b/a$a;-><init>()V

    invoke-virtual {v0}, Lio/intercom/b/a$a;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lio/intercom/b/a;->deadlineNanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/intercom/b/a;->timeoutAt:J

    :goto_0
    invoke-direct {p0, v2, v3}, Lio/intercom/b/a;->remainingNanos(J)J

    move-result-wide v4

    sget-object v0, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    :goto_1
    iget-object v6, v0, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    invoke-direct {v6, v2, v3}, Lio/intercom/b/a;->remainingNanos(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    :cond_1
    iget-object v2, v0, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    iput-object v2, p0, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    iput-object p0, v0, Lio/intercom/b/a;->next:Lio/intercom/b/a;

    sget-object v2, Lio/intercom/b/a;->head:Lio/intercom/b/a;

    if-ne v0, v2, :cond_2

    const-class v0, Lio/intercom/b/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    add-long v4, v2, p1

    :try_start_1
    iput-wide v4, p0, Lio/intercom/b/a;->timeoutAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    if-eqz p3, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lio/intercom/b/a;->deadlineNanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lio/intercom/b/a;->timeoutAt:J

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    iget-object v0, v0, Lio/intercom/b/a;->next:Lio/intercom/b/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final enter()V
    .locals 6

    iget-boolean v0, p0, Lio/intercom/b/a;->inQueue:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lio/intercom/b/a;->timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/intercom/b/a;->hasDeadline()Z

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/intercom/b/a;->inQueue:Z

    invoke-static {p0, v0, v1, v2}, Lio/intercom/b/a;->scheduleTimeout(Lio/intercom/b/a;JZ)V

    goto :goto_0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/b/a;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lio/intercom/b/a;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0
.end method

.method final exit(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/b/a;->exit()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/intercom/b/a;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lio/intercom/b/a;->inQueue:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lio/intercom/b/a;->inQueue:Z

    invoke-static {p0}, Lio/intercom/b/a;->cancelScheduledTimeout(Lio/intercom/b/a;)Z

    move-result v0

    goto :goto_0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final sink(Lio/intercom/b/r;)Lio/intercom/b/r;
    .locals 1

    new-instance v0, Lio/intercom/b/a$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/b/a$1;-><init>(Lio/intercom/b/a;Lio/intercom/b/r;)V

    return-object v0
.end method

.method public final source(Lio/intercom/b/s;)Lio/intercom/b/s;
    .locals 1

    new-instance v0, Lio/intercom/b/a$2;

    invoke-direct {v0, p0, p1}, Lio/intercom/b/a$2;-><init>(Lio/intercom/b/a;Lio/intercom/b/s;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    return-void
.end method
