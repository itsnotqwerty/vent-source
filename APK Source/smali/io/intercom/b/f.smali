.class public Lio/intercom/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/intercom/b/f;",
        ">;"
    }
.end annotation


# static fields
.field static final HEX_DIGITS:[C

.field public static final cTY:Lio/intercom/b/f;


# instance fields
.field transient bkc:I

.field transient cTZ:Ljava/lang/String;

.field final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/intercom/b/f;->HEX_DIGITS:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lio/intercom/b/f;->H([B)Lio/intercom/b/f;

    move-result-object v0

    sput-object v0, Lio/intercom/b/f;->cTY:Lio/intercom/b/f;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/b/f;->data:[B

    return-void
.end method

.method public static varargs H([B)Lio/intercom/b/f;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lio/intercom/b/f;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lio/intercom/b/f;-><init>([B)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lio/intercom/b/f;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lio/intercom/b/f;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/b/f;-><init>([B)V

    return-object v0
.end method

.method private static decodeHexDigit(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fh(Ljava/lang/String;)Lio/intercom/b/f;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/b/f;

    sget-object v1, Lio/intercom/b/u;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/b/f;-><init>([B)V

    iput-object p0, v0, Lio/intercom/b/f;->cTZ:Ljava/lang/String;

    return-object v0
.end method

.method private fi(Ljava/lang/String;)Lio/intercom/b/f;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/b/f;->data:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lio/intercom/b/f;->H([B)Lio/intercom/b/f;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static fj(Ljava/lang/String;)Lio/intercom/b/f;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "base64 == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lio/intercom/b/b;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lio/intercom/b/f;

    invoke-direct {v0, v1}, Lio/intercom/b/f;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fk(Ljava/lang/String;)Lio/intercom/b/f;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected hex string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/intercom/b/f;->decodeHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/intercom/b/f;->decodeHexDigit(C)I

    move-result v3

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lio/intercom/b/f;->H([B)Lio/intercom/b/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public KE()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lio/intercom/b/f;->cTZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/intercom/b/f;->data:[B

    sget-object v2, Lio/intercom/b/u;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lio/intercom/b/f;->cTZ:Ljava/lang/String;

    goto :goto_0
.end method

.method public KF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    invoke-static {v0}, Lio/intercom/b/b;->E([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public KG()Lio/intercom/b/f;
    .locals 1

    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lio/intercom/b/f;->fi(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    return-object v0
.end method

.method public KH()Lio/intercom/b/f;
    .locals 1

    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lio/intercom/b/f;->fi(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    return-object v0
.end method

.method public KI()Lio/intercom/b/f;
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lio/intercom/b/f;->fi(Ljava/lang/String;)Lio/intercom/b/f;

    move-result-object v0

    return-object v0
.end method

.method public KJ()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    iget-object v4, p0, Lio/intercom/b/f;->data:[B

    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-byte v6, v4, v0

    add-int/lit8 v7, v2, 0x1

    sget-object v1, Lio/intercom/b/f;->HEX_DIGITS:[C

    shr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v1, v1, v8

    aput-char v1, v3, v2

    add-int/lit8 v1, v7, 0x1

    sget-object v2, Lio/intercom/b/f;->HEX_DIGITS:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v2, v2, v6

    aput-char v2, v3, v7

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public KK()Lio/intercom/b/f;
    .locals 6

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    aget-byte v3, v0, v1

    if-lt v3, v4, :cond_3

    if-gt v3, v5, :cond_3

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-byte v2, v0, v1

    if-lt v2, v4, :cond_0

    if-gt v2, v5, :cond_0

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Lio/intercom/b/f;

    invoke-direct {p0, v0}, Lio/intercom/b/f;-><init>([B)V

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method a(Lio/intercom/b/c;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lio/intercom/b/f;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lio/intercom/b/c;->b([BII)Lio/intercom/b/c;

    return-void
.end method

.method public a(ILio/intercom/b/f;II)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    invoke-virtual {p2, v1, v0, v1, p4}, Lio/intercom/b/f;->a(I[BII)Z

    move-result v0

    return v0
.end method

.method public a(I[BII)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    invoke-static {v0, p1, p2, p3, p4}, Lio/intercom/b/u;->a([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aS(II)Lio/intercom/b/f;
    .locals 4

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    array-length v0, v0

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > length("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/b/f;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sub-int v0, p2, p1

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lio/intercom/b/f;->data:[B

    array-length v1, v1

    if-ne p2, v1, :cond_3

    :goto_0
    return-object p0

    :cond_3
    new-array v1, v0, [B

    iget-object v2, p0, Lio/intercom/b/f;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lio/intercom/b/f;

    invoke-direct {p0, v1}, Lio/intercom/b/f;-><init>([B)V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    check-cast p1, Lio/intercom/b/f;

    invoke-virtual {p0}, Lio/intercom/b/f;->size()I

    move-result v4

    invoke-virtual {p1}, Lio/intercom/b/f;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v3}, Lio/intercom/b/f;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {p1, v3}, Lio/intercom/b/f;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-eq v7, v8, :cond_2

    if-ge v7, v8, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, v5, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v4, v5, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lio/intercom/b/f;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lio/intercom/b/f;

    invoke-virtual {v0}, Lio/intercom/b/f;->size()I

    move-result v0

    iget-object v3, p0, Lio/intercom/b/f;->data:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lio/intercom/b/f;

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    iget-object v3, p0, Lio/intercom/b/f;->data:[B

    array-length v3, v3

    invoke-virtual {p1, v2, v0, v2, v3}, Lio/intercom/b/f;->a(I[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getByte(I)B
    .locals 1

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lio/intercom/b/f;->bkc:I

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lio/intercom/b/f;->bkc:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v1, -0x1

    const/16 v8, 0x40

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string v0, "[size=0]"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/intercom/b/f;->KE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v3

    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_5

    if-ne v2, v8, :cond_1

    :goto_2
    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lio/intercom/b/f;->data:[B

    array-length v0, v0

    if-gt v0, v8, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/intercom/b/f;->KJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3

    :cond_2
    const v7, 0xfffd

    if-ne v6, v7, :cond_4

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/b/f;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3, v8}, Lio/intercom/b/f;->aS(II)Lio/intercom/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/b/f;->KJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, "\\r"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[size="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/b/f;->data:[B

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " text="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u2026]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[text="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
