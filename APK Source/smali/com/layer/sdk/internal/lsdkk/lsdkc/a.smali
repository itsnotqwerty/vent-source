.class public Lcom/layer/sdk/internal/lsdkk/lsdkc/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Z

.field private c:Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;

.field private final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/layer/sdk/internal/lsdkk/lsdkc/c;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/layer/sdk/internal/lsdkk/lsdkc/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;)V
    .locals 14

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x9c4

    const-wide/16 v8, 0x9c4

    const-wide/16 v10, 0x1388

    const-wide/16 v12, 0x1388

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v13}, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;JJJJJ)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;JJJJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->b:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->j:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->c:Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;

    iput-wide p3, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->e:J

    iput-wide p5, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->f:J

    iput-wide p7, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->g:J

    iput-wide p9, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->h:J

    iput-wide p11, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->i:J

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->j:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a()V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c;)V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->d()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->a(Ljava/util/UUID;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->d()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->a(Ljava/lang/String;Ljava/util/UUID;)V

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->c:Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;

    invoke-interface {v0, p2, p3}, Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;->b(Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->c:Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;

    invoke-interface {v1, v0, p2, p3}, Lcom/layer/sdk/internal/lsdkk/lsdkc/a$a;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 3

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a()V

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    .locals 12

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v11, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->k:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v0

    :goto_1
    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->h:J

    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->i:J

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/String;Ljava/util/UUID;JJJ)V

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;)V

    invoke-interface {v10, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p3}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v10, v0

    goto :goto_1
.end method

.method protected a(Ljava/util/UUID;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    .locals 11

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v10, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->j:Ljava/util/Map;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->b()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->e:J

    iget-wide v6, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->f:J

    iget-wide v8, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->g:J

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Ljava/lang/String;Ljava/util/UUID;JJJ)V

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/c$a;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkk/lsdkc/c;->a(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/b/d/c;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/b/d/c;->t()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-byte v0, p1, Lcom/layer/b/f/c/d;->bzH:B

    if-eq v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v4, p1, Lcom/layer/b/f/c/d;->c:Ljava/lang/String;

    if-nez v4, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v5, p1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-nez v5, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/layer/b/d/c;->xm()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Typing indicator with no content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p1, Lcom/layer/b/f/c/d;->bCF:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/a;

    iget-object v7, v0, Lcom/layer/b/f/c/a;->a:Ljava/lang/String;

    const-string v8, "application/vnd.layer.messaging.typing-indicator; version=1.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_1
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Typing indicator with incorrect content type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v0}, Lcom/layer/b/f/c/a;->yf()[B

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v3, v0

    if-nez v3, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Typing indicator with empty content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->fromValue(I)Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    move-result-object v0

    invoke-virtual {p0, v4, v5, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->a(Ljava/lang/String;Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    move v0, v2

    goto :goto_0

    :cond_a
    move-object v0, v3

    goto :goto_1
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->b:Z

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/a;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
