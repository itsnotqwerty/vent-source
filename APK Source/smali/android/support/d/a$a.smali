.class final Landroid/support/d/a$a;
.super Ljava/io/InputStream;

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final BIG_ENDIAN:Ljava/nio/ByteOrder;

.field private static final LITTLE_ENDIAN:Ljava/nio/ByteOrder;


# instance fields
.field private final mLength:I

.field mPosition:I

.field private sV:Ljava/io/DataInputStream;

.field sW:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/support/d/a$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Landroid/support/d/a$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    iput v0, p0, Landroid/support/d/a$a;->mLength:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/support/d/a$a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic d(Landroid/support/d/a$a;)I
    .locals 1

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    return v0
.end method

.method static synthetic e(Landroid/support/d/a$a;)I
    .locals 1

    iget v0, p0, Landroid/support/d/a$a;->mLength:I

    return v0
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public final ck()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/d/a$a;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    iget v1, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/d/a$a;->mPosition:I

    return v0
.end method

.method public final readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    int-to-byte v0, v0

    return v0
.end method

.method public final readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/d/a$a;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/d/a$a;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    if-eq v0, p3, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read up to the length of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget-object v1, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    iget-object v2, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iget-object v3, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v4, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/support/d/a$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_2

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v4, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v5, Landroid/support/d/a$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v5, :cond_3

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ExifInterface"

    const-string v1, "Currently unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final readLong()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget-object v1, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    iget-object v2, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v2

    iget-object v3, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v3

    iget-object v4, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v4

    iget-object v5, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->read()I

    move-result v5

    iget-object v6, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v6

    iget-object v7, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v7

    or-int v8, v0, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v5

    or-int/2addr v8, v6

    or-int/2addr v8, v7

    if-gez v8, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v8, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v9, Landroid/support/d/a$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_2

    int-to-long v8, v7

    const/16 v7, 0x38

    shl-long/2addr v8, v7

    int-to-long v6, v6

    const/16 v10, 0x30

    shl-long/2addr v6, v10

    add-long/2addr v6, v8

    int-to-long v8, v5

    const/16 v5, 0x28

    shl-long/2addr v8, v5

    add-long/2addr v6, v8

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    add-long/2addr v4, v6

    int-to-long v6, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    add-long/2addr v4, v6

    int-to-long v2, v2

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    add-long/2addr v2, v4

    int-to-long v4, v1

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_2
    iget-object v8, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v9, Landroid/support/d/a$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_3

    int-to-long v8, v0

    const/16 v0, 0x38

    shl-long/2addr v8, v0

    int-to-long v0, v1

    const/16 v10, 0x30

    shl-long/2addr v0, v10

    add-long/2addr v0, v8

    int-to-long v8, v2

    const/16 v2, 0x28

    shl-long/2addr v8, v2

    add-long/2addr v0, v8

    int-to-long v2, v3

    const/16 v8, 0x20

    shl-long/2addr v2, v8

    add-long/2addr v0, v2

    int-to-long v2, v4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, v7

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget-object v1, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/support/d/a$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/support/d/a$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    iget-object v1, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/support/d/a$a;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_2

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    sget-object v3, Landroid/support/d/a$a;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_3

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte order: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/d/a$a;->sW:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/d/a$a;->mPosition:I

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    iget-object v0, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    iget v1, p0, Landroid/support/d/a$a;->mLength:I

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->mark(I)V

    :goto_0
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Landroid/support/d/a$a;->skipBytes(I)I

    move-result v0

    long-to-int v1, p1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t seek up to the byteCount"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/d/a$a;->mPosition:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final skipBytes(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/support/d/a$a;->mLength:I

    iget v1, p0, Landroid/support/d/a$a;->mPosition:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/d/a$a;->sV:Ljava/io/DataInputStream;

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/d/a$a;->mPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/d/a$a;->mPosition:I

    return v0
.end method
