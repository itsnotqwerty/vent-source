.class public Lcom/layer/sdk/internal/lsdki/lsdkc/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;,
        Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;,
        Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;,
        Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;,
        Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Long;

.field private static final b:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/layer/a/b/a;

.field private final g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

.field private final h:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

.field private final i:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-wide/16 v0, 0x3a98

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;
    .locals 5

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;

    :try_start_1
    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-interface {v0, p0, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/layer/b/d/h;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    iget-object v2, v0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/layer/b/d/h;->xp()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v6, v0, Lcom/layer/b/f/c/m;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_2

    iget-object v5, v0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-nez v5, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream has no database identifier. Stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v2, v3

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-interface {p1, v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->c(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/layer/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lcom/layer/a/a;->a(Lcom/layer/a/a$a;)Lcom/layer/a/a;

    invoke-virtual {p1}, Lcom/layer/a/a;->a()Z

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/Set;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdke/lsdka/a$a;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;

    const/4 v3, 0x0

    iget-object v1, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->e:Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    iget-object v5, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    iget-object v6, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->b:Ljava/util/UUID;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v5, v6, v10, v11}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v5

    :goto_2
    add-int/lit8 v6, v2, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    move v3, v4

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_3

    :cond_3
    iget-object v5, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    const/4 v6, 0x0

    iget-object v10, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->h:Ljava/lang/Integer;

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->h:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_5

    :cond_4
    invoke-interface {v7, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a;)Ljava/lang/Integer;

    move-result-object v6

    :cond_5
    if-eqz v6, :cond_7

    iget-object v10, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v10, v11, :cond_7

    :cond_6
    move-object v5, v6

    move v3, v4

    :cond_7
    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->e:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->f:Ljava/lang/Integer;

    iput-object v5, v0, Lcom/layer/sdk/internal/lsdke/lsdka/a;->g:Ljava/lang/Integer;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v7, v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Ljava/lang/Iterable;)V

    :cond_9
    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;

    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c;Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c()Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 11

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c()Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/c$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot execute a new TaskMaster while "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->r:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->h()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v5

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->w()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v7}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->x()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v9}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->v()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    iget-object v10, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-direct/range {v0 .. v10}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;-><init>(Ljava/util/UUID;Ljava/lang/String;Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->b:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/b;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/b;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/k;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/k;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/a;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->h:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;-><init>(Lcom/layer/a/b/a;Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->j:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->l:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->n:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->p:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->r:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->h()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v5

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->w()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v7}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->x()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v9}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->v()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    iget-object v10, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-direct/range {v0 .. v10}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;-><init>(Ljava/util/UUID;Ljava/lang/String;Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;Lcom/layer/sdk/LayerClient$Options$HistoricSyncPolicy;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->t:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->f()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_2
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;Ljava/lang/Iterable;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/internal/lsdki/a$e;->b:Lcom/layer/sdk/internal/lsdki/a$e;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->e()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->v()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :pswitch_a
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->v:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/g;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/g;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;Ljava/util/Map;)V

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->u()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->z()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->x:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :cond_a
    :pswitch_c
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->z:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->A()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;-><init>(Lcom/layer/a/b/a;Lcom/layer/b/d/k;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->B:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->b()Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->j()Lcom/layer/b/d/k;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->g()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->f()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->t()Lcom/layer/sdk/internal/lsdki/a$e;

    move-result-object v6

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v7}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->y()Z

    move-result v7

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;

    invoke-interface {v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$a;->x()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v8

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->h:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-direct/range {v0 .. v9}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;-><init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;IILcom/layer/sdk/internal/lsdki/a$e;ZLjava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/a/a;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$e;)Lcom/layer/sdk/internal/lsdki/lsdkc/c;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()V
    .locals 5

    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c()Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    move-result-object v1

    :try_start_0
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    if-eq v1, v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SyncMaster: Cannot execute while in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot execute while in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to schedule task in SyncMaster: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v1, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->C:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SyncMaster: Executing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lcom/layer/a/a;II)V
    .locals 5

    const v0, 0x7fffffff

    if-ne p3, v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "onTaskMasterStateChange returned with errors"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->C:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->c()Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/c$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot have a TaskMaster state change while "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->C:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    goto :goto_0

    :pswitch_1
    :try_start_1
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto :goto_0

    :pswitch_2
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/k;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/k;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/k;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/k;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    check-cast v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    iget-object v4, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/Set;)V

    :cond_6
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->e:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_3
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->g:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_4
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->i:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_5
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    check-cast v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    iget-object v4, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-eqz v4, :cond_8

    iget-object v0, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/Set;)V

    :cond_a
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->k:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_6
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/l;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->m:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_7
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->o:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_8
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->q:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_9
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->j:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->s:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_a
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/e;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    check-cast v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    if-eqz v0, :cond_b

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->b:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/Set;)V

    :cond_d
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->u:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_b
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/g;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->w:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_c
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->y:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_d
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->A:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->d()V

    goto/16 :goto_0

    :pswitch_e
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->c()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/c;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    check-cast v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    iget-object v4, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-eqz v4, :cond_f

    iget-object v0, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    sget-object v0, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/Set;)V

    :cond_11
    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;->C:Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/layer/a/a;Lcom/layer/a/c/d;Lcom/layer/a/c/e;)V
    .locals 3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->b:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Error in TaskMaster"

    invoke-static {v0, v1, p3}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/b;

    invoke-virtual {p3}, Lcom/layer/a/c/e;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p3}, Lcom/layer/a/c/e;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/b;)V

    return-void
.end method

.method public b()Lcom/layer/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->f:Lcom/layer/a/b/a;

    return-object v0
.end method
