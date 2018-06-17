.class final Lokhttp3/internal/e/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/e/h$b;,
        Lokhttp3/internal/e/h$a;
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field final client:Z

.field final dad:Ld/e;

.field private final dbt:Lokhttp3/internal/e/h$a;

.field final dbu:Lokhttp3/internal/e/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lokhttp3/internal/e/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/h;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ld/e;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    iput-boolean p2, p0, Lokhttp3/internal/e/h;->client:Z

    new-instance v0, Lokhttp3/internal/e/h$a;

    iget-object v1, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-direct {v0, v1}, Lokhttp3/internal/e/h$a;-><init>(Ld/e;)V

    iput-object v0, p0, Lokhttp3/internal/e/h;->dbt:Lokhttp3/internal/e/h$a;

    new-instance v0, Lokhttp3/internal/e/d$a;

    iget-object v1, p0, Lokhttp3/internal/e/h;->dbt:Lokhttp3/internal/e/h$a;

    invoke-direct {v0, v1}, Lokhttp3/internal/e/d$a;-><init>(Ld/s;)V

    iput-object v0, p0, Lokhttp3/internal/e/h;->dbu:Lokhttp3/internal/e/d$a;

    return-void
.end method

.method private MW()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->readInt()I

    iget-object v0, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->readByte()B

    return-void
.end method

.method static c(Ld/e;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ld/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Ld/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Ld/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static lengthWithoutPadding(IBS)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-le p2, p0, :cond_1

    const-string v0, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    sub-int v0, p0, p2

    int-to-short v0, v0

    return v0
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x80

    const/16 v5, 0x40

    iget-object v0, p0, Lokhttp3/internal/e/h;->dbt:Lokhttp3/internal/e/h$a;

    iget-object v1, p0, Lokhttp3/internal/e/h;->dbt:Lokhttp3/internal/e/h$a;

    iput p1, v1, Lokhttp3/internal/e/h$a;->left:I

    iput p1, v0, Lokhttp3/internal/e/h$a;->length:I

    iget-object v0, p0, Lokhttp3/internal/e/h;->dbt:Lokhttp3/internal/e/h$a;

    iput-short p2, v0, Lokhttp3/internal/e/h$a;->padding:S

    iget-object v0, p0, Lokhttp3/internal/e/h;->dbt:Lokhttp3/internal/e/h$a;

    iput-byte p3, v0, Lokhttp3/internal/e/h$a;->flags:B

    iget-object v0, p0, Lokhttp3/internal/e/h;->dbt:Lokhttp3/internal/e/h$a;

    iput p4, v0, Lokhttp3/internal/e/h$a;->streamId:I

    iget-object v0, p0, Lokhttp3/internal/e/h;->dbu:Lokhttp3/internal/e/d$a;

    :goto_0
    iget-object v1, v0, Lokhttp3/internal/e/d$a;->dad:Ld/e;

    invoke-interface {v1}, Ld/e;->Kr()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lokhttp3/internal/e/d$a;->dad:Ld/e;

    invoke-interface {v1}, Ld/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v6, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit16 v2, v1, 0x80

    if-ne v2, v6, :cond_4

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/e/d$a;->readInt(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lokhttp3/internal/e/d$a;->isStaticHeader(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    aget-object v1, v2, v1

    iget-object v2, v0, Lokhttp3/internal/e/d$a;->headerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    array-length v2, v2

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Lokhttp3/internal/e/d$a;->dynamicTableIndex(I)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, v0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, v0, Lokhttp3/internal/e/d$a;->headerList:Ljava/util/List;

    iget-object v3, v0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    aget-object v2, v3, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-ne v1, v5, :cond_5

    invoke-virtual {v0}, Lokhttp3/internal/e/d$a;->MT()Ld/f;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/e/d;->a(Ld/f;)Ld/f;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/e/d$a;->MT()Ld/f;

    move-result-object v2

    new-instance v3, Lokhttp3/internal/e/c;

    invoke-direct {v3, v1, v2}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ld/f;)V

    invoke-virtual {v0, v3}, Lokhttp3/internal/e/d$a;->a(Lokhttp3/internal/e/c;)V

    goto :goto_0

    :cond_5
    and-int/lit8 v2, v1, 0x40

    if-ne v2, v5, :cond_6

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/e/d$a;->readInt(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/d$a;->fR(I)Ld/f;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/e/d$a;->MT()Ld/f;

    move-result-object v2

    new-instance v3, Lokhttp3/internal/e/c;

    invoke-direct {v3, v1, v2}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ld/f;)V

    invoke-virtual {v0, v3}, Lokhttp3/internal/e/d$a;->a(Lokhttp3/internal/e/c;)V

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v2, v1, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/e/d$a;->readInt(II)I

    move-result v1

    iput v1, v0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    iget v1, v0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    if-ltz v1, :cond_7

    iget v1, v0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    iget v2, v0, Lokhttp3/internal/e/d$a;->headerTableSizeSetting:I

    if-le v1, v2, :cond_8

    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid dynamic table size update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v0}, Lokhttp3/internal/e/d$a;->adjustDynamicTableByteCount()V

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x10

    if-eq v1, v2, :cond_a

    if-nez v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Lokhttp3/internal/e/d$a;->MT()Ld/f;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/e/d;->a(Ld/f;)Ld/f;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/e/d$a;->MT()Ld/f;

    move-result-object v2

    iget-object v3, v0, Lokhttp3/internal/e/d$a;->headerList:Ljava/util/List;

    new-instance v4, Lokhttp3/internal/e/c;

    invoke-direct {v4, v1, v2}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ld/f;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/e/d$a;->readInt(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/e/d$a;->fR(I)Ld/f;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/e/d$a;->MT()Ld/f;

    move-result-object v2

    iget-object v3, v0, Lokhttp3/internal/e/d$a;->headerList:Ljava/util/List;

    new-instance v4, Lokhttp3/internal/e/c;

    invoke-direct {v4, v1, v2}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ld/f;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lokhttp3/internal/e/h;->dbu:Lokhttp3/internal/e/d$a;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lokhttp3/internal/e/d$a;->headerList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v0, Lokhttp3/internal/e/d$a;->headerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method


# virtual methods
.method public final a(ZLokhttp3/internal/e/h$b;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x4000

    const/16 v9, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    const-wide/16 v6, 0x9

    invoke-interface {v1, v6, v7}, Ld/e;->Z(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-static {v1}, Lokhttp3/internal/e/h;->c(Ld/e;)I

    move-result v1

    if-ltz v1, :cond_0

    if-le v1, v10, :cond_2

    :cond_0
    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v1

    move v4, v0

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v2, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    if-eqz p1, :cond_3

    if-eq v2, v3, :cond_3

    const-string v1, "Expected a SETTINGS frame but was %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    iget-object v5, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v5}, Ld/e;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    iget-object v6, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v6}, Ld/e;->readInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    sget-object v7, Lokhttp3/internal/e/h;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lokhttp3/internal/e/h;->logger:Ljava/util/logging/Logger;

    invoke-static {v4, v6, v1, v2, v5}, Lokhttp3/internal/e/e;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_4
    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Ld/e;->ah(J)V

    goto :goto_0

    :pswitch_0
    if-nez v6, :cond_5

    const-string v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_6

    move v3, v4

    :goto_1
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_7

    move v2, v4

    :goto_2
    if-eqz v2, :cond_8

    const-string v1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6
    move v3, v0

    goto :goto_1

    :cond_7
    move v2, v0

    goto :goto_2

    :cond_8
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_9

    iget-object v0, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_9
    invoke-static {v1, v5, v0}, Lokhttp3/internal/e/h;->lengthWithoutPadding(IBS)I

    move-result v1

    iget-object v2, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {p2, v3, v6, v2, v1}, Lokhttp3/internal/e/h$b;->a(ZILd/e;I)V

    iget-object v1, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ld/e;->ah(J)V

    goto/16 :goto_0

    :pswitch_1
    if-nez v6, :cond_a

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_a
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_b

    move v3, v4

    :goto_3
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_c

    iget-object v0, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    move v2, v0

    :goto_4
    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lokhttp3/internal/e/h;->MW()V

    add-int/lit8 v0, v1, -0x5

    :goto_5
    invoke-static {v0, v5, v2}, Lokhttp3/internal/e/h;->lengthWithoutPadding(IBS)I

    move-result v0

    invoke-direct {p0, v0, v2, v5, v6}, Lokhttp3/internal/e/h;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v3, v6, v0}, Lokhttp3/internal/e/h$b;->b(ZILjava/util/List;)V

    goto/16 :goto_0

    :cond_b
    move v3, v0

    goto :goto_3

    :cond_c
    move v2, v0

    goto :goto_4

    :pswitch_2
    const/4 v2, 0x5

    if-eq v1, v2, :cond_d

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_d
    if-nez v6, :cond_e

    const-string v1, "TYPE_PRIORITY streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_e
    invoke-direct {p0}, Lokhttp3/internal/e/h;->MW()V

    goto/16 :goto_0

    :pswitch_3
    if-eq v1, v3, :cond_f

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_f
    if-nez v6, :cond_10

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_10
    iget-object v1, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v1}, Ld/e;->readInt()I

    move-result v1

    invoke-static {v1}, Lokhttp3/internal/e/b;->fQ(I)Lokhttp3/internal/e/b;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_11
    invoke-interface {p2, v6, v2}, Lokhttp3/internal/e/h$b;->c(ILokhttp3/internal/e/b;)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v6, :cond_12

    const-string v1, "TYPE_SETTINGS streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_12
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_13

    if-eqz v1, :cond_1

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13
    rem-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_14

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    new-instance v6, Lokhttp3/internal/e/m;

    invoke-direct {v6}, Lokhttp3/internal/e/m;-><init>()V

    move v5, v0

    :goto_6
    if-ge v5, v1, :cond_17

    iget-object v2, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->readShort()S

    move-result v2

    const v7, 0xffff

    and-int/2addr v2, v7

    iget-object v7, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v7}, Ld/e;->readInt()I

    move-result v7

    packed-switch v2, :pswitch_data_1

    :cond_15
    :goto_7
    :pswitch_5
    invoke-virtual {v6, v2, v7}, Lokhttp3/internal/e/m;->aV(II)Lokhttp3/internal/e/m;

    add-int/lit8 v2, v5, 0x6

    move v5, v2

    goto :goto_6

    :pswitch_6
    if-eqz v7, :cond_15

    if-eq v7, v4, :cond_15

    const-string v1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_7
    move v2, v3

    goto :goto_7

    :pswitch_8
    const/4 v2, 0x7

    if-gez v7, :cond_15

    const-string v1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_9
    if-lt v7, v10, :cond_16

    const v8, 0xffffff

    if-le v7, v8, :cond_15

    :cond_16
    const-string v1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-interface {p2, v6}, Lokhttp3/internal/e/h$b;->a(Lokhttp3/internal/e/m;)V

    goto/16 :goto_0

    :pswitch_a
    if-nez v6, :cond_18

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_18
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_19

    iget-object v0, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_19
    iget-object v2, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x4

    invoke-static {v1, v5, v0}, Lokhttp3/internal/e/h;->lengthWithoutPadding(IBS)I

    move-result v1

    invoke-direct {p0, v1, v0, v5, v6}, Lokhttp3/internal/e/h;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Lokhttp3/internal/e/h$b;->c(ILjava/util/List;)V

    goto/16 :goto_0

    :pswitch_b
    if-eq v1, v9, :cond_1a

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1a
    if-eqz v6, :cond_1b

    const-string v1, "TYPE_PING streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1b
    iget-object v1, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v1}, Ld/e;->readInt()I

    move-result v1

    iget-object v2, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->readInt()I

    move-result v2

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1c

    move v0, v4

    :cond_1c
    invoke-interface {p2, v0, v1, v2}, Lokhttp3/internal/e/h$b;->ping(ZII)V

    goto/16 :goto_0

    :pswitch_c
    if-ge v1, v9, :cond_1d

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1d
    if-eqz v6, :cond_1e

    const-string v1, "TYPE_GOAWAY streamId != 0"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1e
    iget-object v2, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v2}, Ld/e;->readInt()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v3}, Ld/e;->readInt()I

    move-result v3

    add-int/lit8 v1, v1, -0x8

    invoke-static {v3}, Lokhttp3/internal/e/b;->fQ(I)Lokhttp3/internal/e/b;

    move-result-object v5

    if-nez v5, :cond_1f

    const-string v1, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1f
    sget-object v0, Ld/f;->dcb:Ld/f;

    if-lez v1, :cond_20

    iget-object v0, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    int-to-long v6, v1

    invoke-interface {v0, v6, v7}, Ld/e;->az(J)Ld/f;

    move-result-object v0

    :cond_20
    invoke-interface {p2, v2, v0}, Lokhttp3/internal/e/h$b;->a(ILd/f;)V

    goto/16 :goto_0

    :pswitch_d
    if-eq v1, v3, :cond_21

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_21
    iget-object v1, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v1}, Ld/e;->readInt()I

    move-result v1

    int-to-long v2, v1

    const-wide/32 v8, 0x7fffffff

    and-long/2addr v2, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-nez v1, :cond_22

    const-string v1, "windowSizeIncrement was 0"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Lokhttp3/internal/e/e;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_22
    invoke-interface {p2, v6, v2, v3}, Lokhttp3/internal/e/h$b;->windowUpdate(IJ)V

    goto/16 :goto_0

    :cond_23
    move v0, v1

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/h;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->close()V

    return-void
.end method
