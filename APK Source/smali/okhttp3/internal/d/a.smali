.class public final Lokhttp3/internal/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/d/a$f;,
        Lokhttp3/internal/d/a$c;,
        Lokhttp3/internal/d/a$e;,
        Lokhttp3/internal/d/a$a;,
        Lokhttp3/internal/d/a$b;,
        Lokhttp3/internal/d/a$d;
    }
.end annotation


# instance fields
.field final cgQ:Lokhttp3/t;

.field final dad:Ld/e;

.field final dae:Ld/d;

.field final dak:Lokhttp3/internal/b/g;

.field private headerLimit:J

.field state:I


# direct methods
.method public constructor <init>(Lokhttp3/t;Lokhttp3/internal/b/g;Ld/e;Ld/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/d/a;->state:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lokhttp3/internal/d/a;->headerLimit:J

    iput-object p1, p0, Lokhttp3/internal/d/a;->cgQ:Lokhttp3/t;

    iput-object p2, p0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    iput-object p3, p0, Lokhttp3/internal/d/a;->dad:Ld/e;

    iput-object p4, p0, Lokhttp3/internal/d/a;->dae:Ld/d;

    return-void
.end method

.method static a(Ld/i;)V
    .locals 2

    iget-object v0, p0, Ld/i;->dce:Ld/t;

    sget-object v1, Ld/t;->dcn:Ld/t;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, p0, Ld/i;->dce:Ld/t;

    invoke-virtual {v0}, Ld/t;->Nq()Ld/t;

    invoke-virtual {v0}, Ld/t;->Np()Ld/t;

    return-void
.end method

.method private readHeaderLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/d/a;->dad:Ld/e;

    iget-wide v2, p0, Lokhttp3/internal/d/a;->headerLimit:J

    invoke-interface {v0, v2, v3}, Ld/e;->ae(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lokhttp3/internal/d/a;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokhttp3/internal/d/a;->headerLimit:J

    return-object v0
.end method


# virtual methods
.method public final MS()Lokhttp3/p;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/p$a;

    invoke-direct {v0}, Lokhttp3/p$a;-><init>()V

    :goto_0
    invoke-direct {p0}, Lokhttp3/internal/d/a;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/a;->a(Lokhttp3/p$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lokhttp3/w;J)Ld/r;
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lokhttp3/internal/d/a;->state:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v3, p0, Lokhttp3/internal/d/a;->state:I

    new-instance v0, Lokhttp3/internal/d/a$b;

    invoke-direct {v0, p0}, Lokhttp3/internal/d/a$b;-><init>(Lokhttp3/internal/d/a;)V

    :goto_0
    return-object v0

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    iget v0, p0, Lokhttp3/internal/d/a;->state:I

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v3, p0, Lokhttp3/internal/d/a;->state:I

    new-instance v0, Lokhttp3/internal/d/a$d;

    invoke-direct {v0, p0, p2, p3}, Lokhttp3/internal/d/a$d;-><init>(Lokhttp3/internal/d/a;J)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lokhttp3/p;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/d/a;->state:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/d/a;->dae:Ld/d;

    invoke-interface {v0, p2}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    const/4 v0, 0x0

    iget-object v1, p1, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lokhttp3/internal/d/a;->dae:Ld/d;

    invoke-virtual {p1, v0}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v2

    invoke-virtual {p1, v0}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/d/a;->dae:Ld/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ld/d;->fF(Ljava/lang/String;)Ld/d;

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/d/a;->state:I

    return-void
.end method

.method public final ay(J)Ld/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/d/a;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/d/a;->state:I

    new-instance v0, Lokhttp3/internal/d/a$e;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/d/a$e;-><init>(Lokhttp3/internal/d/a;J)V

    return-object v0
.end method

.method public final bz(Z)Lokhttp3/y$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x64

    const/4 v2, 0x3

    iget v0, p0, Lokhttp3/internal/d/a;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/d/a;->state:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/d/a;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c/k;->fD(Ljava/lang/String;)Lokhttp3/internal/c/k;

    move-result-object v1

    new-instance v0, Lokhttp3/y$a;

    invoke-direct {v0}, Lokhttp3/y$a;-><init>()V

    iget-object v2, v1, Lokhttp3/internal/c/k;->cWq:Lokhttp3/u;

    iput-object v2, v0, Lokhttp3/y$a;->cWq:Lokhttp3/u;

    iget v2, v1, Lokhttp3/internal/c/k;->code:I

    iput v2, v0, Lokhttp3/y$a;->code:I

    iget-object v2, v1, Lokhttp3/internal/c/k;->message:Ljava/lang/String;

    iput-object v2, v0, Lokhttp3/y$a;->message:Ljava/lang/String;

    invoke-virtual {p0}, Lokhttp3/internal/d/a;->MS()Lokhttp3/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/y$a;->c(Lokhttp3/p;)Lokhttp3/y$a;

    move-result-object v0

    if-eqz p1, :cond_1

    iget v2, v1, Lokhttp3/internal/c/k;->code:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v1, v1, Lokhttp3/internal/c/k;->code:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    iput v1, p0, Lokhttp3/internal/d/a;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_2
    const/4 v1, 0x4

    :try_start_1
    iput v1, p0, Lokhttp3/internal/d/a;->state:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final d(Lokhttp3/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    invoke-virtual {v0}, Lokhttp3/internal/b/g;->MR()Lokhttp3/internal/b/c;

    move-result-object v0

    iget-object v0, v0, Lokhttp3/internal/b/c;->dab:Lokhttp3/aa;

    iget-object v0, v0, Lokhttp3/aa;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lokhttp3/w;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v2}, Lokhttp3/q;->isHttps()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lokhttp3/w;->cZo:Lokhttp3/p;

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/d/a;->a(Lokhttp3/p;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-static {v0}, Lokhttp3/internal/c/i;->d(Lokhttp3/q;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final e(Lokhttp3/y;)Lokhttp3/z;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    iget-object v0, v0, Lokhttp3/internal/b/g;->cZl:Lokhttp3/n;

    iget-object v0, p0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    iget-object v0, v0, Lokhttp3/internal/b/g;->daf:Lokhttp3/e;

    invoke-static {}, Lokhttp3/n;->Mv()V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, v3}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lokhttp3/internal/c/e;->i(Lokhttp3/y;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v8, v9}, Lokhttp3/internal/d/a;->ay(J)Ld/s;

    move-result-object v2

    new-instance v0, Lokhttp3/internal/c/h;

    invoke-static {v2}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v2

    invoke-direct {v0, v1, v8, v9, v2}, Lokhttp3/internal/c/h;-><init>(Ljava/lang/String;JLd/e;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "chunked"

    const-string v2, "Transfer-Encoding"

    invoke-virtual {p1, v2, v3}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lokhttp3/y;->cZt:Lokhttp3/w;

    iget-object v0, v0, Lokhttp3/w;->cVX:Lokhttp3/q;

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    if-eq v2, v6, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v7, p0, Lokhttp3/internal/d/a;->state:I

    new-instance v2, Lokhttp3/internal/d/a$c;

    invoke-direct {v2, p0, v0}, Lokhttp3/internal/d/a$c;-><init>(Lokhttp3/internal/d/a;Lokhttp3/q;)V

    new-instance v0, Lokhttp3/internal/c/h;

    invoke-static {v2}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v2

    invoke-direct {v0, v1, v4, v5, v2}, Lokhttp3/internal/c/h;-><init>(Ljava/lang/String;JLd/e;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lokhttp3/internal/c/e;->f(Lokhttp3/y;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/d/a;->ay(J)Ld/s;

    move-result-object v4

    new-instance v0, Lokhttp3/internal/c/h;

    invoke-static {v4}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lokhttp3/internal/c/h;-><init>(Ljava/lang/String;JLd/e;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lokhttp3/internal/c/h;

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    if-eq v2, v6, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lokhttp3/internal/d/a;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    if-nez v2, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput v7, p0, Lokhttp3/internal/d/a;->state:I

    iget-object v2, p0, Lokhttp3/internal/d/a;->dak:Lokhttp3/internal/b/g;

    invoke-virtual {v2}, Lokhttp3/internal/b/g;->noNewStreams()V

    new-instance v2, Lokhttp3/internal/d/a$f;

    invoke-direct {v2, p0}, Lokhttp3/internal/d/a$f;-><init>(Lokhttp3/internal/d/a;)V

    invoke-static {v2}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v2

    invoke-direct {v0, v1, v4, v5, v2}, Lokhttp3/internal/c/h;-><init>(Ljava/lang/String;JLd/e;)V

    goto/16 :goto_0
.end method

.method public final finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/d/a;->dae:Ld/d;

    invoke-interface {v0}, Ld/d;->flush()V

    return-void
.end method

.method public final flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/d/a;->dae:Ld/d;

    invoke-interface {v0}, Ld/d;->flush()V

    return-void
.end method
