.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$b;,
        Landroid/support/design/widget/AppBarLayout$Behavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/i",
        "<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private iP:I

.field private iQ:Landroid/animation/ValueAnimator;

.field private iR:I

.field private iS:Z

.field private iT:F

.field private iU:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private iV:Landroid/support/design/widget/AppBarLayout$Behavior$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/i;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iR:I

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout$Behavior;)I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iP:I

    return v0
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->bc()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_4

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v6, v4

    if-gt v5, v6, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    neg-int v5, v4

    if-lt v2, v5, :cond_3

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget v6, v0, Landroid/support/design/widget/AppBarLayout$a;->jc:I

    and-int/lit8 v0, v6, 0x11

    const/16 v2, 0x11

    if-ne v0, v2, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v2, v0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v6, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->f(II)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v5}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    :goto_2
    add-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    if-ge v4, v1, :cond_7

    :goto_3
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v3}, Landroid/support/v4/c/a;->b(III)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    move v1, v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    invoke-static {v6, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->f(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v5}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    if-ge v4, v1, :cond_6

    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->bc()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->bc()I

    move-result v1

    if-ne v1, p3, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_3

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    sget-object v3, Landroid/support/design/widget/a;->iE:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_2
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    const/16 v3, 0x258

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2
.end method

.method private static a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_5

    invoke-virtual {p1, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v4, v6, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v4, v6, :cond_4

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->jc:I

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_b

    invoke-static {v3}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v4

    if-lez p3, :cond_7

    and-int/lit8 v5, v0, 0xc

    if-eqz v5, :cond_7

    neg-int v0, p2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_2
    iget-boolean v3, p1, Landroid/support/design/widget/AppBarLayout;->iM:Z

    if-eq v3, v0, :cond_9

    iput-boolean v0, p1, Landroid/support/design/widget/AppBarLayout;->iM:Z

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    move v0, v1

    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    if-nez p4, :cond_2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/h;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->lE:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->lE:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v4, p0, Landroid/support/design/widget/CoordinatorLayout;->lE:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    instance-of v6, v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v6, :cond_a

    check-cast v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    iget v0, v0, Landroid/support/design/widget/j;->nj:I

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    neg-int v0, p2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_2
.end method

.method private static f(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 10

    const/4 v2, 0x0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->bc()I

    move-result v6

    if-eqz p4, :cond_9

    if-lt v6, p4, :cond_9

    if-gt v6, p5, :cond_9

    invoke-static {p3, p4, p5}, Landroid/support/v4/c/a;->b(III)I

    move-result v3

    if-eq v6, v3, :cond_7

    iget-boolean v0, p2, Landroid/support/design/widget/AppBarLayout;->iI:Z

    if-eqz v0, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_4

    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget-object v8, v0, Landroid/support/design/widget/AppBarLayout$a;->jd:Landroid/view/animation/Interpolator;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v4, v9, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v4, v9, :cond_3

    if-eqz v8, :cond_4

    iget v1, v0, Landroid/support/design/widget/AppBarLayout$a;->jc:I

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v9, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    add-int/2addr v5, v9

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    invoke-static {v7}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    :goto_1
    invoke-static {v7}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    if-lez v0, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v4, v1

    int-to-float v4, v0

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-interface {v8, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/2addr v0, v1

    :goto_2
    invoke-super {p0, v0}, Landroid/support/design/widget/i;->r(I)Z

    move-result v1

    sub-int v5, v6, v3

    sub-int v0, v3, v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iP:I

    if-nez v1, :cond_6

    iget-boolean v0, p2, Landroid/support/design/widget/AppBarLayout;->iI:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/support/design/widget/CoordinatorLayout;->lC:Landroid/support/v4/widget/h;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/h;->I(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move v4, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v0, p2}, Landroid/support/design/widget/CoordinatorLayout$b;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    invoke-super {p0}, Landroid/support/design/widget/i;->be()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->q(I)V

    if-ge v3, v6, :cond_8

    const/4 v0, -0x1

    :goto_4
    invoke-static {p1, p2, v3, v0, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    move v2, v5

    :cond_7
    :goto_5
    return v2

    :cond_8
    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    iput v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iP:I

    goto :goto_5

    :cond_a
    move v0, v2

    goto/16 :goto_1
.end method

.method final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 1

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$b;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$b;

    iget-object v0, p3, Landroid/support/v4/view/a;->EV:Landroid/os/Parcelable;

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$b;->iZ:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iR:I

    iget v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$b;->ja:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iT:F

    iget-boolean v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$b;->jb:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iS:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iR:I

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    if-nez p4, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iU:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I[II)V
    .locals 7

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz p4, :cond_0

    if-gez p4, :cond_1

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    :goto_0
    if-eq v4, v5, :cond_0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p5, v6

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v4

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iR:I

    if-ltz v0, :cond_2

    and-int/lit8 v0, v4, 0x8

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iR:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v4, v4

    iget-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iS:Z

    if-eqz v5, :cond_1

    invoke-static {v0}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    :cond_0
    :goto_1
    iput v2, p2, Landroid/support/design/widget/AppBarLayout;->iJ:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iR:I

    invoke-super {p0}, Landroid/support/design/widget/i;->be()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    neg-int v4, v4

    invoke-static {v0, v4, v2}, Landroid/support/v4/c/a;->b(III)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/design/widget/i;->r(I)Z

    invoke-super {p0}, Landroid/support/design/widget/i;->be()I

    move-result v0

    invoke-static {p1, p2, v0, v2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    invoke-super {p0}, Landroid/support/design/widget/i;->be()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->q(I)V

    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iT:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v4

    neg-int v4, v4

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, p2, v4}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    :cond_5
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 9

    const/4 v3, 0x0

    move-object v1, p2

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->height:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-super/range {v2 .. v8}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iU:Ljava/lang/ref/WeakReference;

    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method final synthetic b(Landroid/view/View;)I
    .locals 1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public final synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 8

    const/4 v0, 0x0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/i;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0}, Landroid/support/design/widget/i;->be()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v7, v1, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    if-ltz v7, :cond_1

    new-instance v1, Landroid/support/design/widget/AppBarLayout$Behavior$b;

    invoke-direct {v1, v2}, Landroid/support/design/widget/AppBarLayout$Behavior$b;-><init>(Landroid/os/Parcelable;)V

    iput v3, v1, Landroid/support/design/widget/AppBarLayout$Behavior$b;->iZ:I

    invoke-static {v6}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$b;->jb:Z

    int-to-float v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/support/design/widget/AppBarLayout$Behavior$b;->ja:F

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public final synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 6

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    if-gez p3, :cond_0

    invoke-virtual {v2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    :cond_0
    return-void
.end method

.method final bc()I
    .locals 2

    invoke-super {p0}, Landroid/support/design/widget/i;->be()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iP:I

    add-int/2addr v0, v1

    return v0
.end method

.method final synthetic bd()Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iV:Landroid/support/design/widget/AppBarLayout$Behavior$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iV:Landroid/support/design/widget/AppBarLayout$Behavior$a;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$Behavior$a;->bf()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iU:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->iU:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic be()I
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/i;->be()I

    move-result v0

    return v0
.end method

.method final synthetic c(Landroid/view/View;)I
    .locals 1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final bridge synthetic r(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/design/widget/i;->r(I)Z

    move-result v0

    return v0
.end method
