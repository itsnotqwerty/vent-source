.class public final Lio/intercom/a/a/a/i/c;
.super Ljava/io/InputStream;


# static fields
.field private static final cQR:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/intercom/a/a/a/i/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cQS:Ljava/io/InputStream;

.field public cQT:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->ft(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/i/c;->cQR:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public static r(Ljava/io/InputStream;)Lio/intercom/a/a/a/i/c;
    .locals 2

    sget-object v1, Lio/intercom/a/a/a/i/c;->cQR:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/a/a/a/i/c;->cQR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/i/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/a/a/a/i/c;

    invoke-direct {v0}, Lio/intercom/a/a/a/i/c;-><init>()V

    :cond_0
    iput-object p0, v0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lio/intercom/a/a/a/i/c;->cQT:Ljava/io/IOException;

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lio/intercom/a/a/a/i/c;->cQT:Ljava/io/IOException;

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lio/intercom/a/a/a/i/c;->cQT:Ljava/io/IOException;

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/i/c;->cQT:Ljava/io/IOException;

    iput-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    sget-object v1, Lio/intercom/a/a/a/i/c;->cQR:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/a/a/a/i/c;->cQR:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/i/c;->cQS:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lio/intercom/a/a/a/i/c;->cQT:Ljava/io/IOException;

    const-wide/16 v0, 0x0

    goto :goto_0
.end method