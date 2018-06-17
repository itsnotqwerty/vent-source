.class final Lcom/google/android/gms/internal/jl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic aVW:Lcom/google/android/gms/internal/ja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jl;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/32 v8, 0x1d4c0

    iget-object v0, p0, Lcom/google/android/gms/internal/jl;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->rM()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jl;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hu;->rR()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Cannot retrieve app instance id from analytics worker thread"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    invoke-static {}, Lcom/google/android/gms/internal/hu;->oM()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Cannot retrieve app instance id from main thread"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/ja;->E(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    if-nez v0, :cond_1

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    sub-long v0, v8, v4

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ja;->E(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/jl;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/hl;->aTT:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object v0, v1, Lcom/google/android/gms/internal/hl;->aTR:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/hl;->aTS:J

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
