.class public Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)I
    .locals 5

    const/4 v1, -0x1

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    shr-int/lit8 v4, v1, 0x8

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    shr-int/lit8 v4, v3, 0x4

    xor-int/2addr v3, v4

    int-to-short v3, v3

    shl-int/lit8 v1, v1, 0x8

    shl-int/lit8 v4, v3, 0xc

    xor-int/2addr v1, v4

    shl-int/lit8 v4, v3, 0x5

    xor-int/2addr v1, v4

    xor-int/2addr v1, v3

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a:I

    return v0
.end method

.method public a(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;
    .locals 0

    iput p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->b(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a([B)I

    move-result v0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->b:I

    return v0
.end method

.method public b(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;
    .locals 0

    iput p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->b:I

    return-object p0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->c:I

    return v0
.end method

.method public c(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;
    .locals 0

    iput p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->c:I

    return-object p0
.end method

.method public d()J
    .locals 6

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    const/16 v2, 0xf

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->b()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x7fff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->c()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
