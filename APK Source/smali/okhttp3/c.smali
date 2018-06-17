.class public final Lokhttp3/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/c$b;,
        Lokhttp3/c$c;,
        Lokhttp3/c$a;
    }
.end annotation


# instance fields
.field final cWc:Lokhttp3/internal/a/f;

.field public final cWd:Lokhttp3/internal/a/d;

.field private hitCount:I

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    sget-object v0, Lokhttp3/internal/f/a;->dbK:Lokhttp3/internal/f/a;

    invoke-direct {p0, p1, v0}, Lokhttp3/c;-><init>(Ljava/io/File;Lokhttp3/internal/f/a;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lokhttp3/internal/f/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/c$1;

    invoke-direct {v0, p0}, Lokhttp3/c$1;-><init>(Lokhttp3/c;)V

    iput-object v0, p0, Lokhttp3/c;->cWc:Lokhttp3/internal/a/f;

    invoke-static {p2, p1}, Lokhttp3/internal/a/d;->a(Lokhttp3/internal/f/a;Ljava/io/File;)Lokhttp3/internal/a/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/c;->cWd:Lokhttp3/internal/a/d;

    return-void
.end method

.method static a(Ld/e;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ld/e;->Kw()J

    move-result-wide v0

    invoke-interface {p0}, Ld/e;->Kz()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "expected an int but was \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method private static a(Lokhttp3/q;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lokhttp3/q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->Nl()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->KJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lokhttp3/internal/a/d$a;)V
    .locals 1
    .param p0    # Lokhttp3/internal/a/d$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/a/d$a;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final a(Lokhttp3/y;)Lokhttp3/internal/a/b;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p1, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v1, v1, Lokhttp3/w;->method:Ljava/lang/String;

    iget-object v2, p1, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v2, v2, Lokhttp3/w;->method:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/internal/c/f;->invalidatesCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v1, p1, Lokhttp3/y;->cZt:Lokhttp3/w;

    invoke-virtual {p0, v1}, Lokhttp3/c;->b(Lokhttp3/w;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lokhttp3/internal/c/e;->g(Lokhttp3/y;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lokhttp3/c$c;

    invoke-direct {v1, p1}, Lokhttp3/c$c;-><init>(Lokhttp3/y;)V

    :try_start_1
    iget-object v2, p0, Lokhttp3/c;->cWd:Lokhttp3/internal/a/d;

    iget-object v3, p1, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v3, v3, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-static {v3}, Lokhttp3/c;->a(Lokhttp3/q;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/a/d;->c(Ljava/lang/String;J)Lokhttp3/internal/a/d$a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v1, v2}, Lokhttp3/c$c;->b(Lokhttp3/internal/a/d$a;)V

    new-instance v1, Lokhttp3/c$a;

    invoke-direct {v1, p0, v2}, Lokhttp3/c$a;-><init>(Lokhttp3/c;Lokhttp3/internal/a/d$a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lokhttp3/c;->a(Lokhttp3/internal/a/d$a;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method final a(Lokhttp3/w;)Lokhttp3/y;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-static {v1}, Lokhttp3/c;->a(Lokhttp3/q;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lokhttp3/c;->cWd:Lokhttp3/internal/a/d;

    invoke-virtual {v3, v1}, Lokhttp3/internal/a/d;->fC(Ljava/lang/String;)Lokhttp3/internal/a/d$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v3, Lokhttp3/c$c;

    iget-object v4, v1, Lokhttp3/internal/a/d$c;->daa:[Ld/s;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Lokhttp3/c$c;-><init>(Ld/s;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, v3, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    const-string v5, "Content-Type"

    invoke-virtual {v4, v5}, Lokhttp3/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    const-string v6, "Content-Length"

    invoke-virtual {v5, v6}, Lokhttp3/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lokhttp3/w$a;

    invoke-direct {v6}, Lokhttp3/w$a;-><init>()V

    iget-object v7, v3, Lokhttp3/c$c;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lokhttp3/w$a;->fy(Ljava/lang/String;)Lokhttp3/w$a;

    move-result-object v6

    iget-object v7, v3, Lokhttp3/c$c;->requestMethod:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lokhttp3/w$a;->a(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;

    move-result-object v6

    iget-object v7, v3, Lokhttp3/c$c;->cWp:Lokhttp3/p;

    invoke-virtual {v6, v7}, Lokhttp3/w$a;->b(Lokhttp3/p;)Lokhttp3/w$a;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/w$a;->MH()Lokhttp3/w;

    move-result-object v6

    new-instance v7, Lokhttp3/y$a;

    invoke-direct {v7}, Lokhttp3/y$a;-><init>()V

    iput-object v6, v7, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    iget-object v6, v3, Lokhttp3/c$c;->cWq:Lokhttp3/u;

    iput-object v6, v7, Lokhttp3/y$a;->cWq:Lokhttp3/u;

    iget v6, v3, Lokhttp3/c$c;->code:I

    iput v6, v7, Lokhttp3/y$a;->code:I

    iget-object v6, v3, Lokhttp3/c$c;->message:Ljava/lang/String;

    iput-object v6, v7, Lokhttp3/y$a;->message:Ljava/lang/String;

    iget-object v6, v3, Lokhttp3/c$c;->cWr:Lokhttp3/p;

    invoke-virtual {v7, v6}, Lokhttp3/y$a;->c(Lokhttp3/p;)Lokhttp3/y$a;

    move-result-object v6

    new-instance v7, Lokhttp3/c$b;

    invoke-direct {v7, v1, v4, v5}, Lokhttp3/c$b;-><init>(Lokhttp3/internal/a/d$c;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    iget-object v1, v3, Lokhttp3/c$c;->cWs:Lokhttp3/o;

    iput-object v1, v6, Lokhttp3/y$a;->cWs:Lokhttp3/o;

    iget-wide v4, v3, Lokhttp3/c$c;->sentRequestMillis:J

    iput-wide v4, v6, Lokhttp3/y$a;->sentRequestAtMillis:J

    iget-wide v4, v3, Lokhttp3/c$c;->receivedResponseMillis:J

    iput-wide v4, v6, Lokhttp3/y$a;->receivedResponseAtMillis:J

    invoke-virtual {v6}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v1

    iget-object v4, v3, Lokhttp3/c$c;->url:Ljava/lang/String;

    iget-object v5, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v5}, Lokhttp3/q;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lokhttp3/c$c;->requestMethod:Ljava/lang/String;

    iget-object v5, p1, Lokhttp3/w;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v3, Lokhttp3/c$c;->cWp:Lokhttp3/p;

    invoke-static {v1, v3, p1}, Lokhttp3/internal/c/e;->a(Lokhttp3/y;Lokhttp3/p;Lokhttp3/w;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    iget-object v1, v1, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-static {v1}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {v1}, Lokhttp3/internal/c;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method final declared-synchronized a(Lokhttp3/internal/a/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->requestCount:I

    iget-object v0, p1, Lokhttp3/internal/a/c;->cZT:Lokhttp3/w;

    if-eqz v0, :cond_1

    iget v0, p0, Lokhttp3/c;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p1, Lokhttp3/internal/a/c;->cZw:Lokhttp3/y;

    if-eqz v0, :cond_0

    iget v0, p0, Lokhttp3/c;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lokhttp3/w;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->cWd:Lokhttp3/internal/a/d;

    iget-object v1, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-static {v1}, Lokhttp3/c;->a(Lokhttp3/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/a/d;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->cWd:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/c;->cWd:Lokhttp3/internal/a/d;

    invoke-virtual {v0}, Lokhttp3/internal/a/d;->flush()V

    return-void
.end method

.method final declared-synchronized trackConditionalCacheHit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lokhttp3/c;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/c;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
