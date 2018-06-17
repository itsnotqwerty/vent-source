.class public Ld/t;
.super Ljava/lang/Object;


# static fields
.field public static final dcn:Ld/t;


# instance fields
.field private deadlineNanoTime:J

.field private hasDeadline:Z

.field private timeoutNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/t$1;

    invoke-direct {v0}, Ld/t$1;-><init>()V

    sput-object v0, Ld/t;->dcn:Ld/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Np()Ld/t;
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ld/t;->timeoutNanos:J

    return-object p0
.end method

.method public Nq()Ld/t;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/t;->hasDeadline:Z

    return-object p0
.end method

.method public aE(J)Ld/t;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/t;->hasDeadline:Z

    iput-wide p1, p0, Ld/t;->deadlineNanoTime:J

    return-object p0
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Ld/t;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeout < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Ld/t;->timeoutNanos:J

    return-object p0
.end method

.method public deadlineNanoTime()J
    .locals 2

    iget-boolean v0, p0, Ld/t;->hasDeadline:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ld/t;->deadlineNanoTime:J

    return-wide v0
.end method

.method public hasDeadline()Z
    .locals 1

    iget-boolean v0, p0, Ld/t;->hasDeadline:Z

    return v0
.end method

.method public throwIfReached()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ld/t;->hasDeadline:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ld/t;->deadlineNanoTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public timeoutNanos()J
    .locals 2

    iget-wide v0, p0, Ld/t;->timeoutNanos:J

    return-wide v0
.end method
