.class abstract Landroid/support/design/widget/j;
.super Landroid/support/design/widget/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/q",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final ng:Landroid/graphics/Rect;

.field final nh:Landroid/graphics/Rect;

.field ni:I

.field nj:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/q;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/j;->ng:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/j;->nh:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/j;->ni:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/j;->ng:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/j;->nh:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/j;->ni:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    const/4 v4, -0x1

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v4, :cond_0

    const/4 v0, -0x2

    if-ne v1, v0, :cond_4

    :cond_0
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->n(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/j;->f(Ljava/util/List;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, v6}, Landroid/support/v4/view/r;->e(Landroid/view/View;Z)V

    invoke-static {p2}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v2}, Landroid/support/design/widget/j;->f(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    if-ne v1, v4, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    :goto_1
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    move v0, v6

    goto :goto_0

    :cond_3
    const/high16 v0, -0x80000000

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->n(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/j;->f(Ljava/util/List;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v3, p0, Landroid/support/design/widget/j;->ng:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v0, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int/2addr v5, v7

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getLastWindowInsets()Landroid/support/v4/view/z;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/support/v4/view/z;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/support/v4/view/z;->getSystemWindowInsetRight()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    :cond_0
    iget-object v4, p0, Landroid/support/design/widget/j;->nh:Landroid/graphics/Rect;

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->gravity:I

    if-nez v0, :cond_1

    const v0, 0x800033

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/e;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {p0, v6}, Landroid/support/design/widget/j;->p(Landroid/view/View;)I

    move-result v0

    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v3, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v5, v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/j;->ni:I

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/q;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/j;->ni:I

    goto :goto_0
.end method

.method e(Landroid/view/View;)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method f(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method abstract f(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final p(Landroid/view/View;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/design/widget/j;->nj:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/j;->e(Landroid/view/View;)F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/j;->nj:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Landroid/support/design/widget/j;->nj:I

    invoke-static {v1, v0, v2}, Landroid/support/v4/c/a;->b(III)I

    move-result v0

    goto :goto_0
.end method
