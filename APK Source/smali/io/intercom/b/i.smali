.class public final Lio/intercom/b/i;
.super Lio/intercom/b/t;


# instance fields
.field public cUa:Lio/intercom/b/t;


# direct methods
.method public constructor <init>(Lio/intercom/b/t;)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/b/t;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    return-void
.end method


# virtual methods
.method public final clearDeadline()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->clearDeadline()Lio/intercom/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final clearTimeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->clearTimeout()Lio/intercom/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    iget-object v0, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final deadlineNanoTime(J)Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0, p1, p2}, Lio/intercom/b/t;->deadlineNanoTime(J)Lio/intercom/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final hasDeadline()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->throwIfReached()V

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0, p1, p2, p3}, Lio/intercom/b/t;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/intercom/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final timeoutNanos()J
    .locals 2

    iget-object v0, p0, Lio/intercom/b/i;->cUa:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
