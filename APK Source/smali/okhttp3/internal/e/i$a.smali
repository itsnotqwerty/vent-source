.class final Lokhttp3/internal/e/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ld/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field private final dbA:Ld/c;

.field final synthetic dbB:Lokhttp3/internal/e/i;

.field finished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/e/i$a;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/e/i;)V
    .locals 1

    iput-object p1, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    return-void
.end method

.method private emitFrame(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    invoke-virtual {v0}, Lokhttp3/internal/e/i$c;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-wide v2, v0, Lokhttp3/internal/e/i;->bytesLeftInWriteWindow:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/e/i$a;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/e/i$a;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v2, v2, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    invoke-virtual {v2}, Lokhttp3/internal/e/i$c;->exitAndThrowIfTimedOut()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    invoke-virtual {v0}, Lokhttp3/internal/e/i$c;->exitAndThrowIfTimedOut()V

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->checkOutNotClosed()V

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-wide v2, v0, Lokhttp3/internal/e/i;->bytesLeftInWriteWindow:J

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    iget-wide v4, v0, Ld/c;->size:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-wide v2, v0, Lokhttp3/internal/e/i;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lokhttp3/internal/e/i;->bytesLeftInWriteWindow:J

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    invoke-virtual {v0}, Lokhttp3/internal/e/i$c;->enter()V

    :try_start_4
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-object v1, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget v1, v1, Lokhttp3/internal/e/i;->id:I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    iget-wide v2, v2, Ld/c;->size:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/e/g;->a(IZLd/c;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    invoke-virtual {v0}, Lokhttp3/internal/e/i$c;->exitAndThrowIfTimedOut()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v1, v1, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    invoke-virtual {v1}, Lokhttp3/internal/e/i$c;->exitAndThrowIfTimedOut()V

    throw v0
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    return-object v0
.end method

.method public final b(Ld/c;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/e/i$a;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    invoke-virtual {v0, p1, p2, p3}, Ld/c;->b(Ld/c;J)V

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/e/i$a;->emitFrame(Z)V

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

    sget-boolean v0, Lokhttp3/internal/e/i$a;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/e/i$a;->closed:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-boolean v0, v0, Lokhttp3/internal/e/i$a;->finished:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    invoke-direct {p0, v2}, Lokhttp3/internal/e/i$a;->emitFrame(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-object v1, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget v1, v1, Lokhttp3/internal/e/i;->id:I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/e/g;->a(IZLd/c;J)V

    :cond_3
    iget-object v1, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/e/i$a;->closed:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v0}, Lokhttp3/internal/e/j;->flush()V

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->cancelStreamIfNecessary()V

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

    sget-boolean v0, Lokhttp3/internal/e/i$a;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->checkOutNotClosed()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbA:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/e/i$a;->emitFrame(Z)V

    iget-object v0, p0, Lokhttp3/internal/e/i$a;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v0}, Lokhttp3/internal/e/j;->flush()V

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
