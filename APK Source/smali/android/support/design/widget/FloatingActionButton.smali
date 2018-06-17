.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/support/design/widget/u;


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$c;
    value = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$b;,
        Landroid/support/design/widget/FloatingActionButton$Behavior;,
        Landroid/support/design/widget/FloatingActionButton$a;
    }
.end annotation


# instance fields
.field private ai:I

.field private mImageHelper:Landroid/support/v7/widget/q;

.field private mn:Landroid/content/res/ColorStateList;

.field private mo:Landroid/graphics/PorterDuff$Mode;

.field private mp:I

.field private mq:I

.field private mr:I

.field ms:I

.field private mt:I

.field mu:Z

.field final mv:Landroid/graphics/Rect;

.field private final mw:Landroid/graphics/Rect;

.field private mx:Landroid/support/design/widget/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mw:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/support/design/widget/p;->d(Landroid/content/Context;)V

    sget-object v0, Landroid/support/design/a$k;->FloatingActionButton:[I

    sget v1, Landroid/support/design/a$j;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/design/a$k;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mn:Landroid/content/res/ColorStateList;

    sget v1, Landroid/support/design/a$k;->FloatingActionButton_backgroundTintMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Landroid/support/design/widget/s;->S(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mo:Landroid/graphics/PorterDuff$Mode;

    sget v1, Landroid/support/design/a$k;->FloatingActionButton_rippleColor:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->mq:I

    sget v1, Landroid/support/design/a$k;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->ai:I

    sget v1, Landroid/support/design/a$k;->FloatingActionButton_fabCustomSize:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->mr:I

    sget v1, Landroid/support/design/a$k;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->mp:I

    sget v1, Landroid/support/design/a$k;->FloatingActionButton_elevation:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    sget v2, Landroid/support/design/a$k;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sget v3, Landroid/support/design/a$k;->FloatingActionButton_useCompatPadding:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/FloatingActionButton;->mu:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/widget/q;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/q;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/q;

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/q;->a(Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/design/a$d;->design_fab_image_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->mt:I

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->mn:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Landroid/support/design/widget/FloatingActionButton;->mo:Landroid/graphics/PorterDuff$Mode;

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->mq:I

    iget v6, p0, Landroid/support/design/widget/FloatingActionButton;->mp:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/design/widget/g;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/g;->setElevation(F)V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    iget v1, v0, Landroid/support/design/widget/g;->mL:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iput v2, v0, Landroid/support/design/widget/g;->mL:F

    iget v1, v0, Landroid/support/design/widget/g;->mK:F

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/g;->b(FF)V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/design/widget/u;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private c(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/g$c;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;)V

    goto :goto_0
.end method

.method private getImpl()Landroid/support/design/widget/g;
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mx:Landroid/support/design/widget/g;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/design/widget/h;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/h;-><init>(Landroid/support/design/widget/u;Landroid/support/design/widget/l;)V

    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mx:Landroid/support/design/widget/g;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mx:Landroid/support/design/widget/g;

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/design/widget/g;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/g;-><init>(Landroid/support/design/widget/u;Landroid/support/design/widget/l;)V

    goto :goto_0
.end method

.method private static resolveAdjustedSize(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return p0

    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method final a(Landroid/support/design/widget/FloatingActionButton$a;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/g$c;

    move-result-object v3

    iget-object v4, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v4}, Landroid/support/design/widget/u;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v2, Landroid/support/design/widget/g;->mD:I

    if-ne v4, v7, :cond_3

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v2}, Landroid/support/design/widget/g;->bK()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v7, v2, Landroid/support/design/widget/g;->mD:I

    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/u;->setAlpha(F)V

    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/u;->setScaleY(F)V

    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/u;->setScaleX(F)V

    :cond_1
    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->iD:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/g$2;

    invoke-direct {v1, v2, v3}, Landroid/support/design/widget/g$2;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v4, v2, Landroid/support/design/widget/g;->mD:I

    if-ne v4, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, v1, v1}, Landroid/support/design/widget/u;->b(IZ)V

    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/u;->setAlpha(F)V

    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/u;->setScaleY(F)V

    iget-object v0, v2, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/u;->setScaleX(F)V

    goto :goto_1
.end method

.method final b(Landroid/support/design/widget/FloatingActionButton$a;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/g$c;

    move-result-object v4

    iget-object v0, v3, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, v3, Landroid/support/design/widget/g;->mD:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, v3, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v3}, Landroid/support/design/widget/g;->bK()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v1, v3, Landroid/support/design/widget/g;->mD:I

    iget-object v0, v3, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v0}, Landroid/support/design/widget/u;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->iC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/g$1;

    invoke-direct {v1, v3, v4}, Landroid/support/design/widget/g$1;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, v3, Landroid/support/design/widget/g;->mD:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, v3, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/u;->b(IZ)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/support/design/widget/u;->drawableStateChanged()V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/g;->a([I)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mn:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mo:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompatElevation()F
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/g;->getElevation()F

    move-result v0

    return v0
.end method

.method public getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/g;->mJ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCustomSize()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mr:I

    return v0
.end method

.method public getRippleColor()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mq:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->ai:I

    return v0
.end method

.method getSizeDimension()I
    .locals 3

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->ai:I

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/FloatingActionButton;->mr:I

    if-eqz v2, :cond_0

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mr:I

    :goto_1
    return v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget v0, Landroid/support/design/a$d;->design_fab_size_normal:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1d6

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    sget v0, Landroid/support/design/a$d;->design_fab_size_mini:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->mu:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/u;->jumpDrawablesToCurrentState()V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/g;->bD()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/design/widget/u;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/g;->bG()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/design/widget/g;->mP:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/design/widget/g$3;

    invoke-direct {v1, v0}, Landroid/support/design/widget/g$3;-><init>(Landroid/support/design/widget/g;)V

    iput-object v1, v0, Landroid/support/design/widget/g;->mP:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v1}, Landroid/support/design/widget/u;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Landroid/support/design/widget/g;->mP:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/support/design/widget/u;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/g;->mP:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    invoke-virtual {v1}, Landroid/support/design/widget/u;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Landroid/support/design/widget/g;->mP:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/g;->mP:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/FloatingActionButton;->mt:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->ms:I

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/g;->bF()V

    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->resolveAdjustedSize(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/u;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mw:Landroid/graphics/Rect;

    invoke-static {p0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->mw:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 2

    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2

    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mn:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mn:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/g;->mI:Landroid/support/design/widget/c;

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/design/widget/g;->mI:Landroid/support/design/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/c;->a(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mo:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->mo:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/design/widget/g;->mG:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCompatElevation(F)V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/g;->setElevation(F)V

    return-void
.end method

.method public setCustomSize(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom size should be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mr:I

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->mImageHelper:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->setImageResource(I)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->mq:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->mq:I

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/g;->setRippleColor(I)V

    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->ai:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->ai:I

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->mu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton;->mu:Z

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/g;->bE()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/design/widget/u;->setVisibility(I)V

    return-void
.end method
