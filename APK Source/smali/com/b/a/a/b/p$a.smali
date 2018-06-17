.class final Lcom/b/a/a/b/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final bJz:Lb/c;

.field final synthetic bLG:Lcom/b/a/a/b/p;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/b/a/a/b/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/b/a/a/b/p$a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/b/a/a/b/p;)V
    .locals 1

    iput-object p1, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    return-void
.end method

.method private a(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->i(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/p$c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    iget-wide v2, v0, Lcom/b/a/a/b/p;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/a/b/p$a;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/b/a/a/b/p$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->f(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->g(Lcom/b/a/a/b/p;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v2}, Lcom/b/a/a/b/p;->i(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/a/b/p$c;->b()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->i(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/p$c;->b()V

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->j(Lcom/b/a/a/b/p;)V

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    iget-wide v2, v0, Lcom/b/a/a/b/p;->b:J

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    iget-wide v4, v0, Lb/c;->b:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    iget-wide v2, v0, Lcom/b/a/a/b/p;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/b/a/a/b/p;->b:J

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->i(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/p$c;->c()V

    :try_start_4
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v1}, Lcom/b/a/a/b/p;->d(Lcom/b/a/a/b/p;)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    iget-wide v2, v2, Lb/c;->b:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/a/b/n;->a(IZLb/c;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->i(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/p$c;->b()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v1}, Lcom/b/a/a/b/p;->i(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/b/p$c;->b()V

    throw v0
.end method

.method static synthetic a(Lcom/b/a/a/b/p$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/b/p$a;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/b/a/a/b/p$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/b/a/a/b/p$a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/b/a/a/b/p$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/b/a/a/b/p$a;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Lb/c;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/b/a/a/b/p$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    invoke-virtual {v0, p1, p2, p3}, Lb/c;->a(Lb/c;J)V

    :goto_0
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/a/b/p$a;->a(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Lcom/b/a/a/b/p$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/b/a/a/b/p$a;->d:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    iget-object v0, v0, Lcom/b/a/a/b/p;->bLD:Lcom/b/a/a/b/p$a;

    iget-boolean v0, v0, Lcom/b/a/a/b/p$a;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/b/a/a/b/p$a;->a(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v1}, Lcom/b/a/a/b/p;->d(Lcom/b/a/a/b/p;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/b/a/a/b/n;->a(IZLb/c;J)V

    :cond_3
    iget-object v1, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/b/a/a/b/p$a;->d:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/n;->d()V

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->h(Lcom/b/a/a/b/p;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/b/a/a/b/p$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->j(Lcom/b/a/a/b/p;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bJz:Lb/c;

    iget-wide v0, v0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/a/b/p$a;->a(Z)V

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->c(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/b/n;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public final zA()Lb/t;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/b/p$a;->bLG:Lcom/b/a/a/b/p;

    invoke-static {v0}, Lcom/b/a/a/b/p;->i(Lcom/b/a/a/b/p;)Lcom/b/a/a/b/p$c;

    move-result-object v0

    return-object v0
.end method
