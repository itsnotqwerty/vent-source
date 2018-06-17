.class public final Lcom/b/a/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/e$f;,
        Lcom/b/a/a/a/e$c;,
        Lcom/b/a/a/a/e$e;,
        Lcom/b/a/a/a/e$a;,
        Lcom/b/a/a/a/e$b;,
        Lcom/b/a/a/a/e$d;
    }
.end annotation


# instance fields
.field final bIN:Lcom/b/a/m;

.field private final bIO:Ljava/net/Socket;

.field final bIP:Lb/e;

.field final bIQ:Lb/d;

.field final bIf:Lcom/b/a/o;

.field f:I

.field g:I


# direct methods
.method public constructor <init>(Lcom/b/a/o;Lcom/b/a/m;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/b/a/a/a/e;->f:I

    iput v0, p0, Lcom/b/a/a/a/e;->g:I

    iput-object p1, p0, Lcom/b/a/a/a/e;->bIf:Lcom/b/a/o;

    iput-object p2, p0, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    iput-object p3, p0, Lcom/b/a/a/a/e;->bIO:Ljava/net/Socket;

    invoke-static {p3}, Lb/m;->g(Ljava/net/Socket;)Lb/s;

    move-result-object v0

    invoke-static {v0}, Lb/m;->b(Lb/s;)Lb/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-static {p3}, Lb/m;->f(Ljava/net/Socket;)Lb/r;

    move-result-object v0

    invoke-static {v0}, Lb/m;->b(Lb/r;)Lb/d;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    return-void
.end method

.method static synthetic a(Lb/i;)V
    .locals 2

    iget-object v0, p0, Lb/i;->cUA:Lb/t;

    sget-object v1, Lb/t;->cUH:Lb/t;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v1, p0, Lb/i;->cUA:Lb/t;

    invoke-virtual {v0}, Lb/t;->Ln()Lb/t;

    invoke-virtual {v0}, Lb/t;->Lm()Lb/t;

    return-void
.end method


# virtual methods
.method public final P(J)Lb/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/b/a/a/a/e;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/b/a/a/a/e;->f:I

    new-instance v0, Lcom/b/a/a/a/e$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/a/a/e$e;-><init>(Lcom/b/a/a/a/e;J)V

    return-object v0
.end method

.method public final a(Lcom/b/a/t$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v0}, Lb/e;->Lf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    invoke-virtual {v1, p1, v0}, Lcom/b/a/a/b;->a(Lcom/b/a/t$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/b/a/t;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/b/a/a/a/e;->f:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    invoke-interface {v0, p2}, Lb/d;->fm(Ljava/lang/String;)Lb/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lb/d;->fm(Ljava/lang/String;)Lb/d;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    invoke-virtual {p1, v0}, Lcom/b/a/t;->dV(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/d;->fm(Ljava/lang/String;)Lb/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lb/d;->fm(Ljava/lang/String;)Lb/d;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/b/a/t;->dW(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/d;->fm(Ljava/lang/String;)Lb/d;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lb/d;->fm(Ljava/lang/String;)Lb/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lb/d;->fm(Ljava/lang/String;)Lb/d;

    const/4 v0, 0x1

    iput v0, p0, Lcom/b/a/a/a/e;->f:I

    return-void
.end method

.method public final aA(II)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v0}, Lb/e;->zA()Lb/t;

    move-result-object v0

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lb/t;->c(JLjava/util/concurrent/TimeUnit;)Lb/t;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    invoke-interface {v0}, Lb/d;->zA()Lb/t;

    move-result-object v0

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lb/t;->c(JLjava/util/concurrent/TimeUnit;)Lb/t;

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/a/e;->bIQ:Lb/d;

    invoke-interface {v0}, Lb/d;->flush()V

    return-void
.end method

.method public final f()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/b/a/a/a/e;->bIO:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    iget-object v2, p0, Lcom/b/a/a/a/e;->bIO:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v2, p0, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v2}, Lb/e;->xi()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/b/a/a/a/e;->bIO:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/b/a/a/a/e;->bIO:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/b/a/a/a/e;->bIO:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final zz()Lcom/b/a/ac$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/b/a/a/a/e;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/a/a/e;->f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/a/a/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/a/e;->bIP:Lb/e;

    invoke-interface {v0}, Lb/e;->Lf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/a/s;->dG(Ljava/lang/String;)Lcom/b/a/a/a/s;

    move-result-object v0

    new-instance v1, Lcom/b/a/ac$a;

    invoke-direct {v1}, Lcom/b/a/ac$a;-><init>()V

    iget-object v2, v0, Lcom/b/a/a/a/s;->bJR:Lcom/b/a/y;

    iput-object v2, v1, Lcom/b/a/ac$a;->bMk:Lcom/b/a/y;

    iget v2, v0, Lcom/b/a/a/a/s;->b:I

    iput v2, v1, Lcom/b/a/ac$a;->c:I

    iget-object v2, v0, Lcom/b/a/a/a/s;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/b/a/ac$a;->d:Ljava/lang/String;

    new-instance v2, Lcom/b/a/t$a;

    invoke-direct {v2}, Lcom/b/a/t$a;-><init>()V

    invoke-virtual {p0, v2}, Lcom/b/a/a/a/e;->a(Lcom/b/a/t$a;)V

    sget-object v3, Lcom/b/a/a/a/j;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/b/a/a/a/s;->bJR:Lcom/b/a/y;

    invoke-virtual {v4}, Lcom/b/a/y;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/b/a/t$a;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    invoke-virtual {v2}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/ac$a;->e(Lcom/b/a/t;)Lcom/b/a/ac$a;

    iget v0, v0, Lcom/b/a/a/a/s;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/b/a/a/a/e;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected end of stream on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (recycle count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/b/a/a/b;->bIs:Lcom/b/a/a/b;

    iget-object v4, p0, Lcom/b/a/a/a/e;->bIN:Lcom/b/a/m;

    invoke-virtual {v3, v4}, Lcom/b/a/a/b;->c(Lcom/b/a/m;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method
