.class public Lio/intercom/android/sdk/views/ButtonSelector;
.super Landroid/graphics/drawable/StateListDrawable;


# instance fields
.field private final color:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput p3, p0, Lio/intercom/android/sdk/views/ButtonSelector;->color:I

    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/views/ButtonSelector;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/views/ButtonSelector;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/views/ButtonSelector;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static darken(ID)I
    .locals 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onStateChange([I)Z
    .locals 5

    const/4 v2, 0x0

    array-length v3, p1

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v2, p1, v1

    const v4, 0x10100a7

    if-eq v2, v4, :cond_0

    const v4, 0x101009c

    if-ne v2, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget v0, p0, Lio/intercom/android/sdk/views/ButtonSelector;->color:I

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v2, v3}, Lio/intercom/android/sdk/views/ButtonSelector;->darken(ID)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/views/ButtonSelector;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v0

    return v0

    :cond_3
    iget v0, p0, Lio/intercom/android/sdk/views/ButtonSelector;->color:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/views/ButtonSelector;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method
