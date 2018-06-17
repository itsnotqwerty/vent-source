.class public final Landroid/support/constraint/f;
.super Landroid/view/View;


# instance fields
.field dF:I

.field dG:Landroid/view/View;

.field dH:I


# virtual methods
.method public final getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/f;->dG:Landroid/view/View;

    return-object v0
.end method

.method public final getEmptyVisibility()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/f;->dH:I

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v1, 0xdf

    const/16 v2, 0xd2

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/support/constraint/f;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v1, v1}, Landroid/graphics/Canvas;->drawRGB(III)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v4, "?"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v7, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v1, v2, v1

    invoke-virtual {p1, v4, v3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final setContentId(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/constraint/f;->dF:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/constraint/f;->dG:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/constraint/f;->dG:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/constraint/f;->dG:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    iput-boolean v1, v0, Landroid/support/constraint/ConstraintLayout$a;->cJ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/f;->dG:Landroid/view/View;

    :cond_2
    iput p1, p0, Landroid/support/constraint/f;->dF:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setEmptyVisibility(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/f;->dH:I

    return-void
.end method
