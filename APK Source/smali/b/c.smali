.class public final Lb/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/d;
.implements Lb/e;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final bMw:[B


# instance fields
.field public b:J

.field cUy:Lb/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lb/c;->bMw:[B

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

.method private I([B)V
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

    invoke-virtual {p0, p1, v0, v1}, Lb/c;->d([BII)I

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

.method private Lh()Lb/c;
    .locals 6

    new-instance v1, Lb/c;

    invoke-direct {v1}, Lb/c;-><init>()V

    iget-wide v2, p0, Lb/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/p;

    iget-object v2, p0, Lb/c;->cUy:Lb/p;

    invoke-direct {v0, v2}, Lb/p;-><init>(Lb/p;)V

    iput-object v0, v1, Lb/c;->cUy:Lb/p;

    iget-object v0, v1, Lb/c;->cUy:Lb/p;

    iget-object v2, v1, Lb/c;->cUy:Lb/p;

    iget-object v3, v1, Lb/c;->cUy:Lb/p;

    iput-object v3, v2, Lb/p;->cUQ:Lb/p;

    iput-object v3, v0, Lb/p;->cUP:Lb/p;

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget-object v0, v0, Lb/p;->cUP:Lb/p;

    :goto_1
    iget-object v2, p0, Lb/c;->cUy:Lb/p;

    if-eq v0, v2, :cond_1

    iget-object v2, v1, Lb/c;->cUy:Lb/p;

    iget-object v2, v2, Lb/p;->cUQ:Lb/p;

    new-instance v3, Lb/p;

    invoke-direct {v3, v0}, Lb/p;-><init>(Lb/p;)V

    invoke-virtual {v2, v3}, Lb/p;->a(Lb/p;)Lb/p;

    iget-object v0, v0, Lb/p;->cUP:Lb/p;

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lb/c;->b:J

    iput-wide v2, v1, Lb/c;->b:J

    move-object v0, v1

    goto :goto_0
.end method

.method private aq(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, Lb/u;->cUR:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lb/c;->b(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lb/c;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

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
    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    iget v0, v1, Lb/p;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lb/p;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lb/c;->as(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lb/p;->bIG:[B

    iget v3, v1, Lb/p;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, Lb/p;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lb/p;->b:I

    iget-wide v2, p0, Lb/c;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lb/c;->b:J

    iget v2, v1, Lb/p;->b:I

    iget v3, v1, Lb/p;->c:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lb/p;->Lp()Lb/p;

    move-result-object v2

    iput-object v2, p0, Lb/c;->cUy:Lb/p;

    invoke-static {v1}, Lb/q;->b(Lb/p;)V

    goto :goto_0
.end method


# virtual methods
.method public final J([B)Lb/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lb/c;->e([BII)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K([B)Lb/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lb/c;->J([B)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final KU()Lb/c;
    .locals 0

    return-object p0
.end method

.method public final KV()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lb/c$1;

    invoke-direct {v0, p0}, Lb/c$1;-><init>(Lb/c;)V

    return-object v0
.end method

.method public final KW()Lb/d;
    .locals 0

    return-object p0
.end method

.method public final KX()B
    .locals 10

    iget-wide v0, p0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget v1, v0, Lb/p;->b:I

    iget v2, v0, Lb/p;->c:I

    iget-object v3, v0, Lb/p;->bIG:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v6, p0, Lb/c;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lb/c;->b:J

    if-ne v4, v2, :cond_1

    invoke-virtual {v0}, Lb/p;->Lp()Lb/p;

    move-result-object v2

    iput-object v2, p0, Lb/c;->cUy:Lb/p;

    invoke-static {v0}, Lb/q;->b(Lb/p;)V

    :goto_0
    return v1

    :cond_1
    iput v4, v0, Lb/p;->b:I

    goto :goto_0
.end method

.method public final KY()S
    .locals 10

    const-wide/16 v8, 0x2

    iget-wide v0, p0, Lb/c;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lb/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget v1, v0, Lb/p;->b:I

    iget v2, v0, Lb/p;->c:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lb/c;->KX()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lb/c;->KX()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v3, v0, Lb/p;->bIG:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v6, p0, Lb/c;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lb/c;->b:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, Lb/p;->Lp()Lb/p;

    move-result-object v2

    iput-object v2, p0, Lb/c;->cUy:Lb/p;

    invoke-static {v0}, Lb/q;->b(Lb/p;)V

    :goto_1
    int-to-short v0, v1

    goto :goto_0

    :cond_2
    iput v5, v0, Lb/p;->b:I

    goto :goto_1
.end method

.method public final KZ()I
    .locals 10

    const-wide/16 v8, 0x4

    iget-wide v0, p0, Lb/c;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size < 4: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lb/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    iget v0, v1, Lb/p;->b:I

    iget v2, v1, Lb/p;->c:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Lb/c;->KX()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lb/c;->KX()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lb/c;->KX()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lb/c;->KX()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v3, v1, Lb/p;->bIG:[B

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

    iget-wide v6, p0, Lb/c;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lb/c;->b:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v1}, Lb/p;->Lp()Lb/p;

    move-result-object v2

    iput-object v2, p0, Lb/c;->cUy:Lb/p;

    invoke-static {v1}, Lb/q;->b(Lb/p;)V

    goto :goto_0

    :cond_2
    iput v5, v1, Lb/p;->b:I

    goto :goto_0
.end method

.method public final La()S
    .locals 1

    invoke-virtual {p0}, Lb/c;->KY()S

    move-result v0

    invoke-static {v0}, Lb/u;->b(S)S

    move-result v0

    return v0
.end method

.method public final Lb()I
    .locals 1

    invoke-virtual {p0}, Lb/c;->KZ()I

    move-result v0

    invoke-static {v0}, Lb/u;->dU(I)I

    move-result v0

    return v0
.end method

.method public final Lc()J
    .locals 14

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    iget-wide v2, p0, Lb/c;->b:J

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
    iget-object v8, p0, Lb/c;->cUy:Lb/p;

    iget-object v9, v8, Lb/p;->bIG:[B

    iget v3, v8, Lb/p;->b:I

    iget v10, v8, Lb/p;->c:I

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

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    invoke-virtual {v0, v4, v5}, Lb/c;->au(J)Lb/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Lb/c;->fF(I)Lb/c;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number too large: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/c;->Le()Ljava/lang/String;

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

    invoke-virtual {v8}, Lb/p;->Lp()Lb/p;

    move-result-object v2

    iput-object v2, p0, Lb/c;->cUy:Lb/p;

    invoke-static {v8}, Lb/q;->b(Lb/p;)V

    :goto_3
    if-nez v0, :cond_6

    iget-object v2, p0, Lb/c;->cUy:Lb/p;

    if-nez v2, :cond_9

    :cond_6
    iget-wide v2, p0, Lb/c;->b:J

    int-to-long v0, v1

    sub-long v0, v2, v0

    iput-wide v0, p0, Lb/c;->b:J

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
    iput v3, v8, Lb/p;->b:I

    goto :goto_3

    :cond_9
    move v2, v1

    goto/16 :goto_0
.end method

.method public final Ld()Lb/f;
    .locals 2

    new-instance v0, Lb/f;

    invoke-virtual {p0}, Lb/c;->Lg()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lb/f;-><init>([B)V

    return-object v0
.end method

.method public final Le()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lb/c;->b:J

    sget-object v2, Lb/u;->cUR:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1, v2}, Lb/c;->b(JLjava/nio/charset/Charset;)Ljava/lang/String;
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

.method public final Lf()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lb/c;->a(BJ)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    new-instance v1, Lb/c;

    invoke-direct {v1}, Lb/c;-><init>()V

    const-wide/16 v4, 0x20

    iget-wide v6, p0, Lb/c;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lb/c;->a(Lb/c;JJ)Lb/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\n not found: size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lb/c;->b:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lb/c;->Ld()Lb/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lb/c;->ar(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Lg()[B
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lb/c;->b:J

    invoke-virtual {p0, v0, v1}, Lb/c;->as(J)[B
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

.method public final synthetic Li()Lb/d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public final a(BJ)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lb/c;->cUy:Lb/p;

    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    :cond_2
    iget v3, v2, Lb/p;->c:I

    iget v4, v2, Lb/p;->b:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    cmp-long v4, p2, v4

    if-ltz v4, :cond_3

    int-to-long v4, v3

    sub-long/2addr p2, v4

    :goto_1
    int-to-long v4, v3

    add-long/2addr v0, v4

    iget-object v2, v2, Lb/p;->cUP:Lb/p;

    iget-object v3, p0, Lb/c;->cUy:Lb/p;

    if-ne v2, v3, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v6, v2, Lb/p;->bIG:[B

    iget v4, v2, Lb/p;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    iget v7, v2, Lb/p;->c:I

    int-to-long v8, v7

    :goto_2
    cmp-long v7, v4, v8

    if-gez v7, :cond_5

    long-to-int v7, v4

    aget-byte v7, v6, v7

    if-ne v7, p1, :cond_4

    add-long/2addr v0, v4

    iget v2, v2, Lb/p;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    goto :goto_2

    :cond_5
    const-wide/16 p2, 0x0

    goto :goto_1
.end method

.method public final a(Lb/s;)J
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
    const-wide/16 v2, 0x800

    invoke-interface {p1, p0, v2, v3}, Lb/s;->b(Lb/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final a(Lb/c;JJ)Lb/c;
    .locals 8

    const-wide/16 v6, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lb/c;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    iget-wide v0, p1, Lb/c;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lb/c;->b:J

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    :goto_0
    iget v1, v0, Lb/p;->c:I

    iget v2, v0, Lb/p;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    iget v1, v0, Lb/p;->c:I

    iget v2, v0, Lb/p;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, Lb/p;->cUP:Lb/p;

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    new-instance v1, Lb/p;

    invoke-direct {v1, v0}, Lb/p;-><init>(Lb/p;)V

    iget v2, v1, Lb/p;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lb/p;->b:I

    iget v2, v1, Lb/p;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lb/p;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lb/p;->c:I

    iget-object v2, p1, Lb/c;->cUy:Lb/p;

    if-nez v2, :cond_4

    iput-object v1, v1, Lb/p;->cUQ:Lb/p;

    iput-object v1, v1, Lb/p;->cUP:Lb/p;

    iput-object v1, p1, Lb/c;->cUy:Lb/p;

    :goto_2
    iget v2, v1, Lb/p;->c:I

    iget v1, v1, Lb/p;->b:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    iget-object v0, v0, Lb/p;->cUP:Lb/p;

    move-wide p2, v6

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lb/c;->cUy:Lb/p;

    iget-object v2, v2, Lb/p;->cUQ:Lb/p;

    invoke-virtual {v2, v1}, Lb/p;->a(Lb/p;)Lb/p;

    goto :goto_2
.end method

.method public final a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lb/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public final a(Lb/c;J)V
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
    iget-wide v0, p1, Lb/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    iget-object v0, p1, Lb/c;->cUy:Lb/p;

    iget v0, v0, Lb/p;->c:I

    iget-object v1, p1, Lb/c;->cUy:Lb/p;

    iget v1, v1, Lb/p;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_8

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget-object v0, v0, Lb/p;->cUQ:Lb/p;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, Lb/p;->e:Z

    if-eqz v0, :cond_5

    iget v0, v1, Lb/p;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lb/p;->d:Z

    if-eqz v0, :cond_4

    move v0, v6

    :goto_2
    int-to-long v8, v0

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x800

    cmp-long v0, v4, v8

    if-gtz v0, :cond_5

    iget-object v0, p1, Lb/c;->cUy:Lb/p;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/p;I)V

    iget-wide v0, p1, Lb/c;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lb/c;->b:J

    iget-wide v0, p0, Lb/c;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lb/c;->b:J

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget v0, v1, Lb/p;->b:I

    goto :goto_2

    :cond_5
    iget-object v0, p1, Lb/c;->cUy:Lb/p;

    long-to-int v1, p2

    if-lez v1, :cond_6

    iget v4, v0, Lb/p;->c:I

    iget v5, v0, Lb/p;->b:I

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_7
    new-instance v4, Lb/p;

    invoke-direct {v4, v0}, Lb/p;-><init>(Lb/p;)V

    iget v5, v4, Lb/p;->b:I

    add-int/2addr v5, v1

    iput v5, v4, Lb/p;->c:I

    iget v5, v0, Lb/p;->b:I

    add-int/2addr v1, v5

    iput v1, v0, Lb/p;->b:I

    iget-object v0, v0, Lb/p;->cUQ:Lb/p;

    invoke-virtual {v0, v4}, Lb/p;->a(Lb/p;)Lb/p;

    iput-object v4, p1, Lb/c;->cUy:Lb/p;

    :cond_8
    iget-object v0, p1, Lb/c;->cUy:Lb/p;

    iget v1, v0, Lb/p;->c:I

    iget v4, v0, Lb/p;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, Lb/p;->Lp()Lb/p;

    move-result-object v1

    iput-object v1, p1, Lb/c;->cUy:Lb/p;

    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    if-nez v1, :cond_a

    iput-object v0, p0, Lb/c;->cUy:Lb/p;

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    iget-object v7, p0, Lb/c;->cUy:Lb/p;

    iput-object v7, v1, Lb/p;->cUQ:Lb/p;

    iput-object v7, v0, Lb/p;->cUP:Lb/p;

    :cond_9
    :goto_3
    iget-wide v0, p1, Lb/c;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lb/c;->b:J

    iget-wide v0, p0, Lb/c;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lb/c;->b:J

    sub-long/2addr p2, v4

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    iget-object v1, v1, Lb/p;->cUQ:Lb/p;

    invoke-virtual {v1, v0}, Lb/p;->a(Lb/p;)Lb/p;

    move-result-object v1

    iget-object v0, v1, Lb/p;->cUQ:Lb/p;

    if-ne v0, v1, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_b
    iget-object v0, v1, Lb/p;->cUQ:Lb/p;

    iget-boolean v0, v0, Lb/p;->e:Z

    if-eqz v0, :cond_9

    iget v0, v1, Lb/p;->c:I

    iget v7, v1, Lb/p;->b:I

    sub-int v7, v0, v7

    iget-object v0, v1, Lb/p;->cUQ:Lb/p;

    iget v0, v0, Lb/p;->c:I

    rsub-int v8, v0, 0x800

    iget-object v0, v1, Lb/p;->cUQ:Lb/p;

    iget-boolean v0, v0, Lb/p;->d:Z

    if-eqz v0, :cond_c

    move v0, v6

    :goto_4
    add-int/2addr v0, v8

    if-gt v7, v0, :cond_9

    iget-object v0, v1, Lb/p;->cUQ:Lb/p;

    invoke-virtual {v1, v0, v7}, Lb/p;->a(Lb/p;I)V

    invoke-virtual {v1}, Lb/p;->Lp()Lb/p;

    invoke-static {v1}, Lb/q;->b(Lb/p;)V

    goto :goto_3

    :cond_c
    iget-object v0, v1, Lb/p;->cUQ:Lb/p;

    iget v0, v0, Lb/p;->b:I

    goto :goto_4
.end method

.method public final ao(J)B
    .locals 7

    iget-wide v0, p0, Lb/c;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    :goto_0
    iget v1, v0, Lb/p;->c:I

    iget v2, v0, Lb/p;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, Lb/p;->bIG:[B

    iget v0, v0, Lb/p;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    iget-object v0, v0, Lb/p;->cUP:Lb/p;

    goto :goto_0
.end method

.method public final ap(J)Lb/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, Lb/f;

    invoke-virtual {p0, p1, p2}, Lb/c;->as(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lb/f;-><init>([B)V

    return-object v0
.end method

.method final ar(J)Ljava/lang/String;
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

    invoke-virtual {p0, v0, v1}, Lb/c;->ao(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sub-long v0, p1, v2

    invoke-direct {p0, v0, v1}, Lb/c;->aq(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lb/c;->at(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lb/c;->aq(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Lb/c;->at(J)V

    goto :goto_0
.end method

.method public final as(J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

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

    invoke-direct {p0, v0}, Lb/c;->I([B)V

    return-object v0
.end method

.method public final at(J)V
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

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget v0, v0, Lb/p;->c:I

    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    iget v1, v1, Lb/p;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v2, p0, Lb/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lb/c;->b:J

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    iget v2, v1, Lb/p;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lb/p;->b:I

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget v0, v0, Lb/p;->b:I

    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    iget v1, v1, Lb/p;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    invoke-virtual {v0}, Lb/p;->Lp()Lb/p;

    move-result-object v1

    iput-object v1, p0, Lb/c;->cUy:Lb/p;

    invoke-static {v0}, Lb/q;->b(Lb/p;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final au(J)Lb/c;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

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

    invoke-virtual {p0, v1}, Lb/c;->fI(I)Lb/p;

    move-result-object v2

    iget-object v3, v2, Lb/p;->bIG:[B

    iget v0, v2, Lb/p;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lb/p;->c:I

    :goto_1
    if-lt v0, v4, :cond_1

    sget-object v5, Lb/c;->bMw:[B

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
    iget v0, v2, Lb/p;->c:I

    add-int/2addr v0, v1

    iput v0, v2, Lb/p;->c:I

    iget-wide v2, p0, Lb/c;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/c;->b:J

    goto :goto_0
.end method

.method public final synthetic av(J)Lb/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lb/c;->au(J)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lb/c;J)J
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
    iget-wide v0, p0, Lb/c;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    :goto_0
    return-wide p2

    :cond_2
    iget-wide v0, p0, Lb/c;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, Lb/c;->b:J

    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lb/c;->a(Lb/c;J)V

    goto :goto_0
.end method

.method public final c(Lb/f;)Lb/c;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lb/f;->bMw:[B

    const/4 v1, 0x0

    iget-object v2, p1, Lb/f;->bMw:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lb/c;->e([BII)Lb/c;

    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lb/c;->Lh()Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d([BII)I
    .locals 6

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, v1, Lb/p;->c:I

    iget v2, v1, Lb/p;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Lb/p;->bIG:[B

    iget v3, v1, Lb/p;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lb/p;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lb/p;->b:I

    iget-wide v2, p0, Lb/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lb/c;->b:J

    iget v2, v1, Lb/p;->b:I

    iget v3, v1, Lb/p;->c:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lb/p;->Lp()Lb/p;

    move-result-object v2

    iput-object v2, p0, Lb/c;->cUy:Lb/p;

    invoke-static {v1}, Lb/q;->b(Lb/p;)V

    goto :goto_0
.end method

.method public final synthetic d(Lb/f;)Lb/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lb/c;->c(Lb/f;)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final e([BII)Lb/c;
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

    invoke-static/range {v0 .. v5}, Lb/u;->a(JJJ)V

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lb/c;->fI(I)Lb/p;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, Lb/p;->c:I

    rsub-int v3, v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lb/p;->bIG:[B

    iget v4, v1, Lb/p;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, Lb/p;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lb/p;->c:I

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lb/c;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/c;->b:J

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
    instance-of v2, p1, Lb/c;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    check-cast p1, Lb/c;

    iget-wide v2, p0, Lb/c;->b:J

    iget-wide v4, p1, Lb/c;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lb/c;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lb/c;->cUy:Lb/p;

    iget-object v5, p1, Lb/c;->cUy:Lb/p;

    iget v3, v4, Lb/p;->b:I

    iget v2, v5, Lb/p;->b:I

    :goto_1
    iget-wide v8, p0, Lb/c;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    iget v8, v4, Lb/p;->c:I

    sub-int/2addr v8, v3

    iget v9, v5, Lb/p;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v12, v8

    move v8, v7

    :goto_2
    int-to-long v10, v8

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    iget-object v9, v4, Lb/p;->bIG:[B

    add-int/lit8 v10, v3, 0x1

    aget-byte v3, v9, v3

    iget-object v11, v5, Lb/p;->bIG:[B

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
    iget v8, v4, Lb/p;->c:I

    if-ne v3, v8, :cond_6

    iget-object v4, v4, Lb/p;->cUP:Lb/p;

    iget v3, v4, Lb/p;->b:I

    :cond_6
    iget v8, v5, Lb/p;->c:I

    if-ne v2, v8, :cond_7

    iget-object v5, v5, Lb/p;->cUP:Lb/p;

    iget v2, v5, Lb/p;->b:I

    :cond_7
    add-long/2addr v0, v12

    goto :goto_1

    :cond_8
    move v0, v6

    goto :goto_0
.end method

.method public final f(B)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lb/c;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic f([BII)Lb/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lb/c;->e([BII)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final fE(I)Lb/c;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lb/c;->fF(I)Lb/c;

    :goto_0
    return-object p0

    :cond_0
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_3

    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

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

    :cond_2
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    goto :goto_0

    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

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

.method public final fF(I)Lb/c;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/c;->fI(I)Lb/p;

    move-result-object v0

    iget-object v1, v0, Lb/p;->bIG:[B

    iget v2, v0, Lb/p;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lb/p;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    iget-wide v0, p0, Lb/c;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/c;->b:J

    return-object p0
.end method

.method public final fG(I)Lb/c;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lb/c;->fI(I)Lb/p;

    move-result-object v0

    iget-object v1, v0, Lb/p;->bIG:[B

    iget v2, v0, Lb/p;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lb/p;->c:I

    iget-wide v0, p0, Lb/c;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/c;->b:J

    return-object p0
.end method

.method public final fH(I)Lb/c;
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lb/c;->fI(I)Lb/p;

    move-result-object v0

    iget-object v1, v0, Lb/p;->bIG:[B

    iget v2, v0, Lb/p;->c:I

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

    iput v2, v0, Lb/p;->c:I

    iget-wide v0, p0, Lb/c;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/c;->b:J

    return-object p0
.end method

.method final fI(I)Lb/p;
    .locals 3

    const/16 v2, 0x800

    if-lez p1, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    if-nez v0, :cond_3

    invoke-static {}, Lb/q;->Lp()Lb/p;

    move-result-object v0

    iput-object v0, p0, Lb/c;->cUy:Lb/p;

    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    iget-object v2, p0, Lb/c;->cUy:Lb/p;

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iput-object v0, v2, Lb/p;->cUQ:Lb/p;

    iput-object v0, v1, Lb/p;->cUP:Lb/p;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget-object v0, v0, Lb/p;->cUQ:Lb/p;

    iget v1, v0, Lb/p;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_4

    iget-boolean v1, v0, Lb/p;->e:Z

    if-nez v1, :cond_2

    :cond_4
    invoke-static {}, Lb/q;->Lp()Lb/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/p;->a(Lb/p;)Lb/p;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic fJ(I)Lb/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lb/c;->fH(I)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic fK(I)Lb/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lb/c;->fG(I)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic fL(I)Lb/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lb/c;->fF(I)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final fl(Ljava/lang/String;)Lb/c;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lb/c;->n(Ljava/lang/String;II)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final synthetic fm(Ljava/lang/String;)Lb/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lb/c;->fl(Ljava/lang/String;)Lb/c;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lb/c$2;

    invoke-direct {v0, p0}, Lb/c$2;-><init>(Lb/c;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v1, p0, Lb/c;->cUy:Lb/p;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget v2, v1, Lb/p;->b:I

    iget v3, v1, Lb/p;->c:I

    :goto_1
    if-ge v2, v3, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, v1, Lb/p;->bIG:[B

    aget-byte v4, v4, v2

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lb/p;->cUP:Lb/p;

    iget-object v2, p0, Lb/c;->cUy:Lb/p;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public final n(Ljava/lang/String;II)Lb/c;
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

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "beginIndex < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

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

    iget v3, v2, Lb/p;->c:I

    sub-int/2addr v1, v3

    iget v3, v2, Lb/p;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lb/p;->c:I

    iget-wide v2, p0, Lb/c;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lb/c;->b:J

    move p2, v0

    :cond_4
    :goto_0
    if-ge p2, p3, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/c;->fI(I)Lb/p;

    move-result-object v2

    iget-object v3, v2, Lb/p;->bIG:[B

    iget v0, v2, Lb/p;->c:I

    sub-int v4, v0, p2

    rsub-int v0, v4, 0x800

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

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    const v0, 0xd800

    if-lt v1, v0, :cond_7

    if-le v1, v8, :cond_8

    :cond_7
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

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

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

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

    invoke-virtual {p0, v1}, Lb/c;->fF(I)Lb/c;

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lb/c;->fF(I)Lb/c;

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lb/c;->fF(I)Lb/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lb/c;->fF(I)Lb/c;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final t()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lb/c;->b:J

    invoke-virtual {p0, v0, v1}, Lb/c;->at(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, Lb/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Buffer[size=0]"

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lb/c;->b:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lb/c;->Lh()Lb/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/c;->Ld()Lb/f;

    move-result-object v0

    const-string v1, "Buffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, Lb/c;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lb/f;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget-object v0, v0, Lb/p;->bIG:[B

    iget-object v2, p0, Lb/c;->cUy:Lb/p;

    iget v2, v2, Lb/p;->b:I

    iget-object v3, p0, Lb/c;->cUy:Lb/p;

    iget v3, v3, Lb/p;->c:I

    iget-object v4, p0, Lb/c;->cUy:Lb/p;

    iget v4, v4, Lb/p;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Lb/c;->cUy:Lb/p;

    iget-object v0, v0, Lb/p;->cUP:Lb/p;

    :goto_1
    iget-object v2, p0, Lb/c;->cUy:Lb/p;

    if-eq v0, v2, :cond_2

    iget-object v2, v0, Lb/p;->bIG:[B

    iget v3, v0, Lb/p;->b:I

    iget v4, v0, Lb/p;->c:I

    iget v5, v0, Lb/p;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, Lb/p;->cUP:Lb/p;

    goto :goto_1

    :cond_2
    const-string v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lb/c;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lb/f;->L([B)Lb/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/f;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final xi()Z
    .locals 4

    iget-wide v0, p0, Lb/c;->b:J

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

.method public final zA()Lb/t;
    .locals 1

    sget-object v0, Lb/t;->cUH:Lb/t;

    return-object v0
.end method
