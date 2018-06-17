.class public final Ld/i;
.super Ld/t;


# instance fields
.field public dce:Ld/t;


# direct methods
.method public constructor <init>(Ld/t;)V
    .locals 2

    invoke-direct {p0}, Ld/t;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Ld/i;->dce:Ld/t;

    return-void
.end method


# virtual methods
.method public final Np()Ld/t;
    .locals 1

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0}, Ld/t;->Np()Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final Nq()Ld/t;
    .locals 1

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0}, Ld/t;->Nq()Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final aE(J)Ld/t;
    .locals 1

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0, p1, p2}, Ld/t;->aE(J)Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Ld/t;
    .locals 1

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0, p1, p2, p3}, Ld/t;->d(JLjava/util/concurrent/TimeUnit;)Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0}, Ld/t;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasDeadline()Z
    .locals 1

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0}, Ld/t;->hasDeadline()Z

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

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0}, Ld/t;->throwIfReached()V

    return-void
.end method

.method public final timeoutNanos()J
    .locals 2

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0}, Ld/t;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
