.class public final Ld/k;
.super Ljava/lang/Object;

# interfaces
.implements Ld/s;


# instance fields
.field private final cUc:Ljava/util/zip/Inflater;

.field private cUe:I

.field private closed:Z

.field private final dad:Ld/e;


# direct methods
.method constructor <init>(Ld/e;Ljava/util/zip/Inflater;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ld/k;->dad:Ld/e;

    iput-object p2, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    return-void
.end method

.method private KL()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ld/k;->cUe:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Ld/k;->cUe:I

    iget-object v1, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Ld/k;->cUe:I

    sub-int/2addr v1, v0

    iput v1, p0, Ld/k;->cUe:I

    iget-object v1, p0, Ld/k;->dad:Ld/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ld/e;->ah(J)V

    goto :goto_0
.end method


# virtual methods
.method public final MK()Ld/t;
    .locals 1

    iget-object v0, p0, Ld/k;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->MK()Ld/t;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ld/c;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gez v0, :cond_0

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
    iget-boolean v0, p0, Ld/k;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, p2, v4

    if-nez v0, :cond_2

    move-wide v0, v4

    :goto_0
    return-wide v0

    :cond_2
    iget-object v0, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ld/c;->fY(I)Ld/o;

    move-result-object v3

    iget v4, v3, Ld/o;->limit:I

    rsub-int v4, v4, 0x2000

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    iget-object v6, v3, Ld/o;->data:[B

    iget v7, v3, Ld/o;->limit:I

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v4

    if-lez v4, :cond_6

    iget v0, v3, Ld/o;->limit:I

    add-int/2addr v0, v4

    iput v0, v3, Ld/o;->limit:I

    iget-wide v0, p1, Ld/c;->size:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p1, Ld/c;->size:J
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v4

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Ld/k;->KL()V

    iget-object v0, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Ld/k;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->Kr()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ld/k;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->Nj()Ld/c;

    move-result-object v0

    iget-object v0, v0, Ld/c;->dbZ:Ld/o;

    iget v3, v0, Ld/o;->limit:I

    iget v4, v0, Ld/o;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Ld/k;->cUe:I

    iget-object v3, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    iget-object v4, v0, Ld/o;->data:[B

    iget v0, v0, Ld/o;->pos:I

    iget v5, p0, Ld/k;->cUe:I

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    move v0, v1

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v4, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_7
    invoke-direct {p0}, Ld/k;->KL()V

    iget v0, v3, Ld/o;->pos:I

    iget v1, v3, Ld/o;->limit:I

    if-ne v0, v1, :cond_8

    invoke-virtual {v3}, Ld/o;->Nt()Ld/o;

    move-result-object v0

    iput-object v0, p1, Ld/c;->dbZ:Ld/o;

    invoke-static {v3}, Ld/p;->b(Ld/o;)V

    :cond_8
    const-wide/16 v0, -0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "source exhausted prematurely"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ld/k;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ld/k;->cUc:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/k;->closed:Z

    iget-object v0, p0, Ld/k;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->close()V

    goto :goto_0
.end method
