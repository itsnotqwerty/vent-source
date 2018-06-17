.class final Lio/intercom/b/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/b/l;->a(Ljava/io/OutputStream;Lio/intercom/b/t;)Lio/intercom/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cUf:Lio/intercom/b/t;

.field final synthetic cUg:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lio/intercom/b/t;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/b/l$1;->cUf:Lio/intercom/b/t;

    iput-object p2, p0, Lio/intercom/b/l$1;->cUg:Ljava/io/OutputStream;

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

    iget-object v0, p0, Lio/intercom/b/l$1;->cUg:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/b/l$1;->cUg:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/l$1;->cUf:Lio/intercom/b/t;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/b/l$1;->cUg:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lio/intercom/b/c;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lio/intercom/b/c;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lio/intercom/b/u;->checkOffsetAndCount(JJJ)V

    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/intercom/b/l$1;->cUf:Lio/intercom/b/t;

    invoke-virtual {v0}, Lio/intercom/b/t;->throwIfReached()V

    iget-object v0, p1, Lio/intercom/b/c;->cTW:Lio/intercom/b/o;

    iget v1, v0, Lio/intercom/b/o;->limit:I

    iget v4, v0, Lio/intercom/b/o;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lio/intercom/b/l$1;->cUg:Ljava/io/OutputStream;

    iget-object v5, v0, Lio/intercom/b/o;->data:[B

    iget v6, v0, Lio/intercom/b/o;->pos:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v4, v0, Lio/intercom/b/o;->pos:I

    add-int/2addr v4, v1

    iput v4, v0, Lio/intercom/b/o;->pos:I

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-wide v4, p1, Lio/intercom/b/c;->size:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lio/intercom/b/c;->size:J

    iget v1, v0, Lio/intercom/b/o;->pos:I

    iget v4, v0, Lio/intercom/b/o;->limit:I

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Lio/intercom/b/o;->KO()Lio/intercom/b/o;

    move-result-object v1

    iput-object v1, p1, Lio/intercom/b/c;->cTW:Lio/intercom/b/o;

    invoke-static {v0}, Lio/intercom/b/p;->b(Lio/intercom/b/o;)V

    goto :goto_0

    :cond_1
    return-void
.end method
