.class public final Lio/intercom/a/a/a/b/d;
.super Ljava/lang/Object;


# instance fields
.field public final cHj:[B

.field public cHk:Ljava/nio/ByteBuffer;

.field public cHl:Lio/intercom/a/a/a/b/c;

.field public cHm:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lio/intercom/a/a/a/b/d;->cHj:[B

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/a/a/b/d;->cHm:I

    return-void
.end method

.method private HO()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->HQ()V

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHj:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHj:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHj:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lio/intercom/a/a/a/b/c;->cHi:I

    :cond_1
    iget v0, p0, Lio/intercom/a/a/a/b/d;->cHm:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lio/intercom/a/a/a/b/d;->HR()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private HP()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private HQ()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v1

    iput v1, p0, Lio/intercom/a/a/a/b/d;->cHm:I

    iget v1, p0, Lio/intercom/a/a/a/b/d;->cHm:I

    if-lez v1, :cond_1

    move v1, v0

    move v2, v0

    :goto_0
    :try_start_0
    iget v0, p0, Lio/intercom/a/a/a/b/d;->cHm:I

    if-ge v2, v0, :cond_1

    iget v0, p0, Lio/intercom/a/a/a/b/d;->cHm:I

    sub-int v1, v0, v2

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHj:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v0, v2, v1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "GifHeaderParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GifHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error Reading Block n: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blockSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/b/d;->cHm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    const/4 v1, 0x1

    iput v1, v0, Lio/intercom/a/a/a/b/c;->status:I

    :cond_1
    return-void
.end method

.method private ff(I)[I
    .locals 9

    const/4 v2, 0x0

    mul-int/lit8 v1, p1, 0x3

    const/4 v0, 0x0

    new-array v4, v1, [B

    :try_start_0
    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v1, 0x100

    new-array v0, v1, [I

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v1, v4, v2

    and-int/lit16 v7, v1, 0xff

    add-int/lit8 v1, v6, 0x1

    aget-byte v2, v4, v6

    and-int/lit16 v6, v2, 0xff

    add-int/lit8 v2, v3, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v3
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GifHeaderParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GifHeaderParser"

    const-string v3, "Format Error Reading Color Table"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    const/4 v2, 0x1

    iput v2, v1, Lio/intercom/a/a/a/b/c;->status:I

    :cond_1
    return-object v0
.end method

.method private read()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    const/4 v2, 0x1

    iput v2, v1, Lio/intercom/a/a/a/b/c;->status:I

    goto :goto_0
.end method


# virtual methods
.method public final HN()V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    move v4, v2

    :cond_0
    :goto_0
    if-nez v4, :cond_a

    invoke-virtual {p0}, Lio/intercom/a/a/a/b/d;->HR()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget v0, v0, Lio/intercom/a/a/a/b/c;->cHb:I

    const v3, 0x7fffffff

    if-gt v0, v3, :cond_a

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iput v1, v0, Lio/intercom/a/a/a/b/c;->status:I

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    new-instance v3, Lio/intercom/a/a/a/b/b;

    invoke-direct {v3}, Lio/intercom/a/a/a/b/b;-><init>()V

    iput-object v3, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lio/intercom/a/a/a/b/b;->cGQ:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lio/intercom/a/a/a/b/b;->cGR:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lio/intercom/a/a/a/b/b;->cGS:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lio/intercom/a/a/a/b/b;->cGT:I

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    and-int/lit8 v5, v3, 0x7

    add-int/lit8 v5, v5, 0x1

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    iget-object v6, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v6, v6, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    iput-boolean v3, v6, Lio/intercom/a/a/a/b/b;->cGU:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    invoke-direct {p0, v5}, Lio/intercom/a/a/a/b/d;->ff(I)[I

    move-result-object v3

    iput-object v3, v0, Lio/intercom/a/a/a/b/b;->cGZ:[I

    :goto_3
    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, v0, Lio/intercom/a/a/a/b/b;->cGY:I

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->HP()V

    invoke-virtual {p0}, Lio/intercom/a/a/a/b/d;->HR()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget v3, v0, Lio/intercom/a/a/a/b/c;->cHb:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lio/intercom/a/a/a/b/c;->cHb:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHd:Ljava/util/List;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, v3, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    const/4 v3, 0x0

    iput-object v3, v0, Lio/intercom/a/a/a/b/b;->cGZ:[I

    goto :goto_3

    :sswitch_1
    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->HP()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    new-instance v3, Lio/intercom/a/a/a/b/b;

    invoke-direct {v3}, Lio/intercom/a/a/a/b/b;-><init>()V

    iput-object v3, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v0

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, v3, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    and-int/lit8 v5, v0, 0x1c

    shr-int/lit8 v5, v5, 0x2

    iput v5, v3, Lio/intercom/a/a/a/b/b;->cGW:I

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, v3, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    iget v3, v3, Lio/intercom/a/a/a/b/b;->cGW:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, v3, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    iput v1, v3, Lio/intercom/a/a/a/b/b;->cGW:I

    :cond_5
    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, v3, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, v3, Lio/intercom/a/a/a/b/b;->cGV:Z

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_6

    const/16 v0, 0xa

    :cond_6
    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, v3, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v3, Lio/intercom/a/a/a/b/b;->delay:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHc:Lio/intercom/a/a/a/b/b;

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v3

    iput v3, v0, Lio/intercom/a/a/a/b/b;->cGX:I

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_4

    :sswitch_3
    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->HQ()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_5
    const/16 v5, 0xb

    if-ge v0, v5, :cond_8

    iget-object v5, p0, Lio/intercom/a/a/a/b/d;->cHj:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->HO()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->HP()V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->HP()V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->HP()V

    goto/16 :goto_0

    :sswitch_6
    move v4, v1

    goto/16 :goto_0

    :cond_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method public final HR()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget v0, v0, Lio/intercom/a/a/a/b/c;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readHeader()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iput v0, v1, Lio/intercom/a/a/a/b/c;->status:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v2, Lio/intercom/a/a/a/b/c;->width:I

    iget-object v2, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v2, Lio/intercom/a/a/a/b/c;->height:I

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v2

    iget-object v3, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_3

    :goto_2
    iput-boolean v0, v3, Lio/intercom/a/a/a/b/c;->cHe:Z

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v1, v2, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-double v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v0, Lio/intercom/a/a/a/b/c;->cHf:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v1

    iput v1, v0, Lio/intercom/a/a/a/b/c;->cHg:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    invoke-direct {p0}, Lio/intercom/a/a/a/b/d;->read()I

    move-result v1

    iput v1, v0, Lio/intercom/a/a/a/b/c;->cHh:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-boolean v0, v0, Lio/intercom/a/a/a/b/c;->cHe:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/intercom/a/a/a/b/d;->HR()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget v1, v1, Lio/intercom/a/a/a/b/c;->cHf:I

    invoke-direct {p0, v1}, Lio/intercom/a/a/a/b/d;->ff(I)[I

    move-result-object v1

    iput-object v1, v0, Lio/intercom/a/a/a/b/c;->cHa:[I

    iget-object v0, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v1, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v1, v1, Lio/intercom/a/a/a/b/c;->cHa:[I

    iget-object v2, p0, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget v2, v2, Lio/intercom/a/a/a/b/c;->cHg:I

    aget v1, v1, v2

    iput v1, v0, Lio/intercom/a/a/a/b/c;->bgColor:I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
