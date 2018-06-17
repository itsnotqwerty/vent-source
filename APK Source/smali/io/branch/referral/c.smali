.class final Lio/branch/referral/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/referral/c$c;,
        Lio/branch/referral/c$b;,
        Lio/branch/referral/c$a;
    }
.end annotation


# direct methods
.method public static A([B)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    new-instance v4, Lio/branch/referral/c$c;

    invoke-direct {v4}, Lio/branch/referral/c$c;-><init>()V

    div-int/lit8 v0, v3, 0x3

    mul-int/lit8 v1, v0, 0x4

    iget-boolean v0, v4, Lio/branch/referral/c$c;->cvI:Z

    if-eqz v0, :cond_1

    rem-int/lit8 v0, v3, 0x3

    if-lez v0, :cond_0

    add-int/lit8 v1, v1, 0x4

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, v4, Lio/branch/referral/c$c;->cvJ:Z

    if-eqz v0, :cond_3

    if-lez v3, :cond_3

    add-int/lit8 v0, v3, -0x1

    div-int/lit8 v0, v0, 0x39

    add-int/lit8 v5, v0, 0x1

    iget-boolean v0, v4, Lio/branch/referral/c$c;->cvK:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    mul-int/2addr v0, v5

    add-int/2addr v0, v1

    :goto_2
    new-array v0, v0, [B

    iput-object v0, v4, Lio/branch/referral/c$c;->cvz:[B

    invoke-virtual {v4, p0, v3}, Lio/branch/referral/c$c;->d([BI)Z

    iget-object v0, v4, Lio/branch/referral/c$c;->cvz:[B

    const-string v1, "US-ASCII"

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    :cond_1
    rem-int/lit8 v0, v3, 0x3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static z([B)[B
    .locals 14

    const/4 v13, -0x2

    const/4 v12, -0x1

    const/4 v11, 0x6

    const/4 v3, 0x0

    array-length v0, p0

    new-instance v7, Lio/branch/referral/c$b;

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v7, v1}, Lio/branch/referral/c$b;-><init>([B)V

    iget v1, v7, Lio/branch/referral/c$b;->state:I

    if-ne v1, v11, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v8, v0, 0x0

    iget v4, v7, Lio/branch/referral/c$b;->state:I

    iget v1, v7, Lio/branch/referral/c$b;->value:I

    iget-object v9, v7, Lio/branch/referral/c$b;->cvz:[B

    iget-object v10, v7, Lio/branch/referral/c$b;->cvD:[I

    move v0, v3

    move v2, v3

    move v6, v4

    :goto_1
    if-ge v2, v8, :cond_b

    if-nez v6, :cond_2

    :goto_2
    add-int/lit8 v4, v2, 0x4

    if-gt v4, v8, :cond_1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v10, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v10, v4

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v10, v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v10, v4

    or-int/2addr v1, v4

    if-ltz v1, :cond_1

    add-int/lit8 v4, v0, 0x2

    int-to-byte v5, v1

    aput-byte v5, v9, v4

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v9, v4

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v9, v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_1
    if-ge v2, v8, :cond_b

    :cond_2
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    aget v4, v10, v2

    packed-switch v6, :pswitch_data_0

    :cond_3
    move v2, v5

    goto :goto_1

    :pswitch_0
    if-ltz v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    move v1, v4

    move v2, v5

    goto :goto_1

    :cond_4
    if-eq v4, v12, :cond_3

    iput v11, v7, Lio/branch/referral/c$b;->state:I

    move v0, v3

    goto :goto_0

    :pswitch_1
    if-ltz v4, :cond_5

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    add-int/lit8 v4, v6, 0x1

    move v2, v5

    move v6, v4

    goto :goto_1

    :cond_5
    if-eq v4, v12, :cond_3

    iput v11, v7, Lio/branch/referral/c$b;->state:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_2
    if-ltz v4, :cond_6

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    add-int/lit8 v4, v6, 0x1

    move v2, v5

    move v6, v4

    goto :goto_1

    :cond_6
    if-ne v4, v13, :cond_7

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v2, v1, 0x4

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    const/4 v6, 0x4

    move v0, v4

    move v2, v5

    goto/16 :goto_1

    :cond_7
    if-eq v4, v12, :cond_3

    iput v11, v7, Lio/branch/referral/c$b;->state:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_3
    if-ltz v4, :cond_8

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    add-int/lit8 v2, v0, 0x2

    int-to-byte v4, v1

    aput-byte v4, v9, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v9, v2

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    add-int/lit8 v0, v0, 0x3

    move v2, v5

    move v6, v3

    goto/16 :goto_1

    :cond_8
    if-ne v4, v13, :cond_9

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v4, v1, 0x2

    int-to-byte v4, v4

    aput-byte v4, v9, v2

    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    add-int/lit8 v0, v0, 0x2

    const/4 v4, 0x5

    move v2, v5

    move v6, v4

    goto/16 :goto_1

    :cond_9
    if-eq v4, v12, :cond_3

    iput v11, v7, Lio/branch/referral/c$b;->state:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_4
    if-ne v4, v13, :cond_a

    add-int/lit8 v4, v6, 0x1

    move v2, v5

    move v6, v4

    goto/16 :goto_1

    :cond_a
    if-eq v4, v12, :cond_3

    iput v11, v7, Lio/branch/referral/c$b;->state:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_5
    if-eq v4, v12, :cond_3

    iput v11, v7, Lio/branch/referral/c$b;->state:I

    move v0, v3

    goto/16 :goto_0

    :cond_b
    move v2, v1

    packed-switch v6, :pswitch_data_1

    :goto_3
    :pswitch_6
    iput v6, v7, Lio/branch/referral/c$b;->state:I

    iput v0, v7, Lio/branch/referral/c$b;->cvA:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_7
    iput v11, v7, Lio/branch/referral/c$b;->state:I

    move v0, v3

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v9, v0

    move v0, v1

    goto :goto_3

    :pswitch_9
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v9, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v9, v1

    goto :goto_3

    :pswitch_a
    iput v11, v7, Lio/branch/referral/c$b;->state:I

    move v0, v3

    goto/16 :goto_0

    :cond_c
    iget v0, v7, Lio/branch/referral/c$b;->cvA:I

    iget-object v1, v7, Lio/branch/referral/c$b;->cvz:[B

    array-length v1, v1

    if-ne v0, v1, :cond_d

    iget-object v0, v7, Lio/branch/referral/c$b;->cvz:[B

    :goto_4
    return-object v0

    :cond_d
    iget v0, v7, Lio/branch/referral/c$b;->cvA:I

    new-array v0, v0, [B

    iget-object v1, v7, Lio/branch/referral/c$b;->cvz:[B

    iget v2, v7, Lio/branch/referral/c$b;->cvA:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
