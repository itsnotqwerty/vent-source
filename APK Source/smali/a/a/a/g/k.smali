.class public final La/a/a/g/k;
.super La/a/a/g/g;


# instance fields
.field public final ctP:La/a/a/e;

.field private final ctQ:[B

.field public final ctR:[La/a/a/k$b;


# direct methods
.method public constructor <init>(La/a/a/e;[La/a/a/k$b;)V
    .locals 1

    invoke-direct {p0}, La/a/a/g/g;-><init>()V

    iput-object p1, p0, La/a/a/g/k;->ctP:La/a/a/e;

    iput-object p2, p0, La/a/a/g/k;->ctR:[La/a/a/k$b;

    invoke-static {p2}, La/a/a/g/k;->a([La/a/a/k$b;)[B

    move-result-object v0

    iput-object v0, p0, La/a/a/g/k;->ctQ:[B

    return-void
.end method

.method private static a([BLjava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move v2, v1

    move v0, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    aget-byte v3, p0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_1
    if-ge v1, v0, :cond_2

    aget-byte v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static a([La/a/a/k$b;)[B
    .locals 10

    const/4 v3, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, p0, v0

    iget v4, v4, La/a/a/k$b;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shr-int/lit8 v7, v7, 0x8

    if-eq v7, v2, :cond_3

    :cond_1
    if-eq v2, v3, :cond_2

    invoke-static {v1, v5}, La/a/a/g/k;->a([BLjava/io/DataOutputStream;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v2, v1, 0x8

    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v1, 0x20

    new-array v1, v1, [B

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shr-int/lit8 v7, v7, 0x3

    rem-int/lit8 v7, v7, 0x20

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    aget-byte v8, v1, v7

    const/16 v9, 0x80

    shr-int v0, v9, v0

    or-int/2addr v0, v8

    int-to-byte v0, v0

    aput-byte v0, v1, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    if-eq v2, v3, :cond_5

    :try_start_1
    invoke-static {v1, v5}, La/a/a/g/k;->a([BLjava/io/DataOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static w([B)[La/a/a/k$b;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v2, p0

    if-le v2, v0, :cond_3

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_2

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    move v2, v1

    :goto_2
    const/16 v9, 0x8

    if-ge v2, v9, :cond_1

    shr-int v9, v8, v2

    and-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_0

    shl-int/lit8 v9, v6, 0x8

    mul-int/lit8 v10, v3, 0x8

    add-int/2addr v9, v10

    rsub-int/lit8 v10, v2, 0x7

    add-int/2addr v9, v10

    invoke-static {v9}, La/a/a/k$b;->fa(I)La/a/a/k$b;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v7, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [La/a/a/k$b;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/k$b;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/a/a/g/k;->ctP:La/a/a/e;

    invoke-virtual {v0, p1}, La/a/a/e;->writeToStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, La/a/a/g/k;->ctQ:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/g/k;->ctP:La/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/a/g/k;->ctR:[La/a/a/k$b;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
