.class public final Landroid/support/v4/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final BD:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/a/a;->BD:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static a(IIIII)I
    .locals 3

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a([F)I
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x437f0000    # 255.0f

    aget v0, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    mul-float v4, v7, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v2

    sub-float v4, v3, v4

    const/high16 v3, 0x42700000    # 60.0f

    div-float v3, v0, v3

    rem-float/2addr v3, v7

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v5, v3

    mul-float v5, v2, v3

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x3c

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    invoke-static {v3}, Landroid/support/v4/a/a;->ag(I)I

    move-result v1

    invoke-static {v2}, Landroid/support/v4/a/a;->ag(I)I

    move-result v2

    invoke-static {v0}, Landroid/support/v4/a/a;->ag(I)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    :pswitch_0
    add-float v0, v2, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v0, v5, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v0, v6, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, v1

    goto :goto_0

    :pswitch_1
    add-float v0, v5, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v0, v2, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v0, v6, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, v1

    goto :goto_0

    :pswitch_2
    mul-float v0, v6, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v0, v2, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float v0, v5, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, v1

    goto :goto_0

    :pswitch_3
    mul-float v0, v6, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float v0, v5, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float v0, v2, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, v1

    goto :goto_0

    :pswitch_4
    add-float v0, v5, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float v0, v6, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float v0, v2, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, v1

    goto :goto_0

    :pswitch_5
    add-float v0, v2, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float v0, v6, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float v0, v5, v4

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static a(III[F)V
    .locals 11

    const/4 v2, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v0, p0

    div-float/2addr v0, v4

    int-to-float v1, p1

    div-float/2addr v1, v4

    int-to-float v3, p2

    div-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float v6, v4, v5

    add-float v7, v4, v5

    div-float/2addr v7, v9

    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    move v1, v2

    move v0, v2

    :goto_0
    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v0, v3

    rem-float/2addr v0, v10

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    add-float/2addr v0, v10

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v10}, Landroid/support/v4/a/a;->e(FF)F

    move-result v0

    aput v0, p3, v2

    const/4 v0, 0x1

    invoke-static {v1, v8}, Landroid/support/v4/a/a;->e(FF)F

    move-result v1

    aput v1, p3, v0

    const/4 v0, 0x2

    invoke-static {v7, v8}, Landroid/support/v4/a/a;->e(FF)F

    move-result v1

    aput v1, p3, v0

    return-void

    :cond_1
    cmpl-float v5, v4, v0

    if-nez v5, :cond_2

    sub-float v0, v1, v3

    div-float/2addr v0, v6

    const/high16 v1, 0x40c00000    # 6.0f

    rem-float/2addr v0, v1

    :goto_1
    mul-float v1, v9, v7

    sub-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v8, v1

    div-float v1, v6, v1

    goto :goto_0

    :cond_2
    cmpl-float v4, v4, v1

    if-nez v4, :cond_3

    sub-float v0, v3, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v9

    goto :goto_1

    :cond_3
    sub-float/2addr v0, v1

    div-float/2addr v0, v6

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method public static af(I)D
    .locals 14

    sget-object v0, Landroid/support/v4/a/a;->BD:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [D

    sget-object v1, Landroid/support/v4/a/a;->BD:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-double v2, v1

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v6

    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v1, v2, v6

    if-gez v1, :cond_2

    const-wide v6, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v2, v6

    move-wide v6, v2

    :goto_0
    int-to-double v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    const-wide v4, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v2, v4

    move-wide v4, v2

    :goto_1
    int-to-double v2, v8

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v8

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v1, v2, v8

    if-gez v1, :cond_4

    const-wide v8, 0x4029d70a3d70a3d7L    # 12.92

    div-double/2addr v2, v8

    :goto_2
    const/4 v1, 0x0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide v10, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v10, v6

    const-wide v12, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    const-wide v12, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v0, v1

    const/4 v1, 0x1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide v10, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v10, v6

    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    const-wide v12, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v0, v1

    const/4 v1, 0x2

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide v10, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v6, v10

    const-wide v10, 0x3fbe83e425aee632L    # 0.1192

    mul-double/2addr v4, v10

    add-double/2addr v4, v6

    const-wide v6, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, v8

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_2
    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v2, v6

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v2, v6

    const-wide v6, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-wide v6, v2

    goto/16 :goto_0

    :cond_3
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v2, v4

    const-wide v4, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v2, v4

    const-wide v4, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-wide v4, v2

    goto/16 :goto_1

    :cond_4
    const-wide v8, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v2, v8

    const-wide v8, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v2, v8

    const-wide v8, 0x4003333333333333L    # 2.4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    goto/16 :goto_2
.end method

.method private static ag(I)I
    .locals 1

    const/16 v0, 0xff

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-le p0, v0, :cond_0

    move p0, v0

    goto :goto_0
.end method

.method public static c(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static e(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpl-float v0, p0, p1

    if-gtz v0, :cond_0

    move p1, p0

    goto :goto_0
.end method

.method public static l(II)I
    .locals 7

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/a/a;->a(IIIII)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/a/a;->a(IIIII)I

    move-result v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v5, v1, v6, v0, v2}, Landroid/support/v4/a/a;->a(IIIII)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static m(II)D
    .locals 6

    const/16 v1, 0xff

    const-wide v4, 0x3fa999999999999aL    # 0.05

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "background can not be translucent: #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    invoke-static {p0, p1}, Landroid/support/v4/a/a;->l(II)I

    move-result p0

    :cond_1
    invoke-static {p0}, Landroid/support/v4/a/a;->af(I)D

    move-result-wide v0

    add-double/2addr v0, v4

    invoke-static {p1}, Landroid/support/v4/a/a;->af(I)D

    move-result-wide v2

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    div-double v0, v4, v0

    return-wide v0
.end method

.method public static n(II)I
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
