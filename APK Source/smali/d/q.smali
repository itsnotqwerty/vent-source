.class final Ld/q;
.super Ld/f;


# instance fields
.field final transient cUr:[[B

.field final transient cUs:[I


# direct methods
.method constructor <init>(Ld/c;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ld/f;-><init>([B)V

    iget-wide v0, p1, Ld/c;->size:J

    const-wide/16 v2, 0x0

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    iget-object v0, p1, Ld/c;->dbZ:Ld/o;

    move v1, v6

    move v2, v6

    :goto_0
    if-ge v2, p2, :cond_1

    iget v3, v0, Ld/o;->limit:I

    iget v4, v0, Ld/o;->pos:I

    if-ne v3, v4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "s.limit == s.pos"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget v3, v0, Ld/o;->limit:I

    iget v4, v0, Ld/o;->pos:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Ld/o;->dcl:Ld/o;

    goto :goto_0

    :cond_1
    new-array v0, v1, [[B

    iput-object v0, p0, Ld/q;->cUr:[[B

    mul-int/lit8 v0, v1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Ld/q;->cUs:[I

    iget-object v0, p1, Ld/c;->dbZ:Ld/o;

    move-object v1, v0

    move v2, v6

    move v3, v6

    :goto_1
    if-ge v3, p2, :cond_3

    iget-object v0, p0, Ld/q;->cUr:[[B

    iget-object v4, v1, Ld/o;->data:[B

    aput-object v4, v0, v2

    iget v0, v1, Ld/o;->limit:I

    iget v4, v1, Ld/o;->pos:I

    sub-int/2addr v0, v4

    add-int/2addr v0, v3

    if-le v0, p2, :cond_2

    move v0, p2

    :cond_2
    iget-object v3, p0, Ld/q;->cUs:[I

    aput v0, v3, v2

    iget-object v3, p0, Ld/q;->cUs:[I

    iget-object v4, p0, Ld/q;->cUr:[[B

    array-length v4, v4

    add-int/2addr v4, v2

    iget v5, v1, Ld/o;->pos:I

    aput v5, v3, v4

    const/4 v3, 0x1

    iput-boolean v3, v1, Ld/o;->cUm:Z

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Ld/o;->dcl:Ld/o;

    move v3, v0

    goto :goto_1

    :cond_3
    return-void
.end method

.method private Nv()Ld/f;
    .locals 2

    new-instance v0, Ld/f;

    invoke-virtual {p0}, Ld/q;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ld/f;-><init>([B)V

    return-object v0
.end method

.method private fC(I)I
    .locals 4

    iget-object v0, p0, Ld/q;->cUs:[I

    const/4 v1, 0x0

    iget-object v2, p0, Ld/q;->cUr:[[B

    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final KE()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->KE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final KF()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->KF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final KJ()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->KJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Nl()Ld/f;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->Nl()Ld/f;

    move-result-object v0

    return-object v0
.end method

.method public final Nm()Ld/f;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->Nm()Ld/f;

    move-result-object v0

    return-object v0
.end method

.method public final Nn()Ld/f;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->Nn()Ld/f;

    move-result-object v0

    return-object v0
.end method

.method public final No()Ld/f;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->No()Ld/f;

    move-result-object v0

    return-object v0
.end method

.method final a(Ld/c;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Ld/q;->cUr:[[B

    array-length v3, v0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Ld/q;->cUs:[I

    add-int v4, v3, v0

    aget v4, v1, v4

    iget-object v1, p0, Ld/q;->cUs:[I

    aget v1, v1, v0

    new-instance v5, Ld/o;

    iget-object v6, p0, Ld/q;->cUr:[[B

    aget-object v6, v6, v0

    add-int v7, v4, v1

    sub-int v2, v7, v2

    invoke-direct {v5, v6, v4, v2}, Ld/o;-><init>([BII)V

    iget-object v2, p1, Ld/c;->dbZ:Ld/o;

    if-nez v2, :cond_0

    iput-object v5, v5, Ld/o;->dcm:Ld/o;

    iput-object v5, v5, Ld/o;->dcl:Ld/o;

    iput-object v5, p1, Ld/c;->dbZ:Ld/o;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Ld/c;->dbZ:Ld/o;

    iget-object v2, v2, Ld/o;->dcm:Ld/o;

    invoke-virtual {v2, v5}, Ld/o;->a(Ld/o;)Ld/o;

    goto :goto_1

    :cond_1
    iget-wide v0, p1, Ld/c;->size:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Ld/c;->size:J

    return-void
.end method

.method public final a(ILd/f;II)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ld/q;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v1}, Ld/q;->fC(I)I

    move-result v0

    move v2, v0

    :goto_1
    if-lez p4, :cond_3

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    iget-object v3, p0, Ld/q;->cUs:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Ld/q;->cUs:[I

    iget-object v5, p0, Ld/q;->cUr:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    iget-object v4, p0, Ld/q;->cUr:[[B

    aget-object v4, v4, v2

    invoke-virtual {p2, p3, v4, v0, v3}, Ld/f;->a(I[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ld/q;->cUs:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final a(I[BII)Z
    .locals 6

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ld/q;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Ld/q;->fC(I)I

    move-result v0

    move v2, v0

    :goto_1
    if-lez p4, :cond_3

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    iget-object v3, p0, Ld/q;->cUs:[I

    aget v3, v3, v2

    sub-int/2addr v3, v0

    add-int/2addr v3, v0

    sub-int/2addr v3, p1

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Ld/q;->cUs:[I

    iget-object v5, p0, Ld/q;->cUr:[[B

    array-length v5, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    sub-int v0, p1, v0

    add-int/2addr v0, v4

    iget-object v4, p0, Ld/q;->cUr:[[B

    aget-object v4, v4, v2

    invoke-static {v4, v0, p2, p3, v3}, Ld/u;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ld/q;->cUs:[I

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final aW(II)Ld/f;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld/f;->aW(II)Ld/f;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ld/f;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ld/f;

    invoke-virtual {v0}, Ld/f;->size()I

    move-result v0

    invoke-virtual {p0}, Ld/q;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    check-cast p1, Ld/f;

    invoke-virtual {p0}, Ld/q;->size()I

    move-result v0

    invoke-virtual {p0, v2, p1, v2, v0}, Ld/q;->a(ILd/f;II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final getByte(I)B
    .locals 6

    iget-object v0, p0, Ld/q;->cUs:[I

    iget-object v1, p0, Ld/q;->cUr:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    int-to-long v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Ld/u;->checkOffsetAndCount(JJJ)V

    invoke-direct {p0, p1}, Ld/q;->fC(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ld/q;->cUs:[I

    iget-object v3, p0, Ld/q;->cUr:[[B

    array-length v3, v3

    add-int/2addr v3, v1

    aget v2, v2, v3

    iget-object v3, p0, Ld/q;->cUr:[[B

    aget-object v1, v3, v1

    sub-int v0, p1, v0

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_0
    iget-object v0, p0, Ld/q;->cUs:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Ld/q;->bkc:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Ld/q;->cUr:[[B

    array-length v6, v2

    move v3, v1

    move v4, v1

    :goto_1
    if-ge v3, v6, :cond_2

    iget-object v1, p0, Ld/q;->cUr:[[B

    aget-object v7, v1, v3

    iget-object v1, p0, Ld/q;->cUs:[I

    add-int v2, v6, v3

    aget v1, v1, v2

    iget-object v2, p0, Ld/q;->cUs:[I

    aget v5, v2, v3

    sub-int v2, v5, v4

    add-int v4, v1, v2

    move v2, v0

    :goto_2
    if-ge v1, v4, :cond_1

    mul-int/lit8 v0, v2, 0x1f

    aget-byte v2, v7, v1

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v4, v5

    move v0, v2

    goto :goto_1

    :cond_2
    iput v0, p0, Ld/q;->bkc:I

    goto :goto_0
.end method

.method public final size()I
    .locals 2

    iget-object v0, p0, Ld/q;->cUs:[I

    iget-object v1, p0, Ld/q;->cUr:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final toByteArray()[B
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Ld/q;->cUs:[I

    iget-object v2, p0, Ld/q;->cUr:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v3, v0, [B

    iget-object v0, p0, Ld/q;->cUr:[[B

    array-length v4, v0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Ld/q;->cUs:[I

    add-int v5, v4, v0

    aget v5, v1, v5

    iget-object v1, p0, Ld/q;->cUs:[I

    aget v1, v1, v0

    iget-object v6, p0, Ld/q;->cUr:[[B

    aget-object v6, v6, v0

    sub-int v7, v1, v2

    invoke-static {v6, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ld/q;->Nv()Ld/f;

    move-result-object v0

    invoke-virtual {v0}, Ld/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
