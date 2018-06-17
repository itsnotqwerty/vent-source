.class Lcom/amazonaws/util/Base64Codec;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/Base64Codec$LazyHolder;
    }
.end annotation


# instance fields
.field final auK:[B


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->av(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/Base64Codec;->auK:[B

    return-void
.end method

.method private static a(B)I
    .locals 3

    invoke-static {}, Lcom/amazonaws/util/Base64Codec$LazyHolder;->ke()[B

    move-result-object v0

    aget-byte v0, v0, p0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid base 64 character: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(I[BI[BI)V
    .locals 6

    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    invoke-static {v2}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const/16 v0, 0xf

    invoke-static {v1, v0}, Lcom/amazonaws/util/CodecUtils;->ar(II)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v3

    ushr-int/lit8 v5, v3, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v3, v0}, Lcom/amazonaws/util/CodecUtils;->ar(II)V

    goto :goto_0

    :cond_1
    and-int/lit8 v0, v3, 0x3

    shl-int/lit8 v0, v0, 0x6

    aget-byte v1, p1, v4

    invoke-static {v1}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    goto :goto_0
.end method

.method static b([BI[BI)V
    .locals 6

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    invoke-static {v2}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    invoke-static {v3}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v3

    ushr-int/lit8 v5, v3, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    and-int/lit8 v0, v3, 0x3

    shl-int/lit8 v0, v0, 0x6

    aget-byte v1, p0, v4

    invoke-static {v1}, Lcom/amazonaws/util/Base64Codec;->a(B)I

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    return-void
.end method


# virtual methods
.method final a([BI[BI)V
    .locals 7

    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->auK:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, p2

    ushr-int/lit8 v4, v3, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v1, v1, v4

    aput-byte v1, p3, p4

    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lcom/amazonaws/util/Base64Codec;->auK:[B

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p1, v2

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v3, v6

    aget-byte v3, v4, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lcom/amazonaws/util/Base64Codec;->auK:[B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-byte v4, p1, v5

    ushr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v2, v5

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    iget-object v1, p0, Lcom/amazonaws/util/Base64Codec;->auK:[B

    and-int/lit8 v2, v4, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p3, v0

    return-void
.end method
