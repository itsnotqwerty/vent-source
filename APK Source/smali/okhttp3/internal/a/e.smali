.class Lokhttp3/internal/a/e;
.super Ld/g;


# instance fields
.field private hasErrors:Z


# direct methods
.method constructor <init>(Ld/r;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/g;-><init>(Ld/r;)V

    return-void
.end method


# virtual methods
.method protected MM()V
    .locals 0

    return-void
.end method

.method public final b(Ld/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/a/e;->hasErrors:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Ld/c;->ah(J)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ld/g;->b(Ld/c;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/e;->hasErrors:Z

    invoke-virtual {p0}, Lokhttp3/internal/a/e;->MM()V

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/a/e;->hasErrors:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Ld/g;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/e;->hasErrors:Z

    invoke-virtual {p0}, Lokhttp3/internal/a/e;->MM()V

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/a/e;->hasErrors:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Ld/g;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/e;->hasErrors:Z

    invoke-virtual {p0}, Lokhttp3/internal/a/e;->MM()V

    goto :goto_0
.end method
