.class public final Lio/intercom/a/a/a/c/d/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/a/i$d;,
        Lio/intercom/a/a/a/c/d/a/i$a;,
        Lio/intercom/a/a/a/c/d/a/i$c;,
        Lio/intercom/a/a/a/c/d/a/i$b;
    }
.end annotation


# static fields
.field static final cNC:[B

.field private static final cND:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Exif\u0000\u0000"

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/i;->cNC:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/i;->cND:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lio/intercom/a/a/a/c/d/a/i$b;)I
    .locals 11

    const/4 v10, 0x3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/c/d/a/i$b;->fl(I)S

    move-result v0

    const/16 v1, 0x4d4d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4949

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/i$b;->cNE:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/c/d/a/i$b;->fk(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x6

    invoke-virtual {p0, v1}, Lio/intercom/a/a/a/c/d/a/i$b;->fl(I)S

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_c

    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v0, 0xc

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lio/intercom/a/a/a/c/d/a/i$b;->fl(I)S

    move-result v4

    const/16 v5, 0x112

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Lio/intercom/a/a/a/c/d/a/i$b;->fl(I)S

    move-result v5

    if-lez v5, :cond_0

    const/16 v6, 0xc

    if-le v5, v6, :cond_4

    :cond_0
    const-string v3, "DfltImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DfltImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Got invalid format code = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "DfltImageHeaderParser"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "DfltImageHeaderParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown endianness = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p0, v6}, Lio/intercom/a/a/a/c/d/a/i$b;->fk(I)I

    move-result v6

    if-gez v6, :cond_5

    const-string v3, "DfltImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DfltImageHeaderParser"

    const-string v4, "Negative tiff component count"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v7, "DfltImageHeaderParser"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "DfltImageHeaderParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got tagIndex="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tagType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " formatCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " componentCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v7, Lio/intercom/a/a/a/c/d/a/i;->cND:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    const/4 v7, 0x4

    if-le v6, v7, :cond_7

    const-string v3, "DfltImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DfltImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v3, v3, 0x8

    if-ltz v3, :cond_8

    iget-object v5, p0, Lio/intercom/a/a/a/c/d/a/i$b;->cNE:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v3, v5, :cond_9

    :cond_8
    const-string v5, "DfltImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "DfltImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Illegal tagValueOffset="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " tagType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    if-ltz v6, :cond_a

    add-int v5, v3, v6

    iget-object v6, p0, Lio/intercom/a/a/a/c/d/a/i$b;->cNE:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_b

    :cond_a
    const-string v3, "DfltImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DfltImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Illegal number of bytes for TI tag data tagType="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0, v3}, Lio/intercom/a/a/a/c/d/a/i$b;->fl(I)S

    move-result v0

    :goto_3
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_3
.end method

.method private static a(Lio/intercom/a/a/a/c/d/a/i$c;Lio/intercom/a/a/a/c/b/a/b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v4, 0xffd8

    const/4 v3, 0x3

    const/4 v1, -0x1

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IV()I

    move-result v2

    and-int v0, v2, v4

    if-eq v0, v4, :cond_0

    const/16 v0, 0x4d4d

    if-eq v2, v0, :cond_0

    const/16 v0, 0x4949

    if-ne v2, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    const-string v0, "DfltImageHeaderParser"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DfltImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parser doesn\'t handle magic number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lio/intercom/a/a/a/c/d/a/i;->b(Lio/intercom/a/a/a/c/d/a/i$c;)I

    move-result v2

    if-ne v2, v1, :cond_4

    const-string v0, "DfltImageHeaderParser"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DfltImageHeaderParser"

    const-string v2, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-class v0, [B

    invoke-interface {p1, v2, v0}, Lio/intercom/a/a/a/c/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :try_start_0
    invoke-interface {p0, v0, v2}, Lio/intercom/a/a/a/c/d/a/i$c;->f([BI)I

    move-result v3

    if-eq v3, v2, :cond_6

    const-string v4, "DfltImageHeaderParser"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "DfltImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to read exif segment data, length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", actually read: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    invoke-interface {p1, v0}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    :try_start_1
    invoke-static {v0, v2}, Lio/intercom/a/a/a/c/d/a/i;->e([BI)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v1, Lio/intercom/a/a/a/c/d/a/i$b;

    invoke-direct {v1, v0, v2}, Lio/intercom/a/a/a/c/d/a/i$b;-><init>([BI)V

    invoke-static {v1}, Lio/intercom/a/a/a/c/d/a/i;->a(Lio/intercom/a/a/a/c/d/a/i$b;)I

    move-result v1

    goto :goto_2

    :cond_7
    const-string v2, "DfltImageHeaderParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "DfltImageHeaderParser"

    const-string v3, "Missing jpeg exif preamble"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {p1, v0}, Lio/intercom/a/a/a/c/b/a/b;->put(Ljava/lang/Object;)V

    throw v1
.end method

.method private static a(Lio/intercom/a/a/a/c/d/a/i$c;)Lio/intercom/a/a/a/c/f$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x4

    const v4, 0xffff

    const/high16 v3, -0x10000

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IV()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHS:Lio/intercom/a/a/a/c/f$a;

    :goto_0
    return-object v0

    :cond_0
    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v3

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IV()I

    move-result v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x15

    invoke-interface {p0, v0, v1}, Lio/intercom/a/a/a/c/d/a/i$c;->skip(J)J

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IX()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHU:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHV:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0

    :cond_2
    shr-int/lit8 v1, v0, 0x8

    const v2, 0x474946

    if-ne v1, v2, :cond_3

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHR:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0

    :cond_3
    const v1, 0x52494646

    if-eq v0, v1, :cond_4

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHY:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0

    :cond_4
    invoke-interface {p0, v6, v7}, Lio/intercom/a/a/a/c/d/a/i$c;->skip(J)J

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IV()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v3

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IV()I

    move-result v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    const v1, 0x57454250

    if-eq v0, v1, :cond_5

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHY:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IV()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v3

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IV()I

    move-result v1

    and-int/2addr v1, v4

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, -0x100

    const v2, 0x56503800

    if-eq v1, v2, :cond_6

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHY:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0

    :cond_6
    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x58

    if-ne v1, v2, :cond_8

    invoke-interface {p0, v6, v7}, Lio/intercom/a/a/a/c/d/a/i$c;->skip(J)J

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IX()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHW:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0

    :cond_7
    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHX:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0

    :cond_8
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_a

    invoke-interface {p0, v6, v7}, Lio/intercom/a/a/a/c/d/a/i$c;->skip(J)J

    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IX()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHW:Lio/intercom/a/a/a/c/f$a;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHX:Lio/intercom/a/a/a/c/f$a;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHX:Lio/intercom/a/a/a/c/f$a;

    goto/16 :goto_0
.end method

.method private static b(Lio/intercom/a/a/a/c/d/a/i$c;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v0, -0x1

    :cond_0
    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IW()S

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    const-string v2, "DfltImageHeaderParser"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DfltImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown segmentId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IW()S

    move-result v2

    const/16 v1, 0xda

    if-eq v2, v1, :cond_1

    const/16 v1, 0xd9

    if-ne v2, v1, :cond_3

    const-string v1, "DfltImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DfltImageHeaderParser"

    const-string v2, "Found MARKER_EOI in exif segment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lio/intercom/a/a/a/c/d/a/i$c;->IV()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v3, 0xe1

    if-eq v2, v3, :cond_4

    int-to-long v4, v1

    invoke-interface {p0, v4, v5}, Lio/intercom/a/a/a/c/d/a/i$c;->skip(J)J

    move-result-wide v4

    int-to-long v6, v1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    const-string v3, "DfltImageHeaderParser"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DfltImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to skip enough data, type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", wanted to skip: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but actually skipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static e([BI)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Lio/intercom/a/a/a/c/d/a/i;->cNC:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    move v0, v1

    :goto_1
    sget-object v3, Lio/intercom/a/a/a/c/d/a/i;->cNC:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    aget-byte v3, p0, v0

    sget-object v4, Lio/intercom/a/a/a/c/d/a/i;->cNC:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_1

    :goto_2
    return v1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lio/intercom/a/a/a/c/d/a/i$d;

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/c/d/a/i$d;-><init>(Ljava/io/InputStream;)V

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a/b;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/c/d/a/i;->a(Lio/intercom/a/a/a/c/d/a/i$c;Lio/intercom/a/a/a/c/b/a/b;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)Lio/intercom/a/a/a/c/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lio/intercom/a/a/a/c/d/a/i$a;

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/c/d/a/i$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Lio/intercom/a/a/a/c/d/a/i;->a(Lio/intercom/a/a/a/c/d/a/i$c;)Lio/intercom/a/a/a/c/f$a;

    move-result-object v0

    return-object v0
.end method

.method public final p(Ljava/io/InputStream;)Lio/intercom/a/a/a/c/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lio/intercom/a/a/a/c/d/a/i$d;

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/c/d/a/i$d;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lio/intercom/a/a/a/c/d/a/i;->a(Lio/intercom/a/a/a/c/d/a/i$c;)Lio/intercom/a/a/a/c/f$a;

    move-result-object v0

    return-object v0
.end method
