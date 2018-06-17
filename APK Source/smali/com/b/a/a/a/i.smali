.class public final Lcom/b/a/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/a/a/t;


# instance fields
.field private final bJv:Lcom/b/a/a/a/g;

.field private final bJw:Lcom/b/a/a/a/e;


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/g;Lcom/b/a/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/a/i;->bJv:Lcom/b/a/a/a/g;

    iput-object p2, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/aa;J)Lb/r;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    iget v0, v1, Lcom/b/a/a/a/e;->f:I

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v4, v1, Lcom/b/a/a/a/e;->f:I

    new-instance v0, Lcom/b/a/a/a/e$b;

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a/e$b;-><init>(Lcom/b/a/a/a/e;B)V

    :goto_0
    return-object v0

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    iget v0, v1, Lcom/b/a/a/a/e;->f:I

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v4, v1, Lcom/b/a/a/a/e;->f:I

    new-instance v0, Lcom/b/a/a/a/e$d;

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/b/a/a/a/e$d;-><init>(Lcom/b/a/a/a/e;JB)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    invoke-virtual {v0}, Lcom/b/a/a/a/e;->d()V

    return-void
.end method

.method public final a(Lcom/b/a/a/a/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    iget v1, v0, Lcom/b/a/a/a/e;->f:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/b/a/a/a/e;->f:I

    iget-object v0, v0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    invoke-virtual {p1, v0}, Lcom/b/a/a/a/n;->a(Lb/r;)V

    return-void
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/b/a/a/a/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    const/4 v1, 0x1

    iput v1, v0, Lcom/b/a/a/a/e;->g:I

    iget v1, v0, Lcom/b/a/a/a/e;->f:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/b/a/a/a/e;->g:I

    sget-object v1, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v2, v0, Lcom/b/a/a/a/e;->bIf:Lcom/b/a/o;

    iget-object v0, v0, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    invoke-virtual {v1, v2, v0}, Lcom/b/a/a/b;->a(Lcom/b/a/o;Lcom/b/a/m;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    const/4 v1, 0x2

    iput v1, v0, Lcom/b/a/a/a/e;->g:I

    iget v1, v0, Lcom/b/a/a/a/e;->f:I

    if-nez v1, :cond_0

    const/4 v1, 0x6

    iput v1, v0, Lcom/b/a/a/a/e;->f:I

    iget-object v0, v0, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    iget-object v0, v0, Lcom/b/a/m;->bIi:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method public final c(Lcom/b/a/aa;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    iget-object v0, p0, Lcom/b/a/a/a/i;->bJv:Lcom/b/a/a/a/g;

    invoke-virtual {v0}, Lcom/b/a/a/a/g;->b()V

    iget-object v0, p0, Lcom/b/a/a/a/i;->bJv:Lcom/b/a/a/a/g;

    iget-object v0, v0, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v0, v0, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v0, v0, Lcom/b/a/c;->bFT:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/i;->bJv:Lcom/b/a/a/a/g;

    iget-object v1, v1, Lcom/b/a/a/a/g;->bJd:Lcom/b/a/m;

    iget-object v1, v1, Lcom/b/a/m;->bIl:Lcom/b/a/y;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/b/a/aa;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/b/a/aa;->k()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/b/a/a/a/m;->a(Lcom/b/a/y;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    iget-object v2, p1, Lcom/b/a/aa;->bMo:Lcom/b/a/t;

    invoke-virtual {v1, v2, v0}, Lcom/b/a/a/a/e;->a(Lcom/b/a/t;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/a/m;->d(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final d(Lcom/b/a/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    sget-object v1, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v0, v0, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    invoke-virtual {v1, v0, p1}, Lcom/b/a/a/b;->a(Lcom/b/a/m;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "close"

    iget-object v3, p0, Lcom/b/a/a/a/i;->bJv:Lcom/b/a/a/a/g;

    iget-object v3, v3, Lcom/b/a/a/a/g;->bJj:Lcom/b/a/aa;

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lcom/b/a/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "close"

    iget-object v3, p0, Lcom/b/a/a/a/i;->bJv:Lcom/b/a/a/a/g;

    invoke-virtual {v3}, Lcom/b/a/a/a/g;->zD()Lcom/b/a/ac;

    move-result-object v3

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    iget v2, v2, Lcom/b/a/a/a/e;->f:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method public final h(Lcom/b/a/ac;)Lcom/b/a/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x5

    const/4 v4, 0x4

    invoke-static {p1}, Lcom/b/a/a/a/g;->a(Lcom/b/a/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/a/e;->P(J)Lb/s;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/b/a/a/a/k;

    iget-object v2, p1, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-static {v0}, Lb/m;->b(Lb/s;)Lb/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/b/a/a/a/k;-><init>(Lcom/b/a/t;Lb/e;)V

    return-object v1

    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    iget-object v2, p0, Lcom/b/a/a/a/i;->bJv:Lcom/b/a/a/a/g;

    iget v0, v1, Lcom/b/a/a/a/e;->f:I

    if-eq v0, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v5, v1, Lcom/b/a/a/a/e;->f:I

    new-instance v0, Lcom/b/a/a/a/e$c;

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a/e$c;-><init>(Lcom/b/a/a/a/e;Lcom/b/a/a/a/g;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/b/a/a/a/j;->i(Lcom/b/a/ac;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    invoke-virtual {v2, v0, v1}, Lcom/b/a/a/a/e;->P(J)Lb/s;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    iget v0, v1, Lcom/b/a/a/a/e;->f:I

    if-eq v0, v4, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput v5, v1, Lcom/b/a/a/a/e;->f:I

    new-instance v0, Lcom/b/a/a/a/e$f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a/e$f;-><init>(Lcom/b/a/a/a/e;B)V

    goto :goto_0
.end method

.method public final zG()Lcom/b/a/ac$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/i;->bJw:Lcom/b/a/a/a/e;

    invoke-virtual {v0}, Lcom/b/a/a/a/e;->zz()Lcom/b/a/ac$a;

    move-result-object v0

    return-object v0
.end method
