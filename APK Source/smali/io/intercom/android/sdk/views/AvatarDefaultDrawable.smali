.class public Lio/intercom/android/sdk/views/AvatarDefaultDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final avatarBackground:Landroid/graphics/Paint;

.field private final companyIcon:Landroid/graphics/drawable/Drawable;

.field private final roundRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->roundRect:Landroid/graphics/RectF;

    sget v0, Lio/intercom/android/sdk/R$drawable;->intercom_default_avatar_icon:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->companyIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->avatarBackground:Landroid/graphics/Paint;

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->avatarBackground:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->avatarBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->avatarBackground:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->avatarBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->companyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->companyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->companyIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->companyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->companyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AvatarDefaultDrawable;->companyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
