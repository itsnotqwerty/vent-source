.class public Lio/intercom/android/sdk/views/AvatarInitialsDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final avatarBackground:Landroid/graphics/Paint;

.field private final text:Ljava/lang/String;

.field private final textBounds:Landroid/graphics/Rect;

.field private final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->text:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->avatarBackground:Landroid/graphics/Paint;

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->avatarBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->avatarBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->avatarBackground:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->text:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->avatarBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->text:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarInitialsDrawable;->avatarBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
