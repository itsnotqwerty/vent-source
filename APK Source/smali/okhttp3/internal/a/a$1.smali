.class final Lokhttp3/internal/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ld/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cZP:Ld/e;

.field final synthetic cZQ:Lokhttp3/internal/a/b;

.field final synthetic cZR:Ld/d;

.field final synthetic cZS:Lokhttp3/internal/a/a;

.field cacheRequestClosed:Z


# direct methods
.method constructor <init>(Lokhttp3/internal/a/a;Ld/e;Lokhttp3/internal/a/b;Ld/d;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/a/a$1;->cZS:Lokhttp3/internal/a/a;

    iput-object p2, p0, Lokhttp3/internal/a/a$1;->cZP:Ld/e;

    iput-object p3, p0, Lokhttp3/internal/a/a$1;->cZQ:Lokhttp3/internal/a/b;

    iput-object p4, p0, Lokhttp3/internal/a/a$1;->cZR:Ld/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/a/a$1;->cZP:Ld/e;

    invoke-interface {v0}, Ld/e;->MK()Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ld/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/a/a$1;->cZP:Ld/e;

    invoke-interface {v2, p1, p2, p3}, Ld/e;->a(Ld/c;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lokhttp3/internal/a/a$1;->cacheRequestClosed:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lokhttp3/internal/a/a$1;->cacheRequestClosed:Z

    iget-object v2, p0, Lokhttp3/internal/a/a$1;->cZR:Ld/d;

    invoke-interface {v2}, Ld/d;->close()V

    :cond_0
    move-wide v4, v0

    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lokhttp3/internal/a/a$1;->cacheRequestClosed:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lokhttp3/internal/a/a$1;->cacheRequestClosed:Z

    iget-object v1, p0, Lokhttp3/internal/a/a$1;->cZQ:Lokhttp3/internal/a/b;

    invoke-interface {v1}, Lokhttp3/internal/a/b;->abort()V

    :cond_1
    throw v0

    :cond_2
    iget-object v0, p0, Lokhttp3/internal/a/a$1;->cZR:Ld/d;

    invoke-interface {v0}, Ld/d;->Nj()Ld/c;

    move-result-object v1

    iget-wide v2, p1, Ld/c;->size:J

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ld/c;->a(Ld/c;JJ)Ld/c;

    iget-object v0, p0, Lokhttp3/internal/a/a$1;->cZR:Ld/d;

    invoke-interface {v0}, Ld/d;->Nk()Ld/d;

    goto :goto_0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/a/a$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0}, Lokhttp3/internal/c;->a(Ld/s;Ljava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/a/a$1;->cacheRequestClosed:Z

    iget-object v0, p0, Lokhttp3/internal/a/a$1;->cZQ:Lokhttp3/internal/a/b;

    invoke-interface {v0}, Lokhttp3/internal/a/b;->abort()V

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/a/a$1;->cZP:Ld/e;

    invoke-interface {v0}, Ld/e;->close()V

    return-void
.end method
