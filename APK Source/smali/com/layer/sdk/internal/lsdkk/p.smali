.class public Lcom/layer/sdk/internal/lsdkk/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/a/a/c;

.field private final b:J

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method public constructor <init>(Lcom/layer/a/a/c;JLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/a/a/c;",
            "JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/p;->a:Lcom/layer/a/a/c;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkk/p;->b:J

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkk/p;->c:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkk/p;->d:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/p;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/p;->a:Lcom/layer/a/a/c;

    invoke-interface {v0}, Lcom/layer/a/a/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkk/p;->d:J

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkk/p;->b:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/p;->c:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/p;->c:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/p;->c:Ljava/lang/Object;

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/p;->c:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkk/p;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/p;->c:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkk/p;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
