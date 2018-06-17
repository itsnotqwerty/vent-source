.class final Landroid/support/d/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final format:I

.field public final sX:I

.field public final sY:[B


# direct methods
.method private constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/d/a$b;->format:I

    iput p2, p0, Landroid/support/d/a$b;->sX:I

    iput-object p3, p0, Landroid/support/d/a$b;->sY:[B

    return-void
.end method

.method synthetic constructor <init>(II[BB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/d/a$b;-><init>(II[B)V

    return-void
.end method

.method public static a(ILjava/nio/ByteOrder;)Landroid/support/d/a$b;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-array v2, v5, [I

    aput p0, v2, v1

    sget-object v0, Landroid/support/d/a;->sh:[I

    aget v0, v0, v6

    mul-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v0, v1

    :goto_0
    if-gtz v0, :cond_0

    aget v4, v2, v1

    int-to-short v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/d/a$b;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v6, v5, v1}, Landroid/support/d/a$b;-><init>(II[B)V

    return-object v0
.end method

.method public static a(JLjava/nio/ByteOrder;)Landroid/support/d/a$b;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-array v2, v6, [J

    aput-wide p0, v2, v1

    sget-object v0, Landroid/support/d/a;->sh:[I

    aget v0, v0, v7

    mul-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v0, v1

    :goto_0
    if-gtz v0, :cond_0

    aget-wide v4, v2, v1

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/d/a$b;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v7, v6, v1}, Landroid/support/d/a$b;-><init>(II[B)V

    return-object v0
.end method

.method public static a(Landroid/support/d/a$d;Ljava/nio/ByteOrder;)Landroid/support/d/a$b;
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v2, v8, [Landroid/support/d/a$d;

    aput-object p0, v2, v1

    sget-object v0, Landroid/support/d/a;->sh:[I

    aget v0, v0, v9

    mul-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v0, v1

    :goto_0
    if-gtz v0, :cond_0

    aget-object v4, v2, v1

    iget-wide v6, v4, Landroid/support/d/a$d;->tb:J

    long-to-int v5, v6

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v4, v4, Landroid/support/d/a$d;->tc:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/d/a$b;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v9, v8, v1}, Landroid/support/d/a$b;-><init>(II[B)V

    return-object v0
.end method

.method public static t(Ljava/lang/String;)Landroid/support/d/a$b;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/support/d/a;->ci()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Landroid/support/d/a$b;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroid/support/d/a$b;-><init>(II[B)V

    return-object v1
.end method


# virtual methods
.method final a(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v8, Landroid/support/d/a$a;

    iget-object v2, p0, Landroid/support/d/a$b;->sY:[B

    invoke-direct {v8, v2}, Landroid/support/d/a$a;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p1, v8, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    iget v2, p0, Landroid/support/d/a$b;->format:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    packed-switch v2, :pswitch_data_0

    :try_start_2
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    :goto_0
    move-object v0, v7

    :goto_1
    return-object v0

    :pswitch_0
    :try_start_3
    iget-object v1, p0, Landroid/support/d/a$b;->sY:[B

    array-length v1, v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Landroid/support/d/a$b;->sY:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/support/d/a$b;->sY:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-gt v1, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/d/a$b;->sY:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :try_start_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/support/d/a$b;->sY:[B

    invoke-static {}, Landroid/support/d/a;->ci()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_1
    :try_start_7
    iget v2, p0, Landroid/support/d/a$b;->sX:I

    invoke-static {}, Landroid/support/d/a;->cj()[B

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_f

    move v2, v1

    :goto_2
    invoke-static {}, Landroid/support/d/a;->cj()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/support/d/a$b;->sY:[B

    aget-byte v3, v3, v2

    invoke-static {}, Landroid/support/d/a;->cj()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_2

    move v0, v1

    :cond_1
    if-eqz v0, :cond_f

    invoke-static {}, Landroid/support/d/a;->cj()[B

    move-result-object v0

    array-length v1, v0

    move v0, v1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    iget v2, p0, Landroid/support/d/a$b;->sX:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/support/d/a$b;->sY:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_5

    const/16 v3, 0x20

    if-lt v2, v3, :cond_3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v1, v8

    :goto_6
    :try_start_8
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred during reading a value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Landroid/support/d/a$a;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    :cond_4
    :goto_7
    move-object v0, v7

    goto/16 :goto_1

    :cond_5
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v0

    :try_start_b
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_2
    :try_start_c
    iget v0, p0, Landroid/support/d/a$b;->sX:I

    new-array v0, v0, [I

    :goto_8
    iget v2, p0, Landroid/support/d/a$b;->sX:I

    if-ge v1, v2, :cond_6

    invoke-virtual {v8}, Landroid/support/d/a$a;->readUnsignedShort()I

    move-result v2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_6
    :try_start_d
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_3
    :try_start_e
    iget v0, p0, Landroid/support/d/a$b;->sX:I

    new-array v0, v0, [J

    :goto_9
    iget v2, p0, Landroid/support/d/a$b;->sX:I

    if-ge v1, v2, :cond_7

    invoke-virtual {v8}, Landroid/support/d/a$a;->ck()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_7
    :try_start_f
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_4
    :try_start_10
    iget v0, p0, Landroid/support/d/a$b;->sX:I

    new-array v0, v0, [Landroid/support/d/a$d;

    move v9, v1

    :goto_a
    iget v1, p0, Landroid/support/d/a$b;->sX:I

    if-ge v9, v1, :cond_8

    invoke-virtual {v8}, Landroid/support/d/a$a;->ck()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/support/d/a$a;->ck()J

    move-result-wide v4

    new-instance v1, Landroid/support/d/a$d;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/support/d/a$d;-><init>(JJB)V

    aput-object v1, v0, v9
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_a

    :cond_8
    :try_start_11
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_5
    :try_start_12
    iget v0, p0, Landroid/support/d/a$b;->sX:I

    new-array v0, v0, [I

    :goto_b
    iget v2, p0, Landroid/support/d/a$b;->sX:I

    if-ge v1, v2, :cond_9

    invoke-virtual {v8}, Landroid/support/d/a$a;->readShort()S

    move-result v2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_9
    :try_start_13
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_6
    :try_start_14
    iget v0, p0, Landroid/support/d/a$b;->sX:I

    new-array v0, v0, [I

    :goto_c
    iget v2, p0, Landroid/support/d/a$b;->sX:I

    if-ge v1, v2, :cond_a

    invoke-virtual {v8}, Landroid/support/d/a$a;->readInt()I

    move-result v2

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_a
    :try_start_15
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto/16 :goto_1

    :catch_8
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_7
    :try_start_16
    iget v0, p0, Landroid/support/d/a$b;->sX:I

    new-array v0, v0, [Landroid/support/d/a$d;

    move v9, v1

    :goto_d
    iget v1, p0, Landroid/support/d/a$b;->sX:I

    if-ge v9, v1, :cond_b

    invoke-virtual {v8}, Landroid/support/d/a$a;->readInt()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v8}, Landroid/support/d/a$a;->readInt()I

    move-result v1

    int-to-long v4, v1

    new-instance v1, Landroid/support/d/a$d;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/support/d/a$d;-><init>(JJB)V

    aput-object v1, v0, v9
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_d

    :cond_b
    :try_start_17
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_8
    :try_start_18
    iget v0, p0, Landroid/support/d/a$b;->sX:I

    new-array v0, v0, [D

    :goto_e
    iget v2, p0, Landroid/support/d/a$b;->sX:I

    if-ge v1, v2, :cond_c

    invoke-virtual {v8}, Landroid/support/d/a$a;->readFloat()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_c
    :try_start_19
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a

    goto/16 :goto_1

    :catch_a
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_9
    :try_start_1a
    iget v0, p0, Landroid/support/d/a$b;->sX:I

    new-array v0, v0, [D

    :goto_f
    iget v2, p0, Landroid/support/d/a$b;->sX:I

    if-ge v1, v2, :cond_d

    invoke-virtual {v8}, Landroid/support/d/a$a;->readDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_d
    :try_start_1b
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    goto/16 :goto_1

    :catch_b
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_c
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v8, v7

    :goto_10
    if-eqz v8, :cond_e

    :try_start_1c
    invoke-virtual {v8}, Landroid/support/d/a$a;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    :cond_e
    :goto_11
    throw v0

    :catch_e
    move-exception v1

    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_10

    :catch_f
    move-exception v0

    move-object v1, v7

    goto/16 :goto_6

    :cond_f
    move v0, v1

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final b(Ljava/nio/ByteOrder;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "NULL can\'t be converted to a integer value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    instance-of v1, v0, [J

    if-eqz v1, :cond_3

    check-cast v0, [J

    check-cast v0, [J

    array-length v1, v0

    if-ne v1, v3, :cond_2

    aget-wide v0, v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "There are more than one component"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, v0, [I

    if-eqz v1, :cond_5

    check-cast v0, [I

    check-cast v0, [I

    array-length v1, v0

    if-ne v1, v3, :cond_4

    aget v0, v0, v2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "There are more than one component"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Couldn\'t find a integer value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/d/a$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v4, v0, [J

    if-eqz v4, :cond_4

    check-cast v0, [J

    check-cast v0, [J

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-eq v2, v4, :cond_2

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v4, v0, [I

    if-eqz v4, :cond_7

    check-cast v0, [I

    check-cast v0, [I

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_6

    aget v2, v0, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-eq v2, v4, :cond_5

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    instance-of v4, v0, [D

    if-eqz v4, :cond_a

    check-cast v0, [D

    check-cast v0, [D

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_9

    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-eq v2, v4, :cond_8

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    instance-of v4, v0, [Landroid/support/d/a$d;

    if-eqz v4, :cond_d

    check-cast v0, [Landroid/support/d/a$d;

    check-cast v0, [Landroid/support/d/a$d;

    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_c

    aget-object v2, v0, v1

    iget-wide v4, v2, Landroid/support/d/a$d;->tb:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, v0, v1

    iget-wide v4, v2, Landroid/support/d/a$d;->tc:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-eq v2, v4, :cond_b

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/support/d/a;->sg:[Ljava/lang/String;

    iget v2, p0, Landroid/support/d/a$b;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/d/a$b;->sY:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
