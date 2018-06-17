.class public Lio/intercom/android/sdk/views/ExpandableLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;,
        Lio/intercom/android/sdk/views/ExpandableLayout$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x64L


# instance fields
.field private attachedToWindow:Z

.field private expandAnimator:Landroid/animation/ObjectAnimator;

.field private fadeAnimator:Landroid/animation/ObjectAnimator;

.field private firstLayout:Z

.field private heightMeasureSpec:I

.field private inLayout:Z

.field private widthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->firstLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->firstLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->firstLayout:Z

    return-void
.end method

.method private collapse(Landroid/view/View;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout;->checkExpandableView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collapse(), View is not expandableView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v3, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->firstLayout:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->attachedToWindow:Z

    if-eqz v3, :cond_1

    if-nez p2, :cond_2

    :cond_1
    iput-boolean v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    iput-boolean v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    iget v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iput v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-boolean v3, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    if-eqz v3, :cond_3

    iget-boolean v0, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout;->playCollapseAnimation(Landroid/view/View;)V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private expand(Landroid/view/View;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout;->checkExpandableView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expand(), View is not expandableView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v3, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->firstLayout:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->attachedToWindow:Z

    if-eqz v3, :cond_1

    if-nez p2, :cond_2

    :cond_1
    iput-boolean v1, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    iput-boolean v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    iget v3, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iput v3, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-boolean v3, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    if-nez v3, :cond_3

    iget-boolean v0, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout;->playExpandAnimation(Landroid/view/View;)V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private playCollapseAnimation(Landroid/view/View;)V
    .locals 10

    const-wide/16 v8, 0x64

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v1, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v5, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    iget v1, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->widthMeasureSpec:I

    iget v2, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->heightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lio/intercom/android/sdk/views/ExpandableLayout;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const-string v2, "height"

    new-array v3, v6, [I

    aput v1, v3, v4

    aput v4, v3, v5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lio/intercom/android/sdk/views/ExpandableLayout$4;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout$4;-><init>(Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lio/intercom/android/sdk/views/ExpandableLayout$5;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout$5;-><init>(Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lio/intercom/android/sdk/views/ExpandableLayout$6;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout$6;-><init>(Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private playExpandAnimation(Landroid/view/View;)V
    .locals 10

    const-wide/16 v8, 0x64

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v1, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v5, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    iget v1, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->widthMeasureSpec:I

    iget v2, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->heightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lio/intercom/android/sdk/views/ExpandableLayout;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v4, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    const-string v2, "height"

    new-array v3, v6, [I

    aput v4, v3, v4

    aput v1, v3, v5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lio/intercom/android/sdk/views/ExpandableLayout$1;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout$1;-><init>(Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lio/intercom/android/sdk/views/ExpandableLayout$2;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout$2;-><init>(Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lio/intercom/android/sdk/views/ExpandableLayout$3;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout$3;-><init>(Lio/intercom/android/sdk/views/ExpandableLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private safeReleaseAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method


# virtual methods
.method checkExpandableView(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v0, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->canExpand:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findExpandableView()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lio/intercom/android/sdk/views/ExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v0, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->canExpand:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lio/intercom/android/sdk/views/ExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->generateDefaultLayoutParams()Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->generateDefaultLayoutParams()Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;
    .locals 3

    new-instance v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    invoke-direct {v0, p1}, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->findExpandableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v0, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->attachedToWindow:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iput-boolean v3, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->attachedToWindow:Z

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->findExpandableView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->expandAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/ExpandableLayout;->safeReleaseAnimator(Landroid/animation/ObjectAnimator;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->fadeAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/ExpandableLayout;->safeReleaseAnimator(Landroid/animation/ObjectAnimator;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iput v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-boolean v3, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    :cond_0
    return-void

    :cond_1
    iget v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iput v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->inLayout:Z

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iput-boolean v1, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->inLayout:Z

    iput-boolean v1, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->firstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iput p1, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->widthMeasureSpec:I

    iput p2, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->heightMeasureSpec:I

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->findExpandableView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->weight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExpandableView can\'t use weight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lio/intercom/android/sdk/views/ExpandableLayout$SavedState;

    invoke-virtual {p1}, Lio/intercom/android/sdk/views/ExpandableLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lio/intercom/android/sdk/views/ExpandableLayout$SavedState;->isExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->findExpandableView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/ExpandableLayout;->setExpanded(Z)Z

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lio/intercom/android/sdk/views/ExpandableLayout$SavedState;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/views/ExpandableLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/android/sdk/views/ExpandableLayout$SavedState;->isExpanded:Z

    :cond_0
    return-object v0
.end method

.method performToggleState(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;

    iget-boolean v1, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget v1, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->originalHeight:I

    iput v1, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->height:I

    :goto_0
    iput-boolean v2, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanding:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/android/sdk/views/ExpandableLayout$LayoutParams;->isExpanded:Z

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/views/ExpandableLayout;->inLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setExpanded(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/intercom/android/sdk/views/ExpandableLayout;->setExpanded(ZZ)Z

    move-result v0

    return v0
.end method

.method public setExpanded(ZZ)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->findExpandableView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->isExpanded()Z

    move-result v2

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0, v1, p2}, Lio/intercom/android/sdk/views/ExpandableLayout;->expand(Landroid/view/View;Z)Z

    move-result v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/views/ExpandableLayout;->requestLayout()V

    return v0

    :cond_1
    invoke-direct {p0, v1, p2}, Lio/intercom/android/sdk/views/ExpandableLayout;->collapse(Landroid/view/View;Z)Z

    move-result v0

    goto :goto_0
.end method
