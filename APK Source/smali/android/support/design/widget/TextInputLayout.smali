.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/support/v7/widget/bx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$b;,
        Landroid/support/design/widget/TextInputLayout$a;
    }
.end annotation


# instance fields
.field private final lg:Landroid/graphics/Rect;

.field final lh:Landroid/support/design/widget/e;

.field private nO:Landroid/animation/ValueAnimator;

.field private pA:Landroid/widget/TextView;

.field private pB:I

.field private pC:I

.field private pD:I

.field private pE:Z

.field private pF:Z

.field private pG:Landroid/graphics/drawable/Drawable;

.field private pH:Ljava/lang/CharSequence;

.field private pI:Landroid/support/design/widget/CheckableImageButton;

.field private pJ:Z

.field private pK:Landroid/graphics/drawable/Drawable;

.field private pL:Landroid/graphics/drawable/Drawable;

.field private pM:Landroid/content/res/ColorStateList;

.field private pN:Z

.field private pO:Landroid/graphics/PorterDuff$Mode;

.field private pP:Z

.field private pQ:Landroid/content/res/ColorStateList;

.field private pR:Landroid/content/res/ColorStateList;

.field private pS:Z

.field private pT:Z

.field private pU:Z

.field private pV:Z

.field private pW:Z

.field private final pl:Landroid/widget/FrameLayout;

.field pm:Landroid/widget/EditText;

.field private pn:Ljava/lang/CharSequence;

.field private po:Z

.field private pp:Ljava/lang/CharSequence;

.field private pq:Landroid/graphics/Paint;

.field private pr:Landroid/widget/LinearLayout;

.field private ps:I

.field private pt:Landroid/graphics/Typeface;

.field private pu:Z

.field pv:Landroid/widget/TextView;

.field private pw:I

.field private px:Z

.field private py:Ljava/lang/CharSequence;

.field pz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lg:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/design/widget/e;

    invoke-direct {v0, p0}, Landroid/support/design/widget/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-static {p1}, Landroid/support/design/widget/p;->d(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0, v5}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    sget-object v1, Landroid/support/design/widget/a;->iB:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->a(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, v0, Landroid/support/design/widget/e;->kN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0}, Landroid/support/design/widget/e;->bt()V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->A(I)V

    sget-object v0, Landroid/support/design/a$k;->TextInputLayout:[I

    sget v1, Landroid/support/design/a$j;->Widget_Design_TextInputLayout:I

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;

    move-result-object v0

    sget v1, Landroid/support/design/a$k;->TextInputLayout_hintEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    sget v1, Landroid/support/design/a$k;->TextInputLayout_android_hint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    sget v1, Landroid/support/design/a$k;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->pT:Z

    sget v1, Landroid/support/design/a$k;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/support/design/a$k;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pR:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pQ:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Landroid/support/design/a$k;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v1

    if-eq v1, v6, :cond_1

    sget v1, Landroid/support/design/a$k;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    :cond_1
    sget v1, Landroid/support/design/a$k;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TextInputLayout;->pw:I

    sget v1, Landroid/support/design/a$k;->TextInputLayout_errorEnabled:I

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v1

    sget v2, Landroid/support/design/a$k;->TextInputLayout_counterEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v2

    sget v3, Landroid/support/design/a$k;->TextInputLayout_counterMaxLength:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    sget v3, Landroid/support/design/a$k;->TextInputLayout_counterTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->pC:I

    sget v3, Landroid/support/design/a$k;->TextInputLayout_counterOverflowTextAppearance:I

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TextInputLayout;->pD:I

    sget v3, Landroid/support/design/a$k;->TextInputLayout_passwordToggleEnabled:I

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/bo;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->pF:Z

    sget v3, Landroid/support/design/a$k;->TextInputLayout_passwordToggleDrawable:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    sget v3, Landroid/support/design/a$k;->TextInputLayout_passwordToggleContentDescription:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pH:Ljava/lang/CharSequence;

    sget v3, Landroid/support/design/a$k;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Landroid/support/design/widget/TextInputLayout;->pN:Z

    sget v3, Landroid/support/design/a$k;->TextInputLayout_passwordToggleTint:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pM:Landroid/content/res/ColorStateList;

    :cond_2
    sget v3, Landroid/support/design/a$k;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v5, p0, Landroid/support/design/widget/TextInputLayout;->pP:Z

    sget v3, Landroid/support/design/a$k;->TextInputLayout_passwordToggleTintMode:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v3

    invoke-static {v3}, Landroid/support/design/widget/s;->S(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pO:Landroid/graphics/PorterDuff$Mode;

    :cond_3
    iget-object v0, v0, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cb()V

    invoke-static {p0}, Landroid/support/v4/view/r;->J(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0, v5}, Landroid/support/v4/view/r;->l(Landroid/view/View;I)V

    :cond_4
    new-instance v0, Landroid/support/design/widget/TextInputLayout$b;

    invoke-direct {v0, p0}, Landroid/support/design/widget/TextInputLayout$b;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->ps:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->ps:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/support/v4/widget/Space;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bX()V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->ps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->ps:I

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pW:Z

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/TextInputLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->j(Z)V

    return-void
.end method

.method private bW()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pq:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pq:Landroid/graphics/Paint;

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pq:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v2}, Landroid/support/design/widget/e;->bq()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pq:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget v2, v2, Landroid/support/design/widget/e;->kp:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pq:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    :goto_0
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private bX()V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/r;->M(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {v3}, Landroid/support/v4/view/r;->N(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/r;->c(Landroid/view/View;IIII)V

    return-void
.end method

.method private bY()V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2

    const/16 v2, 0x16

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->pU:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/graphics/drawable/DrawableContainer;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/support/design/widget/f;->a(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pU:Z

    :cond_3
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pU:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pU:Z

    :cond_4
    invoke-static {v1}, Landroid/support/v7/widget/am;->m(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->px:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/m;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->pE:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/m;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_6
    invoke-static {v0}, Landroid/support/v4/a/a/a;->e(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method private bZ()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pF:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ca()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pJ:Z

    if-eqz v0, :cond_7

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Landroid/support/design/a$h;->design_text_input_password_icon:I

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CheckableImageButton;

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pH:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    new-instance v3, Landroid/support/design/widget/TextInputLayout$4;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-static {v3}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMinimumHeight(I)V

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->pJ:Z

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pK:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pK:Landroid/graphics/drawable/Drawable;

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pK:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v3}, Landroid/support/design/widget/CheckableImageButton;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/o;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v5

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->pK:Landroid/graphics/drawable/Drawable;

    if-eq v3, v4, :cond_6

    aget-object v3, v0, v5

    iput-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pL:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    aget-object v2, v0, v2

    aget-object v1, v0, v1

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->pK:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    invoke-static {v3, v2, v1, v4, v0}, Landroid/support/v4/widget/o;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/design/widget/CheckableImageButton;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CheckableImageButton;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pK:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/support/v4/widget/o;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v5

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->pK:Landroid/graphics/drawable/Drawable;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    aget-object v2, v0, v2

    aget-object v1, v0, v1

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->pL:Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v6

    invoke-static {v3, v2, v1, v4, v0}, Landroid/support/v4/widget/o;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pK:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method private ca()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cb()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pN:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pP:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pM:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pO:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private i(F)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget v0, v0, Landroid/support/design/widget/e;->ki:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/design/widget/a;->iA:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$5;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$5;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget v3, v3, Landroid/support/design/widget/e;->ki:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private j(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pF:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ca()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->pJ:Z

    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->pJ:Z

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CheckableImageButton;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v1}, Landroid/support/design/widget/CheckableImageButton;->jumpDrawablesToCurrentState()V

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->pJ:Z

    goto :goto_0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Landroid/support/design/widget/TextInputEditText;

    if-nez v0, :cond_1

    const-string v0, "TextInputLayout"

    const-string v1, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->ca()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/e;->a(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    iget v2, v0, Landroid/support/design/widget/e;->ko:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    iput v1, v0, Landroid/support/design/widget/e;->ko:F

    invoke-virtual {v0}, Landroid/support/design/widget/e;->bt()V

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getGravity()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Landroid/support/design/widget/e;->A(I)V

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/e;->z(I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pQ:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pQ:Landroid/content/res/ColorStateList;

    :cond_4
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pp:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pn:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->R(I)V

    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pr:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bX()V

    :cond_7
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bZ()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->b(ZZ)V

    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->pp:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final R(I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->pE:Z

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->pB:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->pE:Z

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pE:Z

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v2, v2}, Landroid/support/design/widget/TextInputLayout;->b(ZZ)V

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bY()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->pB:I

    if-le p1, v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pE:Z

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pE:Z

    if-eq v3, v0, :cond_2

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pE:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->pD:I

    :goto_2
    invoke-static {v4, v0}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;I)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/a$i;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Landroid/support/design/widget/TextInputLayout;->pB:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->pC:I

    goto :goto_2
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pl:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bW()V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method final b(ZZ)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v5

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v4

    array-length v6, v4

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_8

    aget v7, v4, v3

    const v8, 0x101009c

    if-ne v7, v8, :cond_7

    move v3, v1

    :goto_2
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v1

    :goto_3
    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->pQ:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget-object v7, p0, Landroid/support/design/widget/TextInputLayout;->pQ:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/support/design/widget/e;->c(Landroid/content/res/ColorStateList;)V

    :cond_0
    if-eqz v5, :cond_a

    iget-boolean v6, p0, Landroid/support/design/widget/TextInputLayout;->pE:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/e;->b(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_4
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez v3, :cond_2

    if-eqz v4, :cond_d

    :cond_2
    if-nez p2, :cond_3

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pS:Z

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pT:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, v10}, Landroid/support/design/widget/TextInputLayout;->i(F)V

    :goto_5
    iput-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->pS:Z

    :cond_5
    :goto_6
    return-void

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_2

    :cond_9
    move v4, v2

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_b

    if-eqz v3, :cond_b

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->pR:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->pR:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/e;->b(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_b
    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->pQ:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget-object v6, p0, Landroid/support/design/widget/TextInputLayout;->pQ:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/e;->b(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, v10}, Landroid/support/design/widget/e;->b(F)V

    goto :goto_5

    :cond_d
    if-nez p2, :cond_e

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pS:Z

    if-nez v0, :cond_5

    :cond_e
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->nO:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pT:Z

    if-eqz v0, :cond_10

    invoke-direct {p0, v9}, Landroid/support/design/widget/TextInputLayout;->i(F)V

    :goto_7
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->pS:Z

    goto :goto_6

    :cond_10
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, v9}, Landroid/support/design/widget/e;->b(F)V

    goto :goto_7
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pn:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pW:Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pW:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->pV:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pV:Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v2

    invoke-static {p0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->b(ZZ)V

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bY()V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/e;->setState([I)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->invalidate()V

    :cond_1
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->pV:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public getCounterMaxLength()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->pB:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->py:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pp:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pH:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lg:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {p0, v1, v0}, Landroid/support/v4/widget/s;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/support/design/widget/e;->a(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/design/widget/e;->b(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0}, Landroid/support/design/widget/e;->bt()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bZ()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/design/widget/TextInputLayout$a;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/design/widget/TextInputLayout$a;

    iget-object v0, p1, Landroid/support/v4/view/a;->EV:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Landroid/support/design/widget/TextInputLayout$a;->pZ:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-boolean v0, p1, Landroid/support/design/widget/TextInputLayout$a;->qa:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->j(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->requestLayout()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/TextInputLayout$a;

    invoke-direct {v1, v0}, Landroid/support/design/widget/TextInputLayout$a;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->px:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/widget/TextInputLayout$a;->pZ:Ljava/lang/CharSequence;

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pJ:Z

    iput-boolean v0, v1, Landroid/support/design/widget/TextInputLayout$a;->qa:Z

    return-object v1
.end method

.method public setCounterEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pz:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_3

    new-instance v0, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    sget v1, Landroid/support/design/a$f;->textinput_counter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :try_start_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/design/widget/TextInputLayout;->pC:I

    invoke-static {v0, v1}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->R(I)V

    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->pz:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    sget v1, Landroid/support/v7/a/a$i;->TextAppearance_AppCompat_Caption:I

    invoke-static {v0, v1}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$c;->error_color_material:I

    invoke-static {v1, v2}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->R(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    goto :goto_1
.end method

.method public setCounterMaxLength(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TextInputLayout;->pB:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_1

    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->pB:I

    :goto_0
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->R(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TextInputLayout;->pB:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup;Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 8

    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->py:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Landroid/support/design/widget/TextInputLayout;->pu:Z

    if-nez v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->px:Z

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->px:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Landroid/support/design/widget/a;->iD:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_2
    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bY()V

    invoke-virtual {p0, v0, v2}, Landroid/support/design/widget/TextInputLayout;->b(ZZ)V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v3, Landroid/support/design/widget/a;->iC:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v3, p0, p1}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setErrorEnabled(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/widget/TextInputLayout;->pu:Z

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_4

    new-instance v2, Landroid/support/v7/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    sget v3, Landroid/support/design/a$f;->textinput_error:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/design/widget/TextInputLayout;->pw:I

    invoke-static {v2, v3}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const v3, -0xff01

    if-ne v2, v3, :cond_5

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    sget v2, Landroid/support/v7/a/a$i;->TextAppearance_AppCompat_Caption:I

    invoke-static {v0, v2}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/v7/a/a$c;->error_color_material:I

    invoke-static {v2, v3}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/r;->L(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;I)V

    :goto_1
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->pu:Z

    :cond_3
    return-void

    :cond_4
    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->px:Z

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bY()V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setErrorTextAppearance(I)V
    .locals 1

    iput p1, p0, Landroid/support/design/widget/TextInputLayout;->pw:I

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroid/support/v4/widget/o;->b(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->pT:Z

    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->po:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pp:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pp:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setHintInternal(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bW()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->pp:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHintTextAppearance(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->B(I)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->kr:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pR:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Landroid/support/design/widget/TextInputLayout;->b(ZZ)V

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bW()V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->pH:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleDrawable(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->pG:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pI:Landroid/support/design/widget/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPasswordVisibilityToggleEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pF:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->pF:Z

    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pJ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pm:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pJ:Z

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->bZ()V

    :cond_1
    return-void
.end method

.method public setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->pM:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pN:Z

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cb()V

    return-void
.end method

.method public setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->pO:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->pP:Z

    invoke-direct {p0}, Landroid/support/design/widget/TextInputLayout;->cb()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->pt:Landroid/graphics/Typeface;

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->lh:Landroid/support/design/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/e;->a(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pA:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->pv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method
