.class final Lcom/b/a/a/b/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field b:I

.field bKD:[Lcom/b/a/a/b/d;

.field final bKE:Lb/e;

.field bpE:I

.field final bwT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/a/b/d;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field g:I


# direct methods
.method constructor <init>(Lb/s;)V
    .locals 3

    const/16 v2, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/b/f$a;->bwT:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/b/a/a/b/d;

    iput-object v0, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/a/b/f$a;->b:I

    iput v1, p0, Lcom/b/a/a/b/f$a;->c:I

    iput v1, p0, Lcom/b/a/a/b/f$a;->d:I

    iput v2, p0, Lcom/b/a/a/b/f$a;->g:I

    iput v2, p0, Lcom/b/a/a/b/f$a;->bpE:I

    invoke-static {p1}, Lb/m;->b(Lb/s;)Lb/e;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/b/f$a;->bKE:Lb/e;

    return-void
.end method

.method private dM(I)I
    .locals 6

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lcom/b/a/a/b/f$a;->b:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/b/a/a/b/d;->bKx:I

    sub-int/2addr p1, v2

    iget v2, p0, Lcom/b/a/a/b/f$a;->d:I

    iget-object v3, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/b/a/a/b/d;->bKx:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/b/a/a/b/f$a;->d:I

    iget v2, p0, Lcom/b/a/a/b/f$a;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/b/a/a/b/f$a;->c:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    iget v2, p0, Lcom/b/a/a/b/f$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    iget v4, p0, Lcom/b/a/a/b/f$a;->b:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lcom/b/a/a/b/f$a;->c:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/b/a/a/b/f$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/a/b/f$a;->b:I

    :cond_1
    return v1
.end method

.method static dP(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lcom/b/a/a/b/f;->zJ()[Lcom/b/a/a/b/d;

    move-result-object v0

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

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bwT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/b/a/a/b/f$a;->b:I

    iput v2, p0, Lcom/b/a/a/b/f$a;->c:I

    iput v2, p0, Lcom/b/a/a/b/f$a;->d:I

    return-void
.end method

.method private zL()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKE:Lb/e;

    invoke-interface {v0}, Lb/e;->KX()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method final a(Lcom/b/a/a/b/d;)V
    .locals 6

    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bwT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/b/a/a/b/d;->bKx:I

    iget v1, p0, Lcom/b/a/a/b/f$a;->bpE:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/b/a/a/b/f$a;->e()V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/b/a/a/b/f$a;->d:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/b/a/a/b/f$a;->bpE:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/b/a/a/b/f$a;->dM(I)I

    iget v1, p0, Lcom/b/a/a/b/f$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    array-length v2, v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/b/a/a/b/d;

    iget-object v2, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    array-length v4, v4

    iget-object v5, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/b/a/a/b/f$a;->b:I

    iput-object v1, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    :cond_1
    iget v1, p0, Lcom/b/a/a/b/f$a;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/b/a/a/b/f$a;->b:I

    iget-object v2, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    aput-object p1, v2, v1

    iget v1, p0, Lcom/b/a/a/b/f$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/a/b/f$a;->c:I

    iget v1, p0, Lcom/b/a/a/b/f$a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/b/a/a/b/f$a;->d:I

    goto :goto_0
.end method

.method final aB(II)I
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
    invoke-direct {p0}, Lcom/b/a/a/b/f$a;->zL()I

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

.method final d()V
    .locals 2

    iget v0, p0, Lcom/b/a/a/b/f$a;->bpE:I

    iget v1, p0, Lcom/b/a/a/b/f$a;->d:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/a/b/f$a;->bpE:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/b/a/a/b/f$a;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/b/a/a/b/f$a;->d:I

    iget v1, p0, Lcom/b/a/a/b/f$a;->bpE:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/b/a/a/b/f$a;->dM(I)I

    goto :goto_0
.end method

.method final dN(I)I
    .locals 1

    iget v0, p0, Lcom/b/a/a/b/f$a;->b:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method final dO(I)Lb/f;
    .locals 2

    invoke-static {p1}, Lcom/b/a/a/b/f$a;->dP(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/b/a/a/b/f;->zJ()[Lcom/b/a/a/b/d;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKD:[Lcom/b/a/a/b/d;

    invoke-static {}, Lcom/b/a/a/b/f;->zJ()[Lcom/b/a/a/b/d;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/b/a/a/b/f$a;->dN(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/b/a/a/b/d;->bKv:Lb/f;

    goto :goto_0
.end method

.method final zM()Lb/f;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/b/a/a/b/f$a;->zL()I

    move-result v2

    and-int/lit16 v0, v2, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lcom/b/a/a/b/f$a;->aB(II)I

    move-result v2

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/b/a/a/b/h;->zQ()Lcom/b/a/a/b/h;

    move-result-object v5

    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKE:Lb/e;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lb/e;->as(J)[B

    move-result-object v6

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v4, v5, Lcom/b/a/a/b/h;->bKO:Lcom/b/a/a/b/h$a;

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

    iget-object v4, v4, Lcom/b/a/a/b/h$a;->bKP:[Lcom/b/a/a/b/h$a;

    aget-object v4, v4, v1

    iget-object v1, v4, Lcom/b/a/a/b/h$a;->bKP:[Lcom/b/a/a/b/h$a;

    if-nez v1, :cond_1

    iget v1, v4, Lcom/b/a/a/b/h$a;->b:I

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v1, v4, Lcom/b/a/a/b/h$a;->c:I

    sub-int/2addr v2, v1

    iget-object v4, v5, Lcom/b/a/a/b/h;->bKO:Lcom/b/a/a/b/h$a;

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

    iget-object v1, v4, Lcom/b/a/a/b/h$a;->bKP:[Lcom/b/a/a/b/h$a;

    aget-object v0, v1, v0

    iget-object v1, v0, Lcom/b/a/a/b/h$a;->bKP:[Lcom/b/a/a/b/h$a;

    if-nez v1, :cond_4

    iget v1, v0, Lcom/b/a/a/b/h$a;->c:I

    if-gt v1, v2, :cond_4

    iget v1, v0, Lcom/b/a/a/b/h$a;->b:I

    invoke-virtual {v7, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v0, v0, Lcom/b/a/a/b/h$a;->c:I

    sub-int/2addr v2, v0

    iget-object v4, v5, Lcom/b/a/a/b/h;->bKO:Lcom/b/a/a/b/h$a;

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lb/f;->L([B)Lb/f;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/b/a/a/b/f$a;->bKE:Lb/e;

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lb/e;->ap(J)Lb/f;

    move-result-object v0

    goto :goto_4
.end method
