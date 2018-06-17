.class public final Lokhttp3/internal/e/m;
.super Ljava/lang/Object;


# instance fields
.field set:I

.field final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/e/m;->values:[I

    return-void
.end method


# virtual methods
.method final aV(II)Lokhttp3/internal/e/m;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/m;->values:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lokhttp3/internal/e/m;->set:I

    or-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/e/m;->set:I

    iget-object v0, p0, Lokhttp3/internal/e/m;->values:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method final getHeaderTableSize()I
    .locals 2

    iget v0, p0, Lokhttp3/internal/e/m;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/m;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getInitialWindowSize()I
    .locals 2

    iget v0, p0, Lokhttp3/internal/e/m;->set:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/e/m;->values:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    goto :goto_0
.end method

.method final isSet(I)Z
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lokhttp3/internal/e/m;->set:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
