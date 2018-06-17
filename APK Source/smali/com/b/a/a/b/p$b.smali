.class final Lcom/b/a/a/b/p$b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final bJz:Lb/c;

.field final synthetic bLG:Lcom/b/a/a/b/p;

.field private final bLH:Lb/c;

.field private final e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/b/a/a/b/p$b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/b/a/a/b/p;J)V
    .locals 2

    iput-object p1, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/p$b;->bJz:Lb/c;

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    iput-wide p2, p0, Lcom/b/a/a/b/p$b;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/b/p;JB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/b/a/a/b/p$b;-><init>(Lcom/b/a/a/b/p;J)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/a/b/p$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/b/p$b;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/b/a/a/b/p$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/a/b/p$b;->g:Z

    return p1
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->e(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/p$c;->c()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/a/b/p$b;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/a/b/p$b;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->f(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->g(Lcom/b/a/a/b/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v1}, Lcom/b/a/a/b/p;->e(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/b/p$c;->b()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->e(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/p$c;->b()V

    return-void
.end method

.method static synthetic b(Lcom/b/a/a/b/p$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/b/p$b;->f:Z

    return v0
.end method


# virtual methods
.method final a(Lb/e;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/b/a/a/b/p$b;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sub-long/2addr p2, v4

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    iget-wide v4, v0, Lb/c;->b:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    iget-object v5, p0, Lcom/b/a/a/b/p$b;->bJz:Lb/c;

    invoke-virtual {v4, v5}, Lb/c;->a(Lb/s;)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    cmp-long v0, p2, v10

    if-lez v0, :cond_3

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    monitor-enter v3

    :try_start_1
    iget-boolean v4, p0, Lcom/b/a/a/b/p$b;->g:Z

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    iget-wide v6, v0, Lb/c;->b:J

    add-long/2addr v6, p2

    iget-wide v8, p0, Lcom/b/a/a/b/p$b;->e:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    invoke-interface {p1, p2, p3}, Lb/e;->at(J)V

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    sget-object v1, Lcom/b/a/a/b/a;->bJZ:Lcom/b/a/a/b/a;

    invoke-virtual {v0, v1}, Lcom/b/a/a/b/p;->b(Lcom/b/a/a/b/a;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {p1, p2, p3}, Lb/e;->at(J)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bJz:Lb/c;

    invoke-interface {p1, v0, p2, p3}, Lb/e;->b(Lb/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final b(Lb/c;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/b/a/a/b/p$b;->b()V

    iget-boolean v0, p0, Lcom/b/a/a/b/p$b;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->f(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "stream was reset: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v3}, Lcom/b/a/a/b/p;->f(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_3
    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    iget-object v1, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    iget-wide v4, v1, Lb/c;->b:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lb/c;->b(Lb/c;J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    iget-wide v4, v3, Lcom/b/a/a/b/p;->brA:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/b/a/a/b/p;->brA:J

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    iget-wide v4, v3, Lcom/b/a/a/b/p;->brA:J

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v3}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v3

    iget-object v3, v3, Lcom/b/a/a/b/n;->bLg:Lcom/b/a/a/b/l;

    invoke-virtual {v3}, Lcom/b/a/a/b/l;->zS()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v3}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v3

    iget-object v4, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v4}, Lcom/b/a/a/b/p;->d(Lcom/b/a/a/b/p;)I

    move-result v4

    iget-object v5, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    iget-wide v6, v5, Lcom/b/a/a/b/p;->brA:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/b/a/a/b/n;->g(IJ)V

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/b/a/a/b/p;->brA:J

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v2}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v3}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v3

    iget-wide v4, v3, Lcom/b/a/a/b/n;->c:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/b/a/a/b/n;->c:J

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v3}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v3

    iget-wide v4, v3, Lcom/b/a/a/b/n;->c:J

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v3}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v3

    iget-object v3, v3, Lcom/b/a/a/b/n;->bLg:Lcom/b/a/a/b/l;

    invoke-virtual {v3}, Lcom/b/a/a/b/l;->zS()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v3}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v5}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v5

    iget-wide v6, v5, Lcom/b/a/a/b/n;->c:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/b/a/a/b/n;->g(IJ)V

    iget-object v3, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v3}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/b/a/a/b/n;->c:J

    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/b/a/a/b/p$b;->f:Z

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLH:Lb/c;

    invoke-virtual {v0}, Lb/c;->t()V

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->h(Lcom/b/a/a/b/p;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/p$b;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->e(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v0

    return-object v0
.end method
