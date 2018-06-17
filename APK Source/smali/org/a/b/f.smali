.class public final Lorg/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a;


# instance fields
.field public dcB:Z

.field public final dcC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/a/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public final dcD:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lorg/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/b/f;->dcB:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/a/b/f;->dcC:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/a/b/f;->dcD:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method


# virtual methods
.method public final declared-synchronized fK(Ljava/lang/String;)Lorg/a/b;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/a/b/f;->dcC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lorg/a/b/e;

    iget-object v1, p0, Lorg/a/b/f;->dcD:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-boolean v2, p0, Lorg/a/b/f;->dcB:Z

    invoke-direct {v0, p1, v1, v2}, Lorg/a/b/e;-><init>(Ljava/lang/String;Ljava/util/Queue;Z)V

    iget-object v1, p0, Lorg/a/b/f;->dcC:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
