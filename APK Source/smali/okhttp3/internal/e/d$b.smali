.class final Lokhttp3/internal/e/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field daJ:[Lokhttp3/internal/e/c;

.field private final daK:Ld/c;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method constructor <init>(Ld/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/e/d$b;-><init>(Ld/c;B)V

    return-void
.end method

.method private constructor <init>(Ld/c;B)V
    .locals 3

    const/16 v2, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/e/d$b;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/e/c;

    iput-object v0, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    iput v1, p0, Lokhttp3/internal/e/d$b;->headerCount:I

    iput v1, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    iput v2, p0, Lokhttp3/internal/e/d$b;->headerTableSizeSetting:I

    iput v2, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/e/d$b;->useCompression:Z

    iput-object p1, p0, Lokhttp3/internal/e/d$b;->daK:Ld/c;

    return-void
.end method

.method private b(Ld/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x7f

    iget-boolean v0, p0, Lokhttp3/internal/e/d$b;->useCompression:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lokhttp3/internal/e/k;->MY()Lokhttp3/internal/e/k;

    invoke-static {p1}, Lokhttp3/internal/e/k;->c(Ld/f;)I

    move-result v0

    invoke-virtual {p1}, Ld/f;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    invoke-static {}, Lokhttp3/internal/e/k;->MY()Lokhttp3/internal/e/k;

    invoke-static {p1, v0}, Lokhttp3/internal/e/k;->a(Ld/f;Ld/d;)V

    invoke-virtual {v0}, Ld/c;->MT()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->size()I

    move-result v1

    const/16 v2, 0x80

    invoke-direct {p0, v1, v3, v2}, Lokhttp3/internal/e/d$b;->writeInt(III)V

    iget-object v1, p0, Lokhttp3/internal/e/d$b;->daK:Ld/c;

    invoke-virtual {v1, v0}, Ld/c;->d(Ld/f;)Ld/c;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ld/f;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lokhttp3/internal/e/d$b;->writeInt(III)V

    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daK:Ld/c;

    invoke-virtual {v0, p1}, Ld/c;->d(Ld/f;)Ld/c;

    goto :goto_0
.end method

.method private b(Lokhttp3/internal/e/c;)V
    .locals 6

    iget v0, p1, Lokhttp3/internal/e/c;->hpackSize:I

    iget v1, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lokhttp3/internal/e/d$b;->clearDynamicTable()V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lokhttp3/internal/e/d$b;->evictToRecoverBytes(I)I

    iget v1, p0, Lokhttp3/internal/e/d$b;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v2, v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/e/c;

    iget-object v2, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v4, v4

    iget-object v5, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    iput-object v1, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    :cond_1
    iget v1, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    iget-object v2, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    aput-object p1, v2, v1

    iget v1, p0, Lokhttp3/internal/e/d$b;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/e/d$b;->headerCount:I

    iget v1, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    goto :goto_0
.end method

.method private clearDynamicTable()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    iput v2, p0, Lokhttp3/internal/e/d$b;->headerCount:I

    iput v2, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 6

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    aget-object v2, v2, v0

    iget v2, v2, Lokhttp3/internal/e/c;->hpackSize:I

    sub-int/2addr p1, v2

    iget v2, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    aget-object v3, v3, v0

    iget v3, v3, Lokhttp3/internal/e/c;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    iget v2, p0, Lokhttp3/internal/e/d$b;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/e/d$b;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    iget v2, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    iget v4, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/e/d$b;->headerCount:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    iget v2, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget v0, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    :cond_1
    return v1
.end method

.method private writeInt(III)V
    .locals 3

    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daK:Ld/c;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Ld/c;->fV(I)Ld/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/e/d$b;->daK:Ld/c;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Ld/c;->fV(I)Ld/c;

    sub-int v0, p1, p2

    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    and-int/lit8 v1, v0, 0x7f

    iget-object v2, p0, Lokhttp3/internal/e/d$b;->daK:Ld/c;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Ld/c;->fV(I)Ld/c;

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lokhttp3/internal/e/d$b;->daK:Ld/c;

    invoke-virtual {v1, v0}, Ld/c;->fV(I)Ld/c;

    goto :goto_0
.end method


# virtual methods
.method final setHeaderTableSizeSetting(I)V
    .locals 2

    iput p1, p0, Lokhttp3/internal/e/d$b;->headerTableSizeSetting:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    if-ge v0, v1, :cond_2

    iget v1, p0, Lokhttp3/internal/e/d$b;->smallestHeaderTableSizeSetting:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/e/d$b;->smallestHeaderTableSizeSetting:I

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/e/d$b;->emitDynamicTableSizeUpdate:Z

    iput v0, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    iget v0, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lokhttp3/internal/e/d$b;->clearDynamicTable()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lokhttp3/internal/e/d$b;->dynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/e/d$b;->evictToRecoverBytes(I)I

    goto :goto_0
.end method

.method final writeHeaders(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/e/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0x40

    const/16 v3, 0x20

    const/16 v2, 0x1f

    const/4 v6, 0x0

    const/4 v4, -0x1

    iget-boolean v0, p0, Lokhttp3/internal/e/d$b;->emitDynamicTableSizeUpdate:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lokhttp3/internal/e/d$b;->smallestHeaderTableSizeSetting:I

    iget v1, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lokhttp3/internal/e/d$b;->smallestHeaderTableSizeSetting:I

    invoke-direct {p0, v0, v2, v3}, Lokhttp3/internal/e/d$b;->writeInt(III)V

    :cond_0
    iput-boolean v6, p0, Lokhttp3/internal/e/d$b;->emitDynamicTableSizeUpdate:Z

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/e/d$b;->smallestHeaderTableSizeSetting:I

    iget v0, p0, Lokhttp3/internal/e/d$b;->maxDynamicTableByteCount:I

    invoke-direct {p0, v0, v2, v3}, Lokhttp3/internal/e/d$b;->writeInt(III)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_9

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/e/c;

    iget-object v1, v0, Lokhttp3/internal/e/c;->daG:Ld/f;

    invoke-virtual {v1}, Ld/f;->No()Ld/f;

    move-result-object v8

    iget-object v9, v0, Lokhttp3/internal/e/c;->daH:Ld/f;

    sget-object v1, Lokhttp3/internal/e/d;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const/4 v1, 0x1

    if-le v3, v1, :cond_a

    const/16 v1, 0x8

    if-ge v3, v1, :cond_a

    sget-object v1, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    add-int/lit8 v2, v3, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lokhttp3/internal/e/c;->daH:Ld/f;

    invoke-static {v1, v9}, Lokhttp3/internal/c;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    move v2, v3

    :goto_1
    if-ne v2, v4, :cond_2

    iget v3, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v10, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    array-length v10, v10

    :goto_2
    if-ge v3, v10, :cond_2

    iget-object v11, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    aget-object v11, v11, v3

    iget-object v11, v11, Lokhttp3/internal/e/c;->daG:Ld/f;

    invoke-static {v11, v8}, Lokhttp3/internal/c;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lokhttp3/internal/e/d$b;->daJ:[Lokhttp3/internal/e/c;

    aget-object v11, v11, v3

    iget-object v11, v11, Lokhttp3/internal/e/c;->daH:Ld/f;

    invoke-static {v11, v9}, Lokhttp3/internal/c;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget v2, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    sub-int v2, v3, v2

    sget-object v3, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    array-length v3, v3

    add-int/2addr v2, v3

    :cond_2
    if-eq v2, v4, :cond_6

    const/16 v0, 0x7f

    const/16 v1, 0x80

    invoke-direct {p0, v2, v0, v1}, Lokhttp3/internal/e/d$b;->writeInt(III)V

    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_3
    sget-object v1, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    aget-object v1, v1, v3

    iget-object v1, v1, Lokhttp3/internal/e/c;->daH:Ld/f;

    invoke-static {v1, v9}, Lokhttp3/internal/c;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    add-int/lit8 v2, v3, 0x1

    move v1, v3

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_5

    iget v1, p0, Lokhttp3/internal/e/d$b;->nextHeaderIndex:I

    sub-int v1, v3, v1

    sget-object v11, Lokhttp3/internal/e/d;->daI:[Lokhttp3/internal/e/c;

    array-length v11, v11

    add-int/2addr v1, v11

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lokhttp3/internal/e/d$b;->daK:Ld/c;

    invoke-virtual {v1, v12}, Ld/c;->fV(I)Ld/c;

    invoke-direct {p0, v8}, Lokhttp3/internal/e/d$b;->b(Ld/f;)V

    invoke-direct {p0, v9}, Lokhttp3/internal/e/d$b;->b(Ld/f;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/e/d$b;->b(Lokhttp3/internal/e/c;)V

    goto :goto_3

    :cond_7
    sget-object v2, Lokhttp3/internal/e/c;->daA:Ld/f;

    invoke-virtual {v2}, Ld/f;->size()I

    move-result v3

    invoke-virtual {v8, v6, v2, v6, v3}, Ld/f;->a(ILd/f;II)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lokhttp3/internal/e/c;->daF:Ld/f;

    invoke-virtual {v2, v8}, Ld/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v0, 0xf

    invoke-direct {p0, v1, v0, v6}, Lokhttp3/internal/e/d$b;->writeInt(III)V

    invoke-direct {p0, v9}, Lokhttp3/internal/e/d$b;->b(Ld/f;)V

    goto :goto_3

    :cond_8
    const/16 v2, 0x3f

    invoke-direct {p0, v1, v2, v12}, Lokhttp3/internal/e/d$b;->writeInt(III)V

    invoke-direct {p0, v9}, Lokhttp3/internal/e/d$b;->b(Ld/f;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/e/d$b;->b(Lokhttp3/internal/e/c;)V

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    move v1, v3

    move v2, v4

    goto/16 :goto_1

    :cond_b
    move v1, v4

    move v2, v4

    goto/16 :goto_1
.end method
