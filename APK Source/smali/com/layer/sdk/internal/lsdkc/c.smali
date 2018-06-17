.class public Lcom/layer/sdk/internal/lsdkc/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkc/f;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/c;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/layer/sdk/internal/a;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/c;->b:Ljava/util/Set;

    const-wide/16 v0, 0x800

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkc/c;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkc/c;->d:J

    return-void
.end method


# virtual methods
.method public a(J)Lcom/layer/sdk/internal/lsdkc/f;
    .locals 5

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/c;->a:Ljava/lang/Object;

    monitor-enter v1

    const-wide/16 v2, 0x800

    :try_start_0
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/layer/sdk/internal/lsdkc/c;->c:J

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/Collection;)Lcom/layer/sdk/internal/lsdkc/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdkc/f;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/c;->a:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/c;->b:Ljava/util/Set;

    monitor-exit v1

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/c;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/c;->b:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()J
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkc/c;->c:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)Lcom/layer/sdk/internal/lsdkc/f;
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/layer/sdk/internal/lsdkc/c;->d:J

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()J
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/c;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkc/c;->d:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
