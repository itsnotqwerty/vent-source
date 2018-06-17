.class public Landroid/support/design/internal/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/support/design/widget/b$b;


# instance fields
.field private by:I

.field private ix:Landroid/widget/TextView;

.field private iy:Landroid/widget/Button;

.field private iz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/SnackbarContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/support/design/a$k;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/design/a$k;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/SnackbarContentLayout;->by:I

    sget v1, Landroid/support/design/a$k;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/SnackbarContentLayout;->iz:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(III)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/internal/SnackbarContentLayout;->getOrientation()I

    move-result v2

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/design/internal/SnackbarContentLayout;->setOrientation(I)V

    move v0, v1

    :cond_0
    iget-object v2, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    if-ne v2, p2, :cond_1

    iget-object v2, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    if-eq v2, p3, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/r;->Z(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/support/v4/view/r;->M(Landroid/view/View;)I

    move-result v2

    invoke-static {v0}, Landroid/support/v4/view/r;->N(Landroid/view/View;)I

    move-result v3

    invoke-static {v0, v2, p2, v3, p3}, Landroid/support/v4/view/r;->c(Landroid/view/View;IIII)V

    :goto_0
    move v0, v1

    :cond_2
    return v0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v2, p2, v3, p3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final aZ()V
    .locals 8

    const-wide/16 v6, 0xb4

    const-wide/16 v4, 0x46

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final ba()V
    .locals 8

    const-wide/16 v6, 0xb4

    const-wide/16 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public getActionView()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Landroid/support/design/a$f;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    sget v0, Landroid/support/design/a$f;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->by:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/SnackbarContentLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/design/internal/SnackbarContentLayout;->by:I

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->by:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/a$d;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/internal/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroid/support/design/a$d;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Landroid/support/design/internal/SnackbarContentLayout;->ix:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-le v4, v2, :cond_2

    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    iget v5, p0, Landroid/support/design/internal/SnackbarContentLayout;->iz:I

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/support/design/internal/SnackbarContentLayout;->iy:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/support/design/internal/SnackbarContentLayout;->iz:I

    if-le v5, v6, :cond_3

    sub-int v1, v0, v1

    invoke-direct {p0, v2, v0, v1}, Landroid/support/design/internal/SnackbarContentLayout;->a(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1
    return-void

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    :goto_2
    invoke-direct {p0, v3, v0, v0}, Landroid/support/design/internal/SnackbarContentLayout;->a(III)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_1
.end method
