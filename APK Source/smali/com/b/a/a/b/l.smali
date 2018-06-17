.class public final Lcom/b/a/a/b/l;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field final brd:[I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/b/a/a/b/l;->brd:[I

    return-void
.end method


# virtual methods
.method final a(I)Z
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lcom/b/a/a/b/l;->a:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()I
    .locals 2

    iget v0, p0, Lcom/b/a/a/b/l;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/l;->brd:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final dQ(I)I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    shl-int v0, v2, p1

    iget v3, p0, Lcom/b/a/a/b/l;->c:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_1
    shl-int v3, v2, p1

    iget v4, p0, Lcom/b/a/a/b/l;->b:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final m(III)Lcom/b/a/a/b/l;
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/b/l;->brd:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lcom/b/a/a/b/l;->a:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/b/a/a/b/l;->a:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/b/a/a/b/l;->b:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/b/a/a/b/l;->b:I

    :goto_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/b/a/a/b/l;->c:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/a/b/l;->c:I

    :goto_2
    iget-object v0, p0, Lcom/b/a/a/b/l;->brd:[I

    aput p3, v0, p1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/b/a/a/b/l;->b:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/b/a/a/b/l;->b:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/b/a/a/b/l;->c:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/a/b/l;->c:I

    goto :goto_2
.end method

.method public final zS()I
    .locals 2

    iget v0, p0, Lcom/b/a/a/b/l;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/b/l;->brd:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x10000

    goto :goto_0
.end method
