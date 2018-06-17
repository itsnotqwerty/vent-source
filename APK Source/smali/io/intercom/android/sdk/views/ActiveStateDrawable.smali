.class public Lio/intercom/android/sdk/views/ActiveStateDrawable;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final roundRect:Landroid/graphics/RectF;

.field private final stateColor:I

.field private final strokeColor:I

.field private final strokeWidth:F


# direct methods
.method public constructor <init>(IIF)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->roundRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    iput p1, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->stateColor:I

    iput p2, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->strokeColor:I

    iput p3, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->strokeWidth:F

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ActiveStateDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->roundRect:Landroid/graphics/RectF;

    iget v1, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->strokeWidth:F

    iget v2, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->strokeWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->stateColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->roundRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ActiveStateDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/ActiveStateDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ActiveStateDrawable;->invalidateSelf()V

    return-void
.end method
