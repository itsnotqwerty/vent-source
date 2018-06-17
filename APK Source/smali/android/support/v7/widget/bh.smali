.class public final Landroid/support/v7/widget/bh;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/bh$a;,
        Landroid/support/v7/widget/bh$b;
    }
.end annotation


# static fields
.field private static final agK:Landroid/view/animation/Interpolator;


# instance fields
.field Tg:I

.field agD:Ljava/lang/Runnable;

.field agE:Landroid/support/v7/widget/at;

.field private agF:Landroid/widget/Spinner;

.field private agG:Z

.field agH:I

.field agI:I

.field private agJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/bh;->agK:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private it()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iu()Z
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/bh;->it()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agE:Landroid/support/v7/widget/at;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/bh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/view/a;->k(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v1

    iget-object v0, v1, Landroid/support/v7/view/a;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/a/a$j;->ActionBar:[I

    sget v4, Landroid/support/v7/a/a$a;->actionBarStyle:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v0, Landroid/support/v7/a/a$j;->ActionBar_height:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iget-object v3, v1, Landroid/support/v7/view/a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v7/view/a;->eO()Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Landroid/support/v7/a/a$d;->abc_action_bar_stacked_max_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->setContentHeight(I)V

    iget-object v0, v1, Landroid/support/v7/view/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$d;->abc_action_bar_stacked_tab_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/bh;->agI:I

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    const/4 v8, -0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v7, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->setFillViewport(Z)V

    iget-object v4, p0, Landroid/support/v7/widget/bh;->agE:Landroid/support/v7/widget/at;

    invoke-virtual {v4}, Landroid/support/v7/widget/at;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_8

    if-eq v3, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_8

    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/widget/bh;->agH:I

    :goto_1
    iget v3, p0, Landroid/support/v7/widget/bh;->agH:I

    iget v4, p0, Landroid/support/v7/widget/bh;->agI:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/bh;->agH:I

    :goto_2
    iget v3, p0, Landroid/support/v7/widget/bh;->Tg:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    if-nez v0, :cond_9

    iget-boolean v4, p0, Landroid/support/v7/widget/bh;->agG:Z

    if-eqz v4, :cond_9

    :goto_3
    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/support/v7/widget/bh;->agE:Landroid/support/v7/widget/at;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/at;->measure(II)V

    iget-object v1, p0, Landroid/support/v7/widget/bh;->agE:Landroid/support/v7/widget/at;

    invoke-virtual {v1}, Landroid/support/v7/widget/at;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_a

    invoke-direct {p0}, Landroid/support/v7/widget/bh;->it()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    new-instance v1, Landroid/support/v7/widget/z;

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/a/a$a;->actionDropDownStyle:I

    invoke-direct {v1, v2, v4, v5}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/support/v7/widget/at$a;

    invoke-direct {v2, v8, v6}, Landroid/support/v7/widget/at$a;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iput-object v1, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/bh;->agE:Landroid/support/v7/widget/at;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/bh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    new-instance v2, Landroid/support/v7/widget/bh$a;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/bh$a;-><init>(Landroid/support/v7/widget/bh;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/bh;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    iget v2, p0, Landroid/support/v7/widget/bh;->agJ:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_4
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->getMeasuredWidth()I

    move-result v2

    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_5

    iget v0, p0, Landroid/support/v7/widget/bh;->agJ:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->setTabSelected(I)V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/widget/bh;->agH:I

    goto/16 :goto_1

    :cond_8
    iput v6, p0, Landroid/support/v7/widget/bh;->agH:I

    goto/16 :goto_2

    :cond_9
    move v1, v2

    goto/16 :goto_3

    :cond_a
    invoke-direct {p0}, Landroid/support/v7/widget/bh;->iu()Z

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Landroid/support/v7/widget/bh;->iu()Z

    goto :goto_4
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final setAllowCollapse(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bh;->agG:Z

    return-void
.end method

.method public final setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/bh;->Tg:I

    invoke-virtual {p0}, Landroid/support/v7/widget/bh;->requestLayout()V

    return-void
.end method

.method public final setTabSelected(I)V
    .locals 5

    const/4 v1, 0x0

    iput p1, p0, Landroid/support/v7/widget/bh;->agJ:I

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agE:Landroid/support/v7/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/widget/at;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agE:Landroid/support/v7/widget/at;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agE:Landroid/support/v7/widget/at;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/at;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/bh;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v4, Landroid/support/v7/widget/bh$1;

    invoke-direct {v4, p0, v0}, Landroid/support/v7/widget/bh$1;-><init>(Landroid/support/v7/widget/bh;Landroid/view/View;)V

    iput-object v4, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bh;->post(Ljava/lang/Runnable;)Z

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bh;->agF:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_4
    return-void
.end method
