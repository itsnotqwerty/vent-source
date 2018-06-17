.class public Lcom/layer/sdk/internal/lsdkc/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkc/b$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/internal/lsdkk/o;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkc/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/layer/sdk/internal/lsdkk/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkk/j",
            "<",
            "Lcom/layer/sdk/listeners/LayerProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkk/j",
            "<",
            "Lcom/layer/sdk/listeners/LayerProgressListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkc/b;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkc/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdkk/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/j;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/j;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->d:Lcom/layer/sdk/internal/lsdkk/j;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->d:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/j;->a()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;Lcom/layer/sdk/listeners/LayerProgressListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->d:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkk/j;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/j;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkk/j;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkk/j;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V
    .locals 3

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessagePart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". MessagPart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/layer/sdk/internal/lsdkc/b$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/layer/sdk/internal/lsdkc/b$1;-><init>(Lcom/layer/sdk/internal/lsdkc/b;Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->d:Lcom/layer/sdk/internal/lsdkk/j;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    invoke-virtual {v0, v2, v1}, Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    invoke-virtual {v0, v2, v1}, Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;JJ)V
    .locals 11

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkc/b$a;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/layer/sdk/internal/lsdkc/b$a;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x64

    div-long v8, p3, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/layer/sdk/internal/lsdkc/b$a;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkc/b$a;

    move-object v2, v0

    :goto_1
    cmp-long v0, p5, p3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_0

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkc/b$a;->a(Ljava/lang/Long;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkc/b$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkc/b$2;-><init>(Lcom/layer/sdk/internal/lsdkc/b;Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;J)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/b;->d:Lcom/layer/sdk/internal/lsdkk/j;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    invoke-virtual {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/j;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    invoke-virtual {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkc/b$a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, p5

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkc/b$a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p5, v4

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkc/b$a;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessagePart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " . MessagePart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v1, Lcom/layer/sdk/internal/lsdkc/b$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkc/b$4;-><init>(Lcom/layer/sdk/internal/lsdkc/b;Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->d:Lcom/layer/sdk/internal/lsdkk/j;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    invoke-virtual {v0, v2, v1}, Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    invoke-virtual {v0, v2, v1}, Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;Lcom/layer/sdk/listeners/LayerProgressListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->d:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkk/j;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/layer/sdk/internal/lsdkk/j;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V
    .locals 3

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessagePart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : MessagePart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/layer/sdk/internal/lsdkc/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/layer/sdk/internal/lsdkc/b$3;-><init>(Lcom/layer/sdk/internal/lsdkc/b;Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->d:Lcom/layer/sdk/internal/lsdkk/j;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    invoke-virtual {v0, v2, v1}, Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/b;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/j;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/b;->b:Lcom/layer/sdk/internal/lsdkk/o;

    invoke-virtual {v0, v2, v1}, Lcom/layer/sdk/internal/lsdkk/j;->a(Lcom/layer/sdk/internal/lsdkk/o;Lcom/layer/sdk/internal/lsdkk/j$b;)V

    goto :goto_0
.end method
