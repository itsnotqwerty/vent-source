.class final Lio/intercom/b/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/b/l;->a(Ljava/io/InputStream;Lio/intercom/b/t;)Lio/intercom/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cUf:Lio/intercom/b/t;

.field final synthetic cUh:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lio/intercom/b/t;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/b/l$2;->cUf:Lio/intercom/b/t;

    iput-object p2, p0, Lio/intercom/b/l$2;->cUh:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/b/l$2;->cUh:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read(Lio/intercom/b/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/intercom/b/l$2;->cUf:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->throwIfReached()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/intercom/b/c;->fy(I)Lio/intercom/b/o;

    move-result-object v0

    iget v1, v0, Lio/intercom/b/o;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v2, v1

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lio/intercom/b/l$2;->cUh:Ljava/io/InputStream;

    iget-object v3, v0, Lio/intercom/b/o;->data:[B

    iget v4, v0, Lio/intercom/b/o;->limit:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    iget v2, v0, Lio/intercom/b/o;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lio/intercom/b/o;->limit:I

    iget-wide v2, p1, Lio/intercom/b/c;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lio/intercom/b/c;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/intercom/b/l;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    throw v0
.end method

.method public final timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/l$2;->cUf:Lio/intercom/b/t;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/b/l$2;->cUh:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
