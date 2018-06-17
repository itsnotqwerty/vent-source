.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$b;,
        Landroid/support/design/widget/CollapsingToolbarLayout$a;
    }
.end annotation


# instance fields
.field iK:Landroid/support/v4/view/z;

.field private kX:Z

.field private kY:I

.field private kZ:Landroid/support/v7/widget/Toolbar;

.field private la:Landroid/view/View;

.field private lb:Landroid/view/View;

.field private lc:I

.field private ld:I

.field private le:I

.field private lf:I

.field private final lg:Landroid/graphics/Rect;

.field final lh:Landroid/support/design/widget/e;

.field private li:Z

.field private lj:Z

.field private lk:Landroid/graphics/drawable/Drawable;

.field ll:Landroid/graphics/drawable/Drawable;

.field private lm:I

.field private ln:Z

.field private lo:Landroid/animation/ValueAnimator;

.field private lp:J

.field private lq:I

.field private lr:Landroid/support/design/widget/AppBarLayout$b;

.field ls:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kX:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lg:Landroid/graphics/Rect;

    iput v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lq:I

    invoke-static {p1}, Landroid/support/design/widget/p;->d(Landroid/content/Context;)V

    new-instance v0, Landroid/support/design/widget/e;

    invoke-direct {v0, p0}, Landroid/support/design/widget/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    sget-object v1, Landroid/support/design/widget/a;->iE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->a(Landroid/view/animation/Interpolator;)V

    sget-object v0, Landroid/support/design/a$k;->CollapsingToolbarLayout:[I

    sget v1, Landroid/support/design/a$j;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    sget v2, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v3, 0x800053

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/e;->z(I)V

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    sget v2, Landroid/support/design/a$k;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v3, 0x800013

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/e;->A(I)V

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMargin:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lf:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->le:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ld:I

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lc:I

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lc:I

    :cond_0
    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->le:I

    :cond_1
    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ld:I

    :cond_2
    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lf:I

    :cond_3
    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    sget v2, Landroid/support/design/a$j;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/e;->C(I)V

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    sget v2, Landroid/support/v7/a/a$i;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v1, v2}, Landroid/support/design/widget/e;->B(I)V

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    sget v2, Landroid/support/design/a$k;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/e;->C(I)V

    :cond_4
    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    sget v2, Landroid/support/design/a$k;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/e;->B(I)V

    :cond_5
    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_scrimVisibleHeightTrigger:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lq:I

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_scrimAnimationDuration:I

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lp:J

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    sget v1, Landroid/support/design/a$k;->CollapsingToolbarLayout_toolbarId:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kY:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/n;)V

    return-void
.end method

.method private bv()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kX:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    iput-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kY:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_1
    if-eq v1, p0, :cond_2

    if-eqz v1, :cond_2

    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_2
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v4

    move v1, v3

    :goto_2
    if-ge v1, v4, :cond_6

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v5, :cond_5

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    :goto_3
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    :cond_4
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->bw()V

    iput-boolean v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kX:Z

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method private bw()V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method private static j(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method static k(Landroid/view/View;)Landroid/support/design/widget/r;
    .locals 2

    sget v0, Landroid/support/design/a$f;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/r;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/r;

    invoke-direct {v0, p0}, Landroid/support/design/widget/r;-><init>(Landroid/view/View;)V

    sget v1, Landroid/support/design/a$f;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method final bx()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ls:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->bv()V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lj:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v0}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ls:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ls:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    if-ne v0, p0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    if-ne p2, v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    if-ne p2, v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/e;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    invoke-direct {v0}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>()V

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    invoke-direct {v0}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget v0, v0, Landroid/support/design/widget/e;->kn:I

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0}, Landroid/support/design/widget/e;->bq()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget v0, v0, Landroid/support/design/widget/e;->km:I

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lf:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->le:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lc:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ld:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget-object v1, v0, Landroid/support/design/widget/e;->kz:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/design/widget/e;->kz:Landroid/graphics/Typeface;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method getScrimAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lp:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lq:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lq:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v0}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v0

    :goto_1
    invoke-static {p0}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->kB:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l(Landroid/view/View;)I
    .locals 3

    invoke-static {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->k(Landroid/view/View;)Landroid/support/design/widget/r;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    iget v1, v1, Landroid/support/design/widget/r;->qf:I

    sub-int v1, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout$a;->bottomMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v0, v1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->e(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lr:Landroid/support/design/widget/AppBarLayout$b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$b;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$b;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lr:Landroid/support/design/widget/AppBarLayout$b;

    :cond_0
    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lr:Landroid/support/design/widget/AppBarLayout$b;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    invoke-static {p0}, Landroid/support/v4/view/r;->W(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lr:Landroid/support/design/widget/AppBarLayout$b;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lr:Landroid/support/design/widget/AppBarLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$b;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v0}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v4

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v3, :cond_0

    invoke-static {v5, v3}, Landroid/support/v4/view/r;->m(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->ah(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lj:Z

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lj:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->l(Landroid/view/View;)I

    move-result v3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lb:Landroid/view/View;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lg:Landroid/graphics/Rect;

    invoke-static {p0, v0, v4}, Landroid/support/v4/widget/s;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lg:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v0

    :goto_4
    add-int/2addr v5, v0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lg:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iget-object v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v6}, Landroid/support/v7/widget/Toolbar;->getTitleMarginTop()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lg:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v0

    :goto_5
    add-int/2addr v0, v7

    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lg:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v7

    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v7}, Landroid/support/v7/widget/Toolbar;->getTitleMarginBottom()I

    move-result v7

    sub-int/2addr v3, v7

    invoke-virtual {v4, v5, v6, v0, v3}, Landroid/support/design/widget/e;->b(IIII)V

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    if-eqz v1, :cond_8

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->le:I

    :goto_6
    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lg:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ld:I

    add-int/2addr v4, v5

    sub-int v5, p4, p2

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lc:I

    :goto_7
    sub-int v1, v5, v1

    sub-int v5, p5, p3

    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lf:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/support/design/widget/e;->a(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0}, Landroid/support/design/widget/e;->bt()V

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v0

    :goto_8
    if-ge v2, v0, :cond_a

    invoke-virtual {p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->k(Landroid/view/View;)Landroid/support/design/widget/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/r;->cc()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v1, v2

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitleMarginStart()I

    move-result v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitleMarginEnd()I

    move-result v0

    goto :goto_5

    :cond_8
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lc:I

    goto :goto_6

    :cond_9
    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->le:I

    goto :goto_7

    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->kB:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    if-ne v0, p0, :cond_e

    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->j(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    :cond_d
    :goto_9
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->bx()V

    return-void

    :cond_e
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->la:Landroid/view/View;

    invoke-static {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->j(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->bv()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v0}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v0

    :goto_0
    if-nez v1, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->A(I)V

    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->B(I)V

    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget-object v1, v0, Landroid/support/design/widget/e;->ky:Landroid/graphics/Typeface;

    invoke-static {v1, p1}, Landroid/support/design/widget/e;->a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, Landroid/support/design/widget/e;->ky:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/support/design/widget/e;->bt()V

    :cond_0
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->z(I)V

    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lf:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->le:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lc:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ld:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->C(I)V

    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->c(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    iget-object v1, v0, Landroid/support/design/widget/e;->kz:Landroid/graphics/Typeface;

    invoke-static {v1, p1}, Landroid/support/design/widget/e;->a(Landroid/graphics/Typeface;Landroid/graphics/Typeface;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, Landroid/support/design/widget/e;->kz:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/support/design/widget/e;->bt()V

    :cond_0
    return-void
.end method

.method setScrimAlpha(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->kZ:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_0
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 1

    iput-wide p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lp:J

    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lq:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lq:I

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->bx()V

    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 6

    const/16 v3, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-boolean v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ln:Z

    if-eq v4, p1, :cond_1

    if-eqz v0, :cond_6

    if-eqz p1, :cond_3

    move v0, v3

    :goto_1
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->bv()V

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_5

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lp:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    if-le v0, v3, :cond_4

    sget-object v3, Landroid/support/design/widget/a;->iC:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v4, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    :goto_3
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    aput v5, v4, v2

    aput v0, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_4
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ln:Z

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    sget-object v3, Landroid/support/design/widget/a;->iD:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lo:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    :goto_5
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_4

    :cond_7
    move v3, v2

    goto :goto_5
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/a/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lm:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/r;->I(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->li:Z

    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->bw()V

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->lk:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->ll:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
