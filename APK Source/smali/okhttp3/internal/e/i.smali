.class public final Lokhttp3/internal/e/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/e/i$c;,
        Lokhttp3/internal/e/i$a;,
        Lokhttp3/internal/e/i$b;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final daV:Lokhttp3/internal/e/g;

.field final dbv:Lokhttp3/internal/e/i$b;

.field final dbw:Lokhttp3/internal/e/i$a;

.field final dbx:Lokhttp3/internal/e/i$c;

.field final dby:Lokhttp3/internal/e/i$c;

.field dbz:Lokhttp3/internal/e/b;

.field hasResponseHeaders:Z

.field final id:I

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;"
        }
    .end annotation
.end field

.field responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lokhttp3/internal/e/i;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILokhttp3/internal/e/g;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/internal/e/g;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/e/i;->unacknowledgedBytesRead:J

    new-instance v0, Lokhttp3/internal/e/i$c;

    invoke-direct {v0, p0}, Lokhttp3/internal/e/i$c;-><init>(Lokhttp3/internal/e/i;)V

    iput-object v0, p0, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    new-instance v0, Lokhttp3/internal/e/i$c;

    invoke-direct {v0, p0}, Lokhttp3/internal/e/i$c;-><init>(Lokhttp3/internal/e/i;)V

    iput-object v0, p0, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lokhttp3/internal/e/i;->id:I

    iput-object p2, p0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-object v0, p2, Lokhttp3/internal/e/g;->dbe:Lokhttp3/internal/e/m;

    invoke-virtual {v0}, Lokhttp3/internal/e/m;->getInitialWindowSize()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/e/i;->bytesLeftInWriteWindow:J

    new-instance v0, Lokhttp3/internal/e/i$b;

    iget-object v1, p2, Lokhttp3/internal/e/g;->dbd:Lokhttp3/internal/e/m;

    invoke-virtual {v1}, Lokhttp3/internal/e/m;->getInitialWindowSize()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lokhttp3/internal/e/i$b;-><init>(Lokhttp3/internal/e/i;J)V

    iput-object v0, p0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    new-instance v0, Lokhttp3/internal/e/i$a;

    invoke-direct {v0, p0}, Lokhttp3/internal/e/i$a;-><init>(Lokhttp3/internal/e/i;)V

    iput-object v0, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-object v0, p0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    iput-boolean p4, v0, Lokhttp3/internal/e/i$b;->finished:Z

    iget-object v0, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iput-boolean p3, v0, Lokhttp3/internal/e/i$a;->finished:Z

    iput-object p5, p0, Lokhttp3/internal/e/i;->requestHeaders:Ljava/util/List;

    return-void
.end method

.method private d(Lokhttp3/internal/e/b;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lokhttp3/internal/e/i;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    if-eqz v1, :cond_1

    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    iget-boolean v1, v1, Lokhttp3/internal/e/i$b;->finished:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-boolean v1, v1, Lokhttp3/internal/e/i$a;->finished:Z

    if-eqz v1, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iput-object p1, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget v1, p0, Lokhttp3/internal/e/i;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/g;->fT(I)Lokhttp3/internal/e/i;

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final MX()Ld/r;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/e/i;->hasResponseHeaders:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/e/i;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    return-object v0
.end method

.method final addBytesToWriteWindow(J)V
    .locals 3

    iget-wide v0, p0, Lokhttp3/internal/e/i;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/e/i;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public final b(Lokhttp3/internal/e/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lokhttp3/internal/e/i;->d(Lokhttp3/internal/e/b;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget v1, p0, Lokhttp3/internal/e/i;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/e/g;->b(ILokhttp3/internal/e/b;)V

    goto :goto_0
.end method

.method public final c(Lokhttp3/internal/e/b;)V
    .locals 2

    invoke-direct {p0, p1}, Lokhttp3/internal/e/i;->d(Lokhttp3/internal/e/b;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget v1, p0, Lokhttp3/internal/e/i;->id:I

    invoke-virtual {v0, v1, p1}, Lokhttp3/internal/e/g;->a(ILokhttp3/internal/e/b;)V

    goto :goto_0
.end method

.method final cancelStreamIfNecessary()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lokhttp3/internal/e/i;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    iget-boolean v0, v0, Lokhttp3/internal/e/i$b;->finished:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    iget-boolean v0, v0, Lokhttp3/internal/e/i$b;->closed:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-boolean v0, v0, Lokhttp3/internal/e/i$a;->finished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-boolean v0, v0, Lokhttp3/internal/e/i$a;->closed:Z

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/e/i;->isOpen()Z

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    sget-object v0, Lokhttp3/internal/e/b;->dat:Lokhttp3/internal/e/b;

    invoke-virtual {p0, v0}, Lokhttp3/internal/e/i;->b(Lokhttp3/internal/e/b;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    if-nez v1, :cond_2

    iget-object v0, p0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget v1, p0, Lokhttp3/internal/e/i;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/g;->fT(I)Lokhttp3/internal/e/i;

    goto :goto_1
.end method

.method final checkOutNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-boolean v0, v0, Lokhttp3/internal/e/i$a;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-boolean v0, v0, Lokhttp3/internal/e/i$a;->finished:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    if-eqz v0, :cond_2

    new-instance v0, Lokhttp3/internal/e/n;

    iget-object v1, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    invoke-direct {v0, v1}, Lokhttp3/internal/e/n;-><init>(Lokhttp3/internal/e/b;)V

    throw v0

    :cond_2
    return-void
.end method

.method final declared-synchronized e(Lokhttp3/internal/e/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    if-nez v0, :cond_0

    iput-object p1, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLocallyInitiated()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lokhttp3/internal/e/i;->id:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget-boolean v3, v3, Lokhttp3/internal/e/g;->client:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final declared-synchronized isOpen()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    iget-boolean v1, v1, Lokhttp3/internal/e/i$b;->finished:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    iget-boolean v1, v1, Lokhttp3/internal/e/i$b;->closed:Z

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-boolean v1, v1, Lokhttp3/internal/e/i$a;->finished:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/e/i;->dbw:Lokhttp3/internal/e/i$a;

    iget-boolean v1, v1, Lokhttp3/internal/e/i$a;->closed:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lokhttp3/internal/e/i;->hasResponseHeaders:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final receiveFin()V
    .locals 2

    sget-boolean v0, Lokhttp3/internal/e/i;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/e/i$b;->finished:Z

    invoke-virtual {p0}, Lokhttp3/internal/e/i;->isOpen()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/i;->daV:Lokhttp3/internal/e/g;

    iget v1, p0, Lokhttp3/internal/e/i;->id:I

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/g;->fT(I)Lokhttp3/internal/e/i;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized takeResponseHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/e/i;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    invoke-virtual {v0}, Lokhttp3/internal/e/i$c;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/e/i;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lokhttp3/internal/e/i;->waitForIo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    invoke-virtual {v1}, Lokhttp3/internal/e/i$c;->exitAndThrowIfTimedOut()V

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    invoke-virtual {v0}, Lokhttp3/internal/e/i$c;->exitAndThrowIfTimedOut()V

    iget-object v0, p0, Lokhttp3/internal/e/i;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/e/i;->responseHeaders:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_4
    new-instance v0, Lokhttp3/internal/e/n;

    iget-object v1, p0, Lokhttp3/internal/e/i;->dbz:Lokhttp3/internal/e/b;

    invoke-direct {v0, v1}, Lokhttp3/internal/e/n;-><init>(Lokhttp3/internal/e/b;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method final waitForIo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
