.class public final Lokhttp3/internal/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/r;


# instance fields
.field private final cZa:Lokhttp3/k;


# direct methods
.method public constructor <init>(Lokhttp3/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/c/a;->cZa:Lokhttp3/k;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/r$a;)Lokhttp3/y;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, -0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lokhttp3/r$a;->MD()Lokhttp3/w;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/w;->MF()Lokhttp3/w$a;

    move-result-object v4

    iget-object v0, v3, Lokhttp3/w;->cZp:Lokhttp3/x;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/x;->LX()Lokhttp3/s;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "Content-Type"

    invoke-virtual {v1}, Lokhttp3/s;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    :cond_0
    invoke-virtual {v0}, Lokhttp3/x;->contentLength()J

    move-result-wide v0

    cmp-long v5, v0, v12

    if-eqz v5, :cond_5

    const-string v5, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v4, v0}, Lokhttp3/w$a;->fz(Ljava/lang/String;)Lokhttp3/w$a;

    :cond_1
    :goto_0
    const-string v0, "Host"

    invoke-virtual {v3, v0}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Host"

    iget-object v1, v3, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-static {v1, v2}, Lokhttp3/internal/c;->a(Lokhttp3/q;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    :cond_2
    const-string v0, "Connection"

    invoke-virtual {v3, v0}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v4, v0, v1}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    :cond_3
    const-string v0, "Accept-Encoding"

    invoke-virtual {v3, v0}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "Range"

    invoke-virtual {v3, v0}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    const-string v1, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v4, v1, v5}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    move v1, v0

    :goto_1
    iget-object v0, p0, Lokhttp3/internal/c/a;->cZa:Lokhttp3/k;

    invoke-interface {v0}, Lokhttp3/k;->Me()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v6, "Cookie"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_2
    if-ge v2, v8, :cond_6

    if-lez v2, :cond_4

    const-string v0, "; "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/j;

    iget-object v9, v0, Lokhttp3/j;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v0, Lokhttp3/j;->value:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v0, "Transfer-Encoding"

    const-string v1, "chunked"

    invoke-virtual {v4, v0, v1}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    const-string v0, "Content-Length"

    invoke-virtual {v4, v0}, Lokhttp3/w$a;->fz(Ljava/lang/String;)Lokhttp3/w$a;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    :cond_7
    const-string v0, "User-Agent"

    invoke-virtual {v3, v0}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "User-Agent"

    const-string v2, "okhttp/3.10.0"

    invoke-virtual {v4, v0, v2}, Lokhttp3/w$a;->Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;

    :cond_8
    invoke-virtual {v4}, Lokhttp3/w$a;->MH()Lokhttp3/w;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/r$a;->c(Lokhttp3/w;)Lokhttp3/y;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/c/a;->cZa:Lokhttp3/k;

    iget-object v4, v3, Lokhttp3/w;->cVX:Lokhttp3/q;

    iget-object v5, v0, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-static {v2, v4, v5}, Lokhttp3/internal/c/e;->a(Lokhttp3/k;Lokhttp3/q;Lokhttp3/p;)V

    invoke-virtual {v0}, Lokhttp3/y;->MI()Lokhttp3/y$a;

    move-result-object v2

    iput-object v3, v2, Lokhttp3/y$a;->cZt:Lokhttp3/w;

    if-eqz v1, :cond_9

    const-string v1, "gzip"

    const-string v3, "Content-Encoding"

    invoke-virtual {v0, v3}, Lokhttp3/y;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lokhttp3/internal/c/e;->i(Lokhttp3/y;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ld/j;

    iget-object v3, v0, Lokhttp3/y;->cZu:Lokhttp3/z;

    invoke-virtual {v3}, Lokhttp3/z;->LY()Ld/e;

    move-result-object v3

    invoke-direct {v1, v3}, Ld/j;-><init>(Ld/s;)V

    iget-object v3, v0, Lokhttp3/y;->cZo:Lokhttp3/p;

    invoke-virtual {v3}, Lokhttp3/p;->MA()Lokhttp3/p$a;

    move-result-object v3

    const-string v4, "Content-Encoding"

    invoke-virtual {v3, v4}, Lokhttp3/p$a;->fs(Ljava/lang/String;)Lokhttp3/p$a;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lokhttp3/p$a;->fs(Ljava/lang/String;)Lokhttp3/p$a;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/y$a;->c(Lokhttp3/p;)Lokhttp3/y$a;

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3}, Lokhttp3/y;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lokhttp3/internal/c/h;

    invoke-static {v1}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v1

    invoke-direct {v3, v0, v12, v13, v1}, Lokhttp3/internal/c/h;-><init>(Ljava/lang/String;JLd/e;)V

    iput-object v3, v2, Lokhttp3/y$a;->cZu:Lokhttp3/z;

    :cond_9
    invoke-virtual {v2}, Lokhttp3/y$a;->MJ()Lokhttp3/y;

    move-result-object v0

    return-object v0

    :cond_a
    move v1, v2

    goto/16 :goto_1
.end method
