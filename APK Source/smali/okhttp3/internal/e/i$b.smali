.class final Lokhttp3/internal/e/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Ld/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field final synthetic dbB:Lokhttp3/internal/e/i;

.field private final dbC:Ld/c;

.field private final dbD:Ld/c;

.field finished:Z

.field private final maxByteCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/e/i$b;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lokhttp3/internal/e/i;J)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/e/i$b;->dbC:Ld/c;

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    iput-wide p2, p0, Lokhttp3/internal/e/i$b;->maxByteCount:J

    return-void
.end method

.method private waitUntilReadable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    invoke-virtual {v0}, Lokhttp3/internal/e/i$c;->enter()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/e/i$b;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/internal/e/i$b;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->waitForIo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v1, v1, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    invoke-virtual {v1}, Lokhttp3/internal/e/i$c;->exitAndThrowIfTimedOut()V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    invoke-virtual {v0}, Lokhttp3/internal/e/i$c;->exitAndThrowIfTimedOut()V

    return-void
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    return-object v0
.end method

.method public final a(Ld/c;J)J
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
    iget-object v2, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/e/i$b;->waitUntilReadable()V

    iget-boolean v0, p0, Lokhttp3/internal/e/i$b;->closed:Z

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
    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    if-eqz v0, :cond_2

    new-instance v0, Lokhttp3/internal/e/n;

    iget-object v1, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v1, v1, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    invoke-direct {v0, v1}, Lokhttp3/internal/e/n;-><init>(Lokhttp3/internal/e/b;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    iget-wide v0, v0, Ld/c;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_3
    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    iget-object v1, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    iget-wide v4, v1, Ld/c;->size:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Ld/c;->a(Ld/c;J)J

    move-result-wide v0

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-wide v4, v3, Lokhttp3/internal/e/i;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/e/i;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-wide v4, v3, Lokhttp3/internal/e/i;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v3, v3, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-object v3, v3, Lokhttp3/internal/e/g;->dbd:Lokhttp3/internal/e/m;

    invoke-virtual {v3}, Lokhttp3/internal/e/m;->getInitialWindowSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v3, v3, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-object v4, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget v4, v4, Lokhttp3/internal/e/i;->id:I

    iget-object v5, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-wide v6, v5, Lokhttp3/internal/e/i;->unacknowledgedBytesRead:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/e/g;->writeWindowUpdateLater(IJ)V

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/e/i;->unacknowledgedBytesRead:J

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v2, v2, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v3, v3, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-wide v4, v3, Lokhttp3/internal/e/g;->unacknowledgedBytesRead:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lokhttp3/internal/e/g;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v3, v3, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-wide v4, v3, Lokhttp3/internal/e/g;->unacknowledgedBytesRead:J

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v3, v3, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-object v3, v3, Lokhttp3/internal/e/g;->dbd:Lokhttp3/internal/e/m;

    invoke-virtual {v3}, Lokhttp3/internal/e/m;->getInitialWindowSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v3, v3, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v5, v5, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-wide v6, v5, Lokhttp3/internal/e/g;->unacknowledgedBytesRead:J

    invoke-virtual {v3, v4, v6, v7}, Lokhttp3/internal/e/g;->writeWindowUpdateLater(IJ)V

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    iget-object v3, v3, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lokhttp3/internal/e/g;->unacknowledgedBytesRead:J

    :cond_5
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method final a(Ld/e;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lokhttp3/internal/e/i$b;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sub-long/2addr p2, v4

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    iget-wide v4, v0, Ld/c;->size:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    iget-object v4, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    iget-object v5, p0, Lokhttp3/internal/e/i$b;->dbC:Ld/c;

    invoke-virtual {v4, v5}, Ld/c;->a(Ld/s;)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    cmp-long v0, p2, v10

    if-lez v0, :cond_3

    iget-object v3, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    monitor-enter v3

    :try_start_1
    iget-boolean v4, p0, Lokhttp3/internal/e/i$b;->finished:Z

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    iget-wide v6, v0, Ld/c;->size:J

    add-long/2addr v6, p2

    iget-wide v8, p0, Lokhttp3/internal/e/i$b;->maxByteCount:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    invoke-interface {p1, p2, p3}, Ld/e;->ah(J)V

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    sget-object v1, Lokhttp3/internal/e/b;->dar:Lokhttp3/internal/e/b;

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/i;->c(Lokhttp3/internal/e/b;)V

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

    invoke-interface {p1, p2, p3}, Ld/e;->ah(J)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbC:Ld/c;

    invoke-interface {p1, v0, p2, p3}, Ld/e;->a(Ld/c;J)J

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

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/e/i$b;->closed:Z

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbD:Ld/c;

    invoke-virtual {v0}, Ld/c;->clear()V

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lokhttp3/internal/e/i$b;->dbB:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->cancelStreamIfNecessary()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
