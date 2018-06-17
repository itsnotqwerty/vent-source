.class final Lcom/c/a/r;
.super Lcom/c/a/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/r$a;
    }
.end annotation


# instance fields
.field private final bMZ:Lcom/c/a/aa;

.field private final bNs:Lcom/c/a/j;


# direct methods
.method public constructor <init>(Lcom/c/a/j;Lcom/c/a/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/c/a/y;-><init>()V

    iput-object p1, p0, Lcom/c/a/r;->bNs:Lcom/c/a/j;

    iput-object p2, p0, Lcom/c/a/r;->bMZ:Lcom/c/a/aa;

    return-void
.end method


# virtual methods
.method final At()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/c/a/w;I)Lcom/c/a/y$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/c/a/r;->bNs:Lcom/c/a/j;

    iget-object v1, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    iget v2, p1, Lcom/c/a/w;->bMK:I

    invoke-interface {v0, v1, v2}, Lcom/c/a/j;->a(Landroid/net/Uri;I)Lcom/c/a/j$a;

    move-result-object v1

    iget-boolean v0, v1, Lcom/c/a/j$a;->avu:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    :goto_0
    iget-object v2, v1, Lcom/c/a/j$a;->avo:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/c/a/y$a;

    invoke-direct {v1, v2, v0}, Lcom/c/a/y$a;-><init>(Landroid/graphics/Bitmap;Lcom/c/a/t$d;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/c/a/t$d;->bOp:Lcom/c/a/t$d;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/c/a/j$a;->bNE:Ljava/io/InputStream;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/c/a/t$d;->bOo:Lcom/c/a/t$d;

    if-ne v0, v3, :cond_3

    iget-wide v4, v1, Lcom/c/a/j$a;->contentLength:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/c/a/ag;->m(Ljava/io/InputStream;)V

    new-instance v0, Lcom/c/a/r$a;

    const-string v1, "Received response with 0 content-length header."

    invoke-direct {v0, v1}, Lcom/c/a/r$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v3, Lcom/c/a/t$d;->bOp:Lcom/c/a/t$d;

    if-ne v0, v3, :cond_4

    iget-wide v4, v1, Lcom/c/a/j$a;->contentLength:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/c/a/r;->bMZ:Lcom/c/a/aa;

    iget-wide v4, v1, Lcom/c/a/j$a;->contentLength:J

    iget-object v1, v3, Lcom/c/a/aa;->handler:Landroid/os/Handler;

    iget-object v3, v3, Lcom/c/a/aa;->handler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    new-instance v1, Lcom/c/a/y$a;

    invoke-direct {v1, v2, v0}, Lcom/c/a/y$a;-><init>(Ljava/io/InputStream;Lcom/c/a/t$d;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/c/a/w;)Z
    .locals 2

    iget-object v0, p1, Lcom/c/a/w;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Landroid/net/NetworkInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getRetryCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
