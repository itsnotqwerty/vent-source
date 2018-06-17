.class public final La/a/a/a/a;
.super La/a/a/b;


# instance fields
.field protected csP:J

.field protected csQ:J

.field protected csR:J

.field protected csS:I

.field protected csT:J

.field protected csU:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "La/a/a/d;",
            "La/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, La/a/a/b;-><init>()V

    iput-wide v0, p0, La/a/a/a/a;->csP:J

    iput-wide v0, p0, La/a/a/a/a;->csQ:J

    iput-wide v0, p0, La/a/a/a/a;->csR:J

    const/16 v0, 0x400

    iput v0, p0, La/a/a/a/a;->csS:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, La/a/a/a/a;->csT:J

    new-instance v0, La/a/a/a/a$1;

    const/16 v1, 0x502

    const/16 v2, 0xb

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, p0, v1}, La/a/a/a/a$1;-><init>(La/a/a/a/a;I)V

    iput-object v0, p0, La/a/a/a/a;->csU:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, La/a/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(La/a/a/d;La/a/a/d;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p2, La/a/a/d;->cpr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/a/a/a;->csU:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(La/a/a/d;)La/a/a/d;
    .locals 10

    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/a/a;->csU:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/d;

    if-nez v0, :cond_0

    iget-wide v0, p0, La/a/a/a/a;->csP:J

    add-long/2addr v0, v8

    iput-wide v0, p0, La/a/a/a/a;->csP:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-wide v4, p0, La/a/a/a/a;->csT:J

    iget-object v1, v0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/k;

    iget-wide v6, v1, La/a/a/k;->cqX:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    iget-wide v6, v0, La/a/a/d;->cpr:J

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    iget-wide v0, p0, La/a/a/a/a;->csP:J

    add-long/2addr v0, v8

    iput-wide v0, p0, La/a/a/a/a;->csP:J

    iget-wide v0, p0, La/a/a/a/a;->csQ:J

    add-long/2addr v0, v8

    iput-wide v0, p0, La/a/a/a/a;->csQ:J

    iget-object v0, p0, La/a/a/a/a;->csU:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, La/a/a/a/a;->csR:J

    add-long/2addr v2, v8

    iput-wide v2, p0, La/a/a/a/a;->csR:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LRUCache{usage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/a;->csU:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/a/a;->csS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, La/a/a/a/a;->csR:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, La/a/a/a/a;->csP:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, La/a/a/a/a;->csQ:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
