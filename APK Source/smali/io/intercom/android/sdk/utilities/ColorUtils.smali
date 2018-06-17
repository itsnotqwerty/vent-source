.class public Lio/intercom/android/sdk/utilities/ColorUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static darkenColor(I)I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f4a3d71    # 0.79f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method public static lightenColor(I)I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    add-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    add-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static newGreyscaleFilter()Landroid/graphics/ColorFilter;
    .locals 2

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v1
.end method
