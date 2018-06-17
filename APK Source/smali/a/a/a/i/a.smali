.class public final La/a/a/i/a;
.super Ljava/lang/Object;


# direct methods
.method public static encodeToString([B)Ljava/lang/String;
    .locals 14

    const/4 v1, 0x0

    const-wide/16 v12, 0x1f

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x5

    int-to-double v4, v0

    const-wide v6, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    rem-int/lit8 v2, v0, 0x8

    array-length v0, p0

    add-int/2addr v0, v2

    new-array v3, v0, [B

    array-length v0, p0

    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    const/16 v5, 0x18

    shl-long/2addr v8, v5

    add-long/2addr v6, v8

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v8, v5

    add-long/2addr v6, v8

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    int-to-long v8, v5

    add-long/2addr v6, v8

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    add-long/2addr v6, v8

    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    const/16 v8, 0x23

    shr-long v8, v6, v8

    and-long/2addr v8, v12

    long-to-int v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    const/16 v9, 0x1e

    shr-long v10, v6, v9

    and-long/2addr v10, v12

    long-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    const/16 v9, 0x19

    shr-long v10, v6, v9

    and-long/2addr v10, v12

    long-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    const/16 v9, 0x14

    shr-long v10, v6, v9

    and-long/2addr v10, v12

    long-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    const/16 v9, 0xf

    shr-long v10, v6, v9

    and-long/2addr v10, v12

    long-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    const/16 v9, 0xa

    shr-long v10, v6, v9

    and-long/2addr v10, v12

    long-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    const/4 v9, 0x5

    shr-long v10, v6, v9

    and-long/2addr v10, v12

    long-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    and-long/2addr v6, v12

    long-to-int v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v4, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "======"

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
