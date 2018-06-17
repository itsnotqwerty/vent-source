.class final Lokhttp3/internal/e/f$a;
.super Ld/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field bytesRead:J

.field completed:Z

.field final synthetic daX:Lokhttp3/internal/e/f;


# direct methods
.method constructor <init>(Lokhttp3/internal/e/f;Ld/s;)V
    .locals 2

    iput-object p1, p0, Lokhttp3/internal/e/f$a;->daX:Lokhttp3/internal/e/f;

    invoke-direct {p0, p2}, Ld/h;-><init>(Ld/s;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/e/f$a;->completed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/e/f$a;->bytesRead:J

    return-void
.end method

.method private endOfInput(Ljava/io/IOException;)V
    .locals 3

    iget-boolean v0, p0, Lokhttp3/internal/e/f$a;->completed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/e/f$a;->completed:Z

    iget-object v0, p0, Lokhttp3/internal/e/f$a;->daX:Lokhttp3/internal/e/f;

    iget-object v0, v0, Lokhttp3/internal/e/f;->dak:Lokhttp3/internal/b/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/e/f$a;->daX:Lokhttp3/internal/e/f;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/internal/b/g;->a(ZLokhttp3/internal/c/c;Ljava/io/IOException;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ld/c;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ld/h;->dcd:Ld/s;

    invoke-interface {v0, p1, p2, p3}, Ld/s;->a(Ld/c;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lokhttp3/internal/e/f$a;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/e/f$a;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lokhttp3/internal/e/f$a;->endOfInput(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ld/h;->close()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/e/f$a;->endOfInput(Ljava/io/IOException;)V

    return-void
.end method
