.class Lio/intercom/okhttp3/internal/cache/FaultHidingSink;
.super Lio/intercom/b/g;


# instance fields
.field private hasErrors:Z


# direct methods
.method constructor <init>(Lio/intercom/b/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/b/g;-><init>(Lio/intercom/b/r;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lio/intercom/b/g;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lio/intercom/b/g;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method protected onException(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public write(Lio/intercom/b/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lio/intercom/b/c;->ah(J)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lio/intercom/b/g;->write(Lio/intercom/b/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_0
.end method
