.class final Lokhttp3/internal/e/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field daJ:[Lokhttp3/internal/e/c;

.field final dad:Ld/e;

.field dynamicTableByteCount:I

.field headerCount:I

.field final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;"
        }
    .end annotation
.end field

.field final headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I


# direct methods
.method constructor <init>(Ld/s;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/e/d$a;-><init>(Ld/s;B)V

    return-void
.end method

.method private constructor <init>(Ld/s;B)V
    .locals 3

    const/16 v2, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/e/d$a;->headerList:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/e/c;

    iput-object v0, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    iget-object v0, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    iput v1, p0, Lokhttp3/internal/e/d$a;->headerCount:I

    iput v1, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    iput v2, p0, Lokhttp3/internal/e/d$a;->headerTableSizeSetting:I

    iput v2, p0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    invoke-static {p1}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/e/d$a;->dad:Ld/e;

    return-void
.end method

.method private clearDynamicTable()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    iput v2, p0, Lokhttp3/internal/e/d$a;->headerCount:I

    iput v2, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 6

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    aget-object v2, v2, v0

    iget v2, v2, Lokhttp3/internal/e/c;->hpackSize:I

    sub-int/2addr p1, v2

    iget v2, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    aget-object v3, v3, v0

    iget v3, v3, Lokhttp3/internal/e/c;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    iget v2, p0, Lokhttp3/internal/e/d$a;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/e/d$a;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    iget v2, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    iget v4, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/e/d$a;->headerCount:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    :cond_1
    return v1
.end method

.method static isStaticHeader(I)Z
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/d$a;->dad:Ld/e;

    invoke-interface {v0}, Ld/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method final MT()Ld/f;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lokhttp3/internal/e/d$a;->readByte()I

    move-result v2

    and-int/lit16 v0, v2, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/e/d$a;->readInt(II)I

    move-result v2

    if-eqz v0, :cond_5

    invoke-static {}, Lokhttp3/internal/e/k;->MY()Lokhttp3/internal/e/k;

    move-result-object v5

    iget-object v0, p0, Lokhttp3/internal/e/d$a;->dad:Ld/e;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Ld/e;->ag(J)[B

    move-result-object v6

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v4, v5, Lokhttp3/internal/e/k;->dbH:Lokhttp3/internal/e/k$a;

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    array-length v1, v6

    if-ge v0, v1, :cond_3

    aget-byte v1, v6, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x8

    :goto_2
    const/16 v1, 0x8

    if-lt v2, v1, :cond_2

    add-int/lit8 v1, v2, -0x8

    ushr-int v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v4, v4, Lokhttp3/internal/e/k$a;->dbI:[Lokhttp3/internal/e/k$a;

    aget-object v4, v4, v1

    iget-object v1, v4, Lokhttp3/internal/e/k$a;->dbI:[Lokhttp3/internal/e/k$a;

    if-nez v1, :cond_1

    iget v1, v4, Lokhttp3/internal/e/k$a;->symbol:I

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v1, v4, Lokhttp3/internal/e/k$a;->terminalBits:I

    sub-int/2addr v2, v1

    iget-object v4, v5, Lokhttp3/internal/e/k;->dbH:Lokhttp3/internal/e/k$a;

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x8

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v2, :cond_4

    rsub-int/lit8 v0, v2, 0x8

    shl-int v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, v4, Lokhttp3/internal/e/k$a;->dbI:[Lokhttp3/internal/e/k$a;

    aget-object v0, v1, v0

    iget-object v1, v0, Lokhttp3/internal/e/k$a;->dbI:[Lokhttp3/internal/e/k$a;

    if-nez v1, :cond_4

    iget v1, v0, Lokhttp3/internal/e/k$a;->terminalBits:I

    if-gt v1, v2, :cond_4

    iget v1, v0, Lokhttp3/internal/e/k$a;->symbol:I

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v0, v0, Lokhttp3/internal/e/k$a;->terminalBits:I

    sub-int/2addr v2, v0

    iget-object v4, v5, Lokhttp3/internal/e/k;->dbH:Lokhttp3/internal/e/k$a;

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ld/f;->R([B)Ld/f;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lokhttp3/internal/e/d$a;->dad:Ld/e;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Ld/e;->az(J)Ld/f;

    move-result-object v0

    goto :goto_4
.end method

.method final a(Lokhttp3/internal/e/c;)V
    .locals 6

    iget-object v0, p0, Lokhttp3/internal/e/d$a;->headerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lokhttp3/internal/e/c;->hpackSize:I

    iget v1, p0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lokhttp3/internal/e/d$a;->clearDynamicTable()V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lokhttp3/internal/e/d$a;->evictToRecoverBytes(I)I

    iget v1, p0, Lokhttp3/internal/e/d$a;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v2, v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/e/c;

    iget-object v2, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v4, v4

    iget-object v5, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    iput-object v1, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    :cond_1
    iget v1, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    iget-object v2, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    aput-object p1, v2, v1

    iget v1, p0, Lokhttp3/internal/e/d$a;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/e/d$a;->headerCount:I

    iget v1, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    goto :goto_0
.end method

.method final adjustDynamicTableByteCount()V
    .locals 2

    iget v0, p0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lokhttp3/internal/e/d$a;->clearDynamicTable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lokhttp3/internal/e/d$a;->dynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/e/d$a;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/e/d$a;->evictToRecoverBytes(I)I

    goto :goto_0
.end method

.method final dynamicTableIndex(I)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/e/d$a;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method final fR(I)Ld/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lokhttp3/internal/e/d$a;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    aget-object v0, v0, p1

    iget-object v0, v0, Lokhttp3/internal/e/c;->daG:Ld/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lokhttp3/internal/e/d$a;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Header index too large "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lokhttp3/internal/e/d$a;->daJ:[Lokhttp3/internal/e/c;

    aget-object v0, v1, v0

    iget-object v0, v0, Lokhttp3/internal/e/c;->daG:Ld/f;

    goto :goto_0
.end method

.method final readInt(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int v0, p1, p2

    if-ge v0, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lokhttp3/internal/e/d$a;->readByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    goto :goto_0
.end method
