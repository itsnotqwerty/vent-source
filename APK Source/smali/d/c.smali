.class public final Ld/c;
.super Ljava/lang/Object;

# interfaces
.implements Ld/d;
.implements Ld/e;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# static fields
.field private static final cTV:[B


# instance fields
.field dbZ:Ld/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ld/c;->cTV:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Ld/c;->size:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    iget v0, v1, Ld/o;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Ld/o;->limit:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ld/c;->ag(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Ld/o;->data:[B

    iget v3, v1, Ld/o;->pos:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, Ld/o;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Ld/o;->pos:I

    iget-wide v2, p0, Ld/c;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Ld/c;->size:J

    iget v2, v1, Ld/o;->pos:I

    iget v3, v1, Ld/o;->limit:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ld/o;->Nt()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->dbZ:Ld/o;

    invoke-static {v1}, Ld/p;->b(Ld/o;)V

    goto :goto_0
.end method

.method private ad(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, Ld/u;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Ld/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final KA()[B
    .locals 2

    :try_start_0
    iget-wide v0, p0, Ld/c;->size:J

    invoke-virtual {p0, v0, v1}, Ld/c;->ag(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final KB()J
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ld/c;->a(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Kr()Z
    .locals 4

    iget-wide v0, p0, Ld/c;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Ks()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ld/c$1;

    invoke-direct {v0, p0}, Ld/c$1;-><init>(Ld/c;)V

    return-object v0
.end method

.method public final Ku()S
    .locals 1

    invoke-virtual {p0}, Ld/c;->readShort()S

    move-result v0

    invoke-static {v0}, Ld/u;->a(S)S

    move-result v0

    return v0
.end method

.method public final Kv()I
    .locals 1

    invoke-virtual {p0}, Ld/c;->readInt()I

    move-result v0

    invoke-static {v0}, Ld/u;->fD(I)I

    move-result v0

    return v0
.end method

.method public final Kw()J
    .locals 18

    move-object/from16 v0, p0

    iget-wide v2, v0, Ld/c;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x7

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Ld/c;->dbZ:Ld/o;

    iget-object v11, v10, Ld/o;->data:[B

    iget v7, v10, Ld/o;->pos:I

    iget v12, v10, Ld/o;->limit:I

    :goto_0
    if-ge v7, v12, :cond_8

    aget-byte v13, v11, v7

    const/16 v14, 0x30

    if-lt v13, v14, :cond_5

    const/16 v14, 0x39

    if-gt v13, v14, :cond_5

    rsub-int/lit8 v14, v13, 0x30

    const-wide v16, -0xcccccccccccccccL

    cmp-long v15, v8, v16

    if-ltz v15, :cond_2

    const-wide v16, -0xcccccccccccccccL

    cmp-long v15, v8, v16

    if-nez v15, :cond_4

    int-to-long v0, v14

    move-wide/from16 v16, v0

    cmp-long v15, v16, v2

    if-gez v15, :cond_4

    :cond_2
    new-instance v2, Ld/c;

    invoke-direct {v2}, Ld/c;-><init>()V

    invoke-virtual {v2, v8, v9}, Ld/c;->aA(J)Ld/c;

    move-result-object v2

    invoke-virtual {v2, v13}, Ld/c;->fV(I)Ld/c;

    move-result-object v2

    if-nez v5, :cond_3

    invoke-virtual {v2}, Ld/c;->readByte()B

    :cond_3
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Number too large: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ld/c;->Ky()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-wide/16 v16, 0xa

    mul-long v8, v8, v16

    int-to-long v14, v14

    add-long/2addr v8, v14

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const/16 v14, 0x2d

    if-ne v13, v14, :cond_6

    if-nez v6, :cond_6

    const/4 v5, 0x1

    const-wide/16 v14, 0x1

    sub-long/2addr v2, v14

    goto :goto_1

    :cond_6
    if-nez v6, :cond_7

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    const/4 v4, 0x1

    :cond_8
    if-ne v7, v12, :cond_a

    invoke-virtual {v10}, Ld/o;->Nt()Ld/o;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Ld/c;->dbZ:Ld/o;

    invoke-static {v10}, Ld/p;->b(Ld/o;)V

    :goto_2
    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v7, v0, Ld/c;->dbZ:Ld/o;

    if-nez v7, :cond_1

    :cond_9
    move-object/from16 v0, p0

    iget-wide v2, v0, Ld/c;->size:J

    int-to-long v6, v6

    sub-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Ld/c;->size:J

    if-eqz v5, :cond_b

    :goto_3
    return-wide v8

    :cond_a
    iput v7, v10, Ld/o;->pos:I

    goto :goto_2

    :cond_b
    neg-long v8, v8

    goto :goto_3
.end method

.method public final Kx()J
    .locals 14

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Ld/c;->size:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    move-wide v4, v6

    :goto_0
    iget-object v8, p0, Ld/c;->dbZ:Ld/o;

    iget-object v9, v8, Ld/o;->data:[B

    iget v3, v8, Ld/o;->pos:I

    iget v10, v8, Ld/o;->limit:I

    move v1, v2

    :goto_1
    if-ge v3, v10, :cond_5

    aget-byte v11, v9, v3

    const/16 v2, 0x30

    if-lt v11, v2, :cond_1

    const/16 v2, 0x39

    if-gt v11, v2, :cond_1

    add-int/lit8 v2, v11, -0x30

    :goto_2
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v6

    if-eqz v12, :cond_7

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    invoke-virtual {v0, v4, v5}, Ld/c;->aB(J)Ld/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Ld/c;->fV(I)Ld/c;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number too large: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ld/c;->Ky()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/16 v2, 0x61

    if-lt v11, v2, :cond_2

    const/16 v2, 0x66

    if-gt v11, v2, :cond_2

    add-int/lit8 v2, v11, -0x61

    add-int/lit8 v2, v2, 0xa

    goto :goto_2

    :cond_2
    const/16 v2, 0x41

    if-lt v11, v2, :cond_3

    const/16 v2, 0x46

    if-gt v11, v2, :cond_3

    add-int/lit8 v2, v11, -0x41

    add-int/lit8 v2, v2, 0xa

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-ne v3, v10, :cond_8

    invoke-virtual {v8}, Ld/o;->Nt()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->dbZ:Ld/o;

    invoke-static {v8}, Ld/p;->b(Ld/o;)V

    :goto_3
    if-nez v0, :cond_6

    iget-object v2, p0, Ld/c;->dbZ:Ld/o;

    if-nez v2, :cond_9

    :cond_6
    iget-wide v2, p0, Ld/c;->size:J

    int-to-long v0, v1

    sub-long v0, v2, v0

    iput-wide v0, p0, Ld/c;->size:J

    return-wide v4

    :cond_7
    const/4 v11, 0x4

    shl-long/2addr v4, v11

    int-to-long v12, v2

    or-long/2addr v4, v12

    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_8
    iput v3, v8, Ld/o;->pos:I

    goto :goto_3

    :cond_9
    move v2, v1

    goto/16 :goto_0
.end method

.method public final Ky()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-wide v0, p0, Ld/c;->size:J

    sget-object v2, Ld/u;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2}, Ld/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final Kz()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Ld/c;->ae(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final MK()Ld/t;
    .locals 1

    sget-object v0, Ld/t;->dcn:Ld/t;

    return-object v0
.end method

.method public final MT()Ld/f;
    .locals 2

    new-instance v0, Ld/f;

    invoke-virtual {p0}, Ld/c;->KA()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ld/f;-><init>([B)V

    return-object v0
.end method

.method public final Nj()Ld/c;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic Nk()Ld/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public final P([B)Ld/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ld/c;->i([BII)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic Q([B)Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld/c;->P([B)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final Z(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Ld/c;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public final a(BJJ)J
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    cmp-long v0, p4, p2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size=%s fromIndex=%s toIndex=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Ld/c;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Ld/c;->size:J

    cmp-long v0, p4, v0

    if-lez v0, :cond_2

    iget-wide p4, p0, Ld/c;->size:J

    :cond_2
    cmp-long v0, p2, p4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_3
    iget-object v2, p0, Ld/c;->dbZ:Ld/o;

    if-nez v2, :cond_4

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Ld/c;->size:J

    sub-long/2addr v0, p2

    cmp-long v0, v0, p2

    if-gez v0, :cond_5

    iget-wide v0, p0, Ld/c;->size:J

    move-object v4, v2

    :goto_1
    cmp-long v2, v0, p2

    if-lez v2, :cond_9

    iget-object v4, v4, Ld/o;->dcm:Ld/o;

    iget v2, v4, Ld/o;->limit:I

    iget v3, v4, Ld/o;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x0

    move-object v4, v2

    :goto_2
    iget v2, v4, Ld/o;->limit:I

    iget v3, v4, Ld/o;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_9

    iget-object v4, v4, Ld/o;->dcl:Ld/o;

    move-wide v0, v2

    goto :goto_2

    :cond_6
    iget v0, v4, Ld/o;->limit:I

    iget v1, v4, Ld/o;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iget-object v4, v4, Ld/o;->dcl:Ld/o;

    move-wide v2, v0

    move-wide p2, v0

    :goto_3
    cmp-long v0, v2, p4

    if-gez v0, :cond_8

    iget-object v1, v4, Ld/o;->data:[B

    iget v0, v4, Ld/o;->limit:I

    int-to-long v6, v0

    iget v0, v4, Ld/o;->pos:I

    int-to-long v8, v0

    add-long/2addr v8, p4

    sub-long/2addr v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    iget v0, v4, Ld/o;->pos:I

    int-to-long v6, v0

    add-long/2addr v6, p2

    sub-long/2addr v6, v2

    long-to-int v0, v6

    :goto_4
    if-ge v0, v5, :cond_6

    aget-byte v6, v1, v0

    if-ne v6, p1, :cond_7

    iget v1, v4, Ld/o;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_9
    move-wide v2, v0

    goto :goto_3
.end method

.method public final a(Ld/c;J)J
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

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

    :cond_1
    iget-wide v0, p0, Ld/c;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    :goto_0
    return-wide p2

    :cond_2
    iget-wide v0, p0, Ld/c;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, Ld/c;->size:J

    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Ld/c;->b(Ld/c;J)V

    goto :goto_0
.end method

.method public final a(Ld/s;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Ld/s;->a(Ld/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final a(Ld/c;JJ)Ld/c;
    .locals 8

    const-wide/16 v6, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ld/c;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    iget-wide v0, p1, Ld/c;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Ld/c;->size:J

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    :goto_0
    iget v1, v0, Ld/o;->limit:I

    iget v2, v0, Ld/o;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    iget v1, v0, Ld/o;->limit:I

    iget v2, v0, Ld/o;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, Ld/o;->dcl:Ld/o;

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ld/o;->Ns()Ld/o;

    move-result-object v1

    iget v2, v1, Ld/o;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Ld/o;->pos:I

    iget v2, v1, Ld/o;->pos:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Ld/o;->limit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Ld/o;->limit:I

    iget-object v2, p1, Ld/c;->dbZ:Ld/o;

    if-nez v2, :cond_4

    iput-object v1, v1, Ld/o;->dcm:Ld/o;

    iput-object v1, v1, Ld/o;->dcl:Ld/o;

    iput-object v1, p1, Ld/c;->dbZ:Ld/o;

    :goto_2
    iget v2, v1, Ld/o;->limit:I

    iget v1, v1, Ld/o;->pos:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    iget-object v0, v0, Ld/o;->dcl:Ld/o;

    move-wide p2, v6

    goto :goto_1

    :cond_4
    iget-object v2, p1, Ld/c;->dbZ:Ld/o;

    iget-object v2, v2, Ld/o;->dcm:Ld/o;

    invoke-virtual {v2, v1}, Ld/o;->a(Ld/o;)Ld/o;

    goto :goto_2
.end method

.method public final aA(J)Ld/c;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_17

    neg-long v2, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Ld/c;->fE(Ljava/lang/String;)Ld/c;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v4, v0

    :goto_1
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Ld/c;->fY(I)Ld/o;

    move-result-object v5

    iget-object v6, v5, Ld/o;->data:[B

    iget v1, v5, Ld/o;->limit:I

    add-int/2addr v1, v0

    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_15

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    add-int/lit8 v1, v1, -0x1

    sget-object v8, Ld/c;->cTV:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    goto :goto_2

    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_9

    const/4 v0, 0x7

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    goto :goto_2

    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    const/16 v0, 0x9

    goto :goto_2

    :cond_b
    const/16 v0, 0xa

    goto :goto_2

    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    const/16 v0, 0xb

    goto :goto_2

    :cond_d
    const/16 v0, 0xc

    goto :goto_2

    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_2

    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/16 v0, 0xe

    goto/16 :goto_2

    :cond_10
    const/16 v0, 0xf

    goto/16 :goto_2

    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_13

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_12
    const/16 v0, 0x11

    goto/16 :goto_2

    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_14

    const/16 v0, 0x12

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x13

    goto/16 :goto_2

    :cond_15
    if-eqz v4, :cond_16

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    :cond_16
    iget v1, v5, Ld/o;->limit:I

    add-int/2addr v1, v0

    iput v1, v5, Ld/o;->limit:I

    iget-wide v2, p0, Ld/c;->size:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->size:J

    goto/16 :goto_0

    :cond_17
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_1
.end method

.method public final aB(J)Ld/c;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ld/c;->fY(I)Ld/o;

    move-result-object v2

    iget-object v3, v2, Ld/o;->data:[B

    iget v0, v2, Ld/o;->limit:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Ld/o;->limit:I

    :goto_1
    if-lt v0, v4, :cond_1

    sget-object v5, Ld/c;->cTV:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget v0, v2, Ld/o;->limit:I

    add-int/2addr v0, v1

    iput v0, v2, Ld/o;->limit:I

    iget-wide v2, p0, Ld/c;->size:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->size:J

    goto :goto_0
.end method

.method public final synthetic aC(J)Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld/c;->aB(J)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic aD(J)Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ld/c;->aA(J)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final ab(J)B
    .locals 7

    iget-wide v0, p0, Ld/c;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    iget-wide v0, p0, Ld/c;->size:J

    sub-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    :goto_0
    iget v1, v0, Ld/o;->limit:I

    iget v2, v0, Ld/o;->pos:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, Ld/o;->data:[B

    iget v0, v0, Ld/o;->pos:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    :goto_1
    return v0

    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    iget-object v0, v0, Ld/o;->dcl:Ld/o;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Ld/c;->size:J

    sub-long v2, p1, v0

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget-object v0, v0, Ld/o;->dcm:Ld/o;

    :goto_2
    iget v1, v0, Ld/o;->limit:I

    iget v4, v0, Ld/o;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-object v1, v0, Ld/o;->data:[B

    iget v0, v0, Ld/o;->pos:I

    long-to-int v2, v2

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Ld/o;->dcm:Ld/o;

    goto :goto_2
.end method

.method public final ae(J)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "limit < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    :goto_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ld/c;->a(BJJ)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_2

    invoke-virtual {p0, v6, v7}, Ld/c;->af(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-long v4, p1, v10

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Ld/c;->size:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    sub-long v6, v4, v10

    invoke-virtual {p0, v6, v7}, Ld/c;->ab(J)B

    move-result v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_3

    invoke-virtual {p0, v4, v5}, Ld/c;->ab(J)B

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v4, v5}, Ld/c;->af(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v1, Ld/c;

    invoke-direct {v1}, Ld/c;-><init>()V

    const-wide/16 v4, 0x20

    iget-wide v6, p0, Ld/c;->size:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ld/c;->a(Ld/c;JJ)Ld/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Ld/c;->size:J

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ld/c;->MT()Ld/f;

    move-result-object v1

    invoke-virtual {v1}, Ld/f;->KJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final af(J)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Ld/c;->ab(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sub-long v0, p1, v2

    invoke-direct {p0, v0, v1}, Ld/c;->ad(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Ld/c;->ah(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ld/c;->ad(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Ld/c;->ah(J)V

    goto :goto_0
.end method

.method public final ag(J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Ld/c;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ld/c;->readFully([B)V

    return-object v0
.end method

.method public final ah(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget v0, v0, Ld/o;->limit:I

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    iget v1, v1, Ld/o;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v2, p0, Ld/c;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ld/c;->size:J

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    iget v2, v1, Ld/o;->pos:I

    add-int/2addr v0, v2

    iput v0, v1, Ld/o;->pos:I

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget v0, v0, Ld/o;->pos:I

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    iget v1, v1, Ld/o;->limit:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    invoke-virtual {v0}, Ld/o;->Nt()Ld/o;

    move-result-object v1

    iput-object v1, p0, Ld/c;->dbZ:Ld/o;

    invoke-static {v0}, Ld/p;->b(Ld/o;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final az(J)Ld/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, Ld/f;

    invoke-virtual {p0, p1, p2}, Ld/c;->ag(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ld/f;-><init>([B)V

    return-object v0
.end method

.method public final b(Ld/c;J)V
    .locals 10

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p1, Ld/c;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    iget-object v0, p1, Ld/c;->dbZ:Ld/o;

    iget v0, v0, Ld/o;->limit:I

    iget-object v1, p1, Ld/c;->dbZ:Ld/o;

    iget v1, v1, Ld/o;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget-object v0, v0, Ld/o;->dcm:Ld/o;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, Ld/o;->cUn:Z

    if-eqz v0, :cond_5

    iget v0, v1, Ld/o;->limit:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Ld/o;->cUm:Z

    if-eqz v0, :cond_4

    move v0, v6

    :goto_2
    int-to-long v8, v0

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x2000

    cmp-long v0, v4, v8

    if-gtz v0, :cond_5

    iget-object v0, p1, Ld/c;->dbZ:Ld/o;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Ld/o;->a(Ld/o;I)V

    iget-wide v0, p1, Ld/c;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Ld/c;->size:J

    iget-wide v0, p0, Ld/c;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Ld/c;->size:J

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget v0, v1, Ld/o;->pos:I

    goto :goto_2

    :cond_5
    iget-object v1, p1, Ld/c;->dbZ:Ld/o;

    long-to-int v4, p2

    if-lez v4, :cond_6

    iget v0, v1, Ld/o;->limit:I

    iget v5, v1, Ld/o;->pos:I

    sub-int/2addr v0, v5

    if-le v4, v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_7
    const/16 v0, 0x400

    if-lt v4, v0, :cond_a

    invoke-virtual {v1}, Ld/o;->Ns()Ld/o;

    move-result-object v0

    :goto_3
    iget v5, v0, Ld/o;->pos:I

    add-int/2addr v5, v4

    iput v5, v0, Ld/o;->limit:I

    iget v5, v1, Ld/o;->pos:I

    add-int/2addr v4, v5

    iput v4, v1, Ld/o;->pos:I

    iget-object v1, v1, Ld/o;->dcm:Ld/o;

    invoke-virtual {v1, v0}, Ld/o;->a(Ld/o;)Ld/o;

    iput-object v0, p1, Ld/c;->dbZ:Ld/o;

    :cond_8
    iget-object v0, p1, Ld/c;->dbZ:Ld/o;

    iget v1, v0, Ld/o;->limit:I

    iget v4, v0, Ld/o;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, Ld/o;->Nt()Ld/o;

    move-result-object v1

    iput-object v1, p1, Ld/c;->dbZ:Ld/o;

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    if-nez v1, :cond_b

    iput-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    iget-object v7, p0, Ld/c;->dbZ:Ld/o;

    iput-object v7, v1, Ld/o;->dcm:Ld/o;

    iput-object v7, v0, Ld/o;->dcl:Ld/o;

    :cond_9
    :goto_4
    iget-wide v0, p1, Ld/c;->size:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Ld/c;->size:J

    iget-wide v0, p0, Ld/c;->size:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Ld/c;->size:J

    sub-long/2addr p2, v4

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Ld/p;->Nu()Ld/o;

    move-result-object v0

    iget-object v5, v1, Ld/o;->data:[B

    iget v7, v1, Ld/o;->pos:I

    iget-object v8, v0, Ld/o;->data:[B

    invoke-static {v5, v7, v8, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    iget-object v1, v1, Ld/o;->dcm:Ld/o;

    invoke-virtual {v1, v0}, Ld/o;->a(Ld/o;)Ld/o;

    move-result-object v1

    iget-object v0, v1, Ld/o;->dcm:Ld/o;

    if-ne v0, v1, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, v1, Ld/o;->dcm:Ld/o;

    iget-boolean v0, v0, Ld/o;->cUn:Z

    if-eqz v0, :cond_9

    iget v0, v1, Ld/o;->limit:I

    iget v7, v1, Ld/o;->pos:I

    sub-int v7, v0, v7

    iget-object v0, v1, Ld/o;->dcm:Ld/o;

    iget v0, v0, Ld/o;->limit:I

    rsub-int v8, v0, 0x2000

    iget-object v0, v1, Ld/o;->dcm:Ld/o;

    iget-boolean v0, v0, Ld/o;->cUm:Z

    if-eqz v0, :cond_d

    move v0, v6

    :goto_5
    add-int/2addr v0, v8

    if-gt v7, v0, :cond_9

    iget-object v0, v1, Ld/o;->dcm:Ld/o;

    invoke-virtual {v1, v0, v7}, Ld/o;->a(Ld/o;I)V

    invoke-virtual {v1}, Ld/o;->Nt()Ld/o;

    invoke-static {v1}, Ld/p;->b(Ld/o;)V

    goto :goto_4

    :cond_d
    iget-object v0, v1, Ld/o;->dcm:Ld/o;

    iget v0, v0, Ld/o;->pos:I

    goto :goto_5
.end method

.method public final clear()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Ld/c;->size:J

    invoke-virtual {p0, v0, v1}, Ld/c;->ah(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v1, Ld/c;

    invoke-direct {v1}, Ld/c;-><init>()V

    iget-wide v2, p0, Ld/c;->size:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    invoke-virtual {v0}, Ld/o;->Ns()Ld/o;

    move-result-object v0

    iput-object v0, v1, Ld/c;->dbZ:Ld/o;

    iget-object v0, v1, Ld/c;->dbZ:Ld/o;

    iget-object v2, v1, Ld/c;->dbZ:Ld/o;

    iget-object v3, v1, Ld/c;->dbZ:Ld/o;

    iput-object v3, v2, Ld/o;->dcm:Ld/o;

    iput-object v3, v0, Ld/o;->dcl:Ld/o;

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget-object v0, v0, Ld/o;->dcl:Ld/o;

    :goto_1
    iget-object v2, p0, Ld/c;->dbZ:Ld/o;

    if-eq v0, v2, :cond_1

    iget-object v2, v1, Ld/c;->dbZ:Ld/o;

    iget-object v2, v2, Ld/o;->dcm:Ld/o;

    invoke-virtual {v0}, Ld/o;->Ns()Ld/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Ld/o;->a(Ld/o;)Ld/o;

    iget-object v0, v0, Ld/o;->dcl:Ld/o;

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Ld/c;->size:J

    iput-wide v2, v1, Ld/c;->size:J

    move-object v0, v1

    goto :goto_0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(Ld/f;)Ld/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p0}, Ld/f;->a(Ld/c;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    instance-of v2, p1, Ld/c;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    check-cast p1, Ld/c;

    iget-wide v2, p0, Ld/c;->size:J

    iget-wide v4, p1, Ld/c;->size:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Ld/c;->size:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v4, p0, Ld/c;->dbZ:Ld/o;

    iget-object v5, p1, Ld/c;->dbZ:Ld/o;

    iget v3, v4, Ld/o;->pos:I

    iget v2, v5, Ld/o;->pos:I

    :goto_1
    iget-wide v8, p0, Ld/c;->size:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    iget v8, v4, Ld/o;->limit:I

    sub-int/2addr v8, v3

    iget v9, v5, Ld/o;->limit:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v12, v8

    move v8, v7

    :goto_2
    int-to-long v10, v8

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    iget-object v9, v4, Ld/o;->data:[B

    add-int/lit8 v10, v3, 0x1

    aget-byte v3, v9, v3

    iget-object v11, v5, Ld/o;->data:[B

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, v11, v2

    if-eq v3, v2, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move v2, v9

    move v3, v10

    goto :goto_2

    :cond_5
    iget v8, v4, Ld/o;->limit:I

    if-ne v3, v8, :cond_6

    iget-object v4, v4, Ld/o;->dcl:Ld/o;

    iget v3, v4, Ld/o;->pos:I

    :cond_6
    iget v8, v5, Ld/o;->limit:I

    if-ne v2, v8, :cond_7

    iget-object v5, v5, Ld/o;->dcl:Ld/o;

    iget v2, v5, Ld/o;->pos:I

    :cond_7
    add-long/2addr v0, v12

    goto :goto_1

    :cond_8
    move v0, v6

    goto :goto_0
.end method

.method public final fE(Ljava/lang/String;)Ld/c;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ld/c;->o(Ljava/lang/String;II)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic fF(Ljava/lang/String;)Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld/c;->fE(Ljava/lang/String;)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final fU(I)Ld/c;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ld/c;->fV(I)Ld/c;

    :goto_0
    return-object p0

    :cond_0
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_3

    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    goto :goto_0

    :cond_2
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    goto :goto_0

    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected code point: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fV(I)Ld/c;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/c;->fY(I)Ld/o;

    move-result-object v0

    iget-object v1, v0, Ld/o;->data:[B

    iget v2, v0, Ld/o;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Ld/o;->limit:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    iget-wide v0, p0, Ld/c;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->size:J

    return-object p0
.end method

.method public final fW(I)Ld/c;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ld/c;->fY(I)Ld/o;

    move-result-object v0

    iget-object v1, v0, Ld/o;->data:[B

    iget v2, v0, Ld/o;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Ld/o;->limit:I

    iget-wide v0, p0, Ld/c;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->size:J

    return-object p0
.end method

.method public final fX(I)Ld/c;
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ld/c;->fY(I)Ld/o;

    move-result-object v0

    iget-object v1, v0, Ld/o;->data:[B

    iget v2, v0, Ld/o;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Ld/o;->limit:I

    iget-wide v0, p0, Ld/c;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->size:J

    return-object p0
.end method

.method final fY(I)Ld/o;
    .locals 3

    const/16 v2, 0x2000

    if-lez p1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    if-nez v0, :cond_3

    invoke-static {}, Ld/p;->Nu()Ld/o;

    move-result-object v0

    iput-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    iget-object v2, p0, Ld/c;->dbZ:Ld/o;

    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iput-object v0, v2, Ld/o;->dcm:Ld/o;

    iput-object v0, v1, Ld/o;->dcl:Ld/o;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget-object v0, v0, Ld/o;->dcm:Ld/o;

    iget v1, v0, Ld/o;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_4

    iget-boolean v1, v0, Ld/o;->cUn:Z

    if-nez v1, :cond_2

    :cond_4
    invoke-static {}, Ld/p;->Nu()Ld/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/o;->a(Ld/o;)Ld/o;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic fZ(I)Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld/c;->fX(I)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final synthetic ga(I)Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld/c;->fW(I)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic gb(I)Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ld/c;->fV(I)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget v2, v1, Ld/o;->pos:I

    iget v3, v1, Ld/o;->limit:I

    :goto_1
    if-ge v2, v3, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, v1, Ld/o;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, v1, Ld/o;->dcl:Ld/o;

    iget-object v2, p0, Ld/c;->dbZ:Ld/o;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public final i([BII)Ld/c;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ld/c;->fY(I)Ld/o;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, Ld/o;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Ld/o;->data:[B

    iget v4, v1, Ld/o;->limit:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, Ld/o;->limit:I

    add-int/2addr v2, v3

    iput v2, v1, Ld/o;->limit:I

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Ld/c;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld/c;->size:J

    return-object p0
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic j([BII)Ld/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Ld/c;->i([BII)Ld/c;

    move-result-object v0

    return-object v0
.end method

.method public final o(Ljava/lang/String;II)Ld/c;
    .locals 9

    const v8, 0xdfff

    const/16 v7, 0x80

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ge p3, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex < beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > string.length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v1, v0, v4

    iget v3, v2, Ld/o;->limit:I

    sub-int/2addr v1, v3

    iget v3, v2, Ld/o;->limit:I

    add-int/2addr v3, v1

    iput v3, v2, Ld/o;->limit:I

    iget-wide v2, p0, Ld/c;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ld/c;->size:J

    move p2, v0

    :cond_4
    :goto_0
    if-ge p2, p3, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/c;->fY(I)Ld/o;

    move-result-object v2

    iget-object v3, v2, Ld/o;->data:[B

    iget v0, v2, Ld/o;->limit:I

    sub-int v4, v0, p2

    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    :goto_1
    if-ge v0, v5, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v7, :cond_3

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_1

    :cond_5
    const/16 v0, 0x800

    if-ge v1, v0, :cond_6

    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    const v0, 0xd800

    if-lt v1, v0, :cond_7

    if-le v1, v8, :cond_8

    :cond_7
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_a

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    const v2, 0xdbff

    if-gt v1, v2, :cond_9

    const v2, 0xdc00

    if-lt v0, v2, :cond_9

    if-le v0, v8, :cond_b

    :cond_9
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Ld/c;->fV(I)Ld/c;

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Ld/c;->fV(I)Ld/c;

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Ld/c;->fV(I)Ld/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ld/c;->fV(I)Ld/c;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, v1, Ld/o;->limit:I

    iget v3, v1, Ld/o;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Ld/o;->data:[B

    iget v3, v1, Ld/o;->pos:I

    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v2, v1, Ld/o;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Ld/o;->pos:I

    iget-wide v2, p0, Ld/c;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ld/c;->size:J

    iget v2, v1, Ld/o;->pos:I

    iget v3, v1, Ld/o;->limit:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ld/o;->Nt()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->dbZ:Ld/o;

    invoke-static {v1}, Ld/p;->b(Ld/o;)V

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 6

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, v1, Ld/o;->limit:I

    iget v2, v1, Ld/o;->pos:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Ld/o;->data:[B

    iget v3, v1, Ld/o;->pos:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Ld/o;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Ld/o;->pos:I

    iget-wide v2, p0, Ld/c;->size:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ld/c;->size:J

    iget v2, v1, Ld/o;->pos:I

    iget v3, v1, Ld/o;->limit:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ld/o;->Nt()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->dbZ:Ld/o;

    invoke-static {v1}, Ld/p;->b(Ld/o;)V

    goto :goto_0
.end method

.method public final readByte()B
    .locals 10

    iget-wide v0, p0, Ld/c;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget v1, v0, Ld/o;->pos:I

    iget v2, v0, Ld/o;->limit:I

    iget-object v3, v0, Ld/o;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v6, p0, Ld/c;->size:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ld/c;->size:J

    if-ne v4, v2, :cond_1

    invoke-virtual {v0}, Ld/o;->Nt()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->dbZ:Ld/o;

    invoke-static {v0}, Ld/p;->b(Ld/o;)V

    :goto_0
    return v1

    :cond_1
    iput v4, v0, Ld/o;->pos:I

    goto :goto_0
.end method

.method public final readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ld/c;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final readInt()I
    .locals 10

    const-wide/16 v8, 0x4

    iget-wide v0, p0, Ld/c;->size:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ld/c;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Ld/c;->dbZ:Ld/o;

    iget v0, v1, Ld/o;->pos:I

    iget v2, v1, Ld/o;->limit:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Ld/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ld/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ld/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ld/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v3, v1, Ld/o;->data:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-wide v6, p0, Ld/c;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ld/c;->size:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v1}, Ld/o;->Nt()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->dbZ:Ld/o;

    invoke-static {v1}, Ld/p;->b(Ld/o;)V

    goto :goto_0

    :cond_2
    iput v5, v1, Ld/o;->pos:I

    goto :goto_0
.end method

.method public final readShort()S
    .locals 10

    const-wide/16 v8, 0x2

    iget-wide v0, p0, Ld/c;->size:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ld/c;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/c;->dbZ:Ld/o;

    iget v1, v0, Ld/o;->pos:I

    iget v2, v0, Ld/o;->limit:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Ld/c;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ld/c;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v3, v0, Ld/o;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v6, p0, Ld/c;->size:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ld/c;->size:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, Ld/o;->Nt()Ld/o;

    move-result-object v2

    iput-object v2, p0, Ld/c;->dbZ:Ld/o;

    invoke-static {v0}, Ld/p;->b(Ld/o;)V

    :goto_1
    int-to-short v0, v1

    goto :goto_0

    :cond_2
    iput v5, v0, Ld/o;->pos:I

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Ld/c;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Ld/c;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Ld/c;->size:J

    long-to-int v1, v0

    if-nez v1, :cond_1

    sget-object v0, Ld/f;->dcb:Ld/f;

    :goto_0
    invoke-virtual {v0}, Ld/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ld/q;

    invoke-direct {v0, p0, v1}, Ld/q;-><init>(Ld/c;I)V

    goto :goto_0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ld/c;->fY(I)Ld/o;

    move-result-object v2

    iget v3, v2, Ld/o;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Ld/o;->data:[B

    iget v5, v2, Ld/o;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v3

    iget v4, v2, Ld/o;->limit:I

    add-int/2addr v3, v4

    iput v3, v2, Ld/o;->limit:I

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Ld/c;->size:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ld/c;->size:J

    return v1
.end method
