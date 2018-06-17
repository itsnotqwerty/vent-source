.class public final enum Lcom/amazonaws/util/Base64;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/util/Base64;",
        ">;"
    }
.end annotation


# static fields
.field private static final auI:Lcom/amazonaws/util/Base64Codec;

.field private static final synthetic auJ:[Lcom/amazonaws/util/Base64;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/util/Base64;

    sput-object v0, Lcom/amazonaws/util/Base64;->auJ:[Lcom/amazonaws/util/Base64;

    new-instance v0, Lcom/amazonaws/util/Base64Codec;

    invoke-direct {v0}, Lcom/amazonaws/util/Base64Codec;-><init>()V

    sput-object v0, Lcom/amazonaws/util/Base64;->auI:Lcom/amazonaws/util/Base64Codec;

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 9

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-array v0, v3, [B

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v6, v2, [B

    invoke-static {p0, v6}, Lcom/amazonaws/util/CodecUtils;->b(Ljava/lang/String;[B)I

    move-result v5

    rem-int/lit8 v2, v5, 0x4

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input is expected to be encoded in multiple of 4 bytes but found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v2, v5, -0x1

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_3

    if-ltz v2, :cond_3

    aget-byte v7, v6, v2

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    packed-switch v4, :pswitch_data_0

    move v0, v1

    :goto_2
    :pswitch_0
    div-int/lit8 v2, v5, 0x4

    mul-int/lit8 v2, v2, 0x3

    rsub-int/lit8 v4, v0, 0x3

    sub-int/2addr v2, v4

    new-array v5, v2, [B

    move v2, v3

    move v4, v3

    :goto_3
    array-length v3, v5

    rem-int/lit8 v7, v0, 0x3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_4

    invoke-static {v6, v4, v5, v2}, Lcom/amazonaws/util/Base64Codec;->b([BI[BI)V

    add-int/lit8 v3, v4, 0x4

    add-int/lit8 v2, v2, 0x3

    move v4, v3

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-ge v0, v1, :cond_5

    invoke-static {v0, v6, v4, v5, v2}, Lcom/amazonaws/util/Base64Codec;->a(I[BI[BI)V

    :cond_5
    move-object v0, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static varargs g([B)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x3d

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/amazonaws/util/Base64;->auI:Lcom/amazonaws/util/Base64Codec;

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    array-length v2, p0

    rem-int/lit8 v5, v2, 0x3

    if-nez v5, :cond_3

    mul-int/lit8 v0, v0, 0x4

    new-array v3, v0, [B

    move v0, v1

    move v2, v1

    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_2

    invoke-virtual {v4, p0, v2, v3, v0}, Lcom/amazonaws/util/Base64Codec;->a([BI[BI)V

    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v0, v0, 0x4

    move v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_2
    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->j([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    new-array v3, v0, [B

    move v0, v1

    move v2, v1

    :goto_3
    array-length v1, p0

    sub-int/2addr v1, v5

    if-ge v2, v1, :cond_4

    invoke-virtual {v4, p0, v2, v3, v0}, Lcom/amazonaws/util/Base64Codec;->a([BI[BI)V

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v0, 0x4

    move v0, v1

    goto :goto_3

    :cond_4
    packed-switch v5, :pswitch_data_0

    :goto_4
    move-object v0, v3

    goto :goto_2

    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    iget-object v5, v4, Lcom/amazonaws/util/Base64Codec;->auK:[B

    aget-byte v2, p0, v2

    ushr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v4, v4, Lcom/amazonaws/util/Base64Codec;->auK:[B

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-byte v2, v4, v2

    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    aput-byte v8, v3, v0

    aput-byte v8, v3, v1

    goto :goto_4

    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    iget-object v5, v4, Lcom/amazonaws/util/Base64Codec;->auK:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p0, v2

    ushr-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v5, v5, v7

    aput-byte v5, v3, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v5, v4, Lcom/amazonaws/util/Base64Codec;->auK:[B

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-byte v6, p0, v6

    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v2, v7

    aget-byte v2, v5, v2

    aput-byte v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, v4, Lcom/amazonaws/util/Base64Codec;->auK:[B

    and-int/lit8 v4, v6, 0xf

    shl-int/lit8 v4, v4, 0x2

    aget-byte v2, v2, v4

    aput-byte v2, v3, v0

    aput-byte v8, v3, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/Base64;
    .locals 1

    const-class v0, Lcom/amazonaws/util/Base64;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/Base64;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/util/Base64;
    .locals 1

    sget-object v0, Lcom/amazonaws/util/Base64;->auJ:[Lcom/amazonaws/util/Base64;

    invoke-virtual {v0}, [Lcom/amazonaws/util/Base64;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/Base64;

    return-object v0
.end method
