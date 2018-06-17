.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/at;

# interfaces
.implements Landroid/support/v7/view/menu/h$b;
.implements Landroid/support/v7/view/menu/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$c;,
        Landroid/support/v7/widget/ActionMenuView$a;,
        Landroid/support/v7/widget/ActionMenuView$b;,
        Landroid/support/v7/widget/ActionMenuView$d;,
        Landroid/support/v7/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field Pj:Landroid/support/v7/view/menu/h;

.field UD:Landroid/support/v7/widget/d;

.field private UE:Z

.field private UF:I

.field private UG:I

.field UH:Landroid/support/v7/widget/ActionMenuView$e;

.field Ug:Z

.field private Up:I

.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/o$a;

.field mMenuBuilderCallback:Landroid/support/v7/view/menu/h$a;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/at;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->Up:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->UG:I

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method private aY(I)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$a;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$a;

    invoke-interface {v0}, Landroid/support/v7/widget/ActionMenuView$a;->eX()Z

    move-result v0

    or-int/lit8 v2, v0, 0x0

    :cond_1
    if-lez p1, :cond_2

    instance-of v0, v1, Landroid/support/v7/widget/ActionMenuView$a;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$a;

    invoke-interface {v0}, Landroid/support/v7/widget/ActionMenuView$a;->eW()Z

    move-result v0

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected static b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v7/widget/ActionMenuView$c;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    check-cast p0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/support/v7/widget/ActionMenuView$c;)V

    :goto_0
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->gravity:I

    if-gtz v1, :cond_0

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->gravity:I

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->fL()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    goto :goto_1
.end method

.method private c(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method static d(Landroid/view/View;IIII)I
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    instance-of v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Landroid/support/v7/view/menu/ActionMenuItemView;

    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_5

    move v5, v4

    :goto_1
    if-lez p2, :cond_6

    if-eqz v5, :cond_0

    if-lt p2, v3, :cond_6

    :cond_0
    mul-int v1, p1, p2

    const/high16 v7, -0x80000000

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v1, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int v1, v7, p1

    rem-int/2addr v7, p1

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-eqz v5, :cond_2

    if-ge v1, v3, :cond_2

    move v1, v3

    :cond_2
    :goto_2
    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    if-nez v3, :cond_3

    if-eqz v5, :cond_3

    move v2, v4

    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView$c;->UL:Z

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    mul-int v0, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v6}, Landroid/view/View;->measure(II)V

    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    move v5, v2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method private static fL()Landroid/support/v7/widget/ActionMenuView$c;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuView$c;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->gravity:I

    return-object v0
.end method

.method public static fM()Landroid/support/v7/widget/ActionMenuView$c;
    .locals 2

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->fL()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/menu/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    return-void
.end method

.method protected final synthetic c(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/at$a;
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic d(Landroid/util/AttributeSet;)Landroid/support/v7/widget/at$a;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->c(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public final dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->fI()Z

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/support/v7/view/menu/j;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/o;I)Z

    move-result v0

    return v0
.end method

.method protected final synthetic fN()Landroid/support/v7/widget/at$a;
    .locals 1

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->fL()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->fL()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->c(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/support/v7/view/menu/h;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/h;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$d;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/h$a;)V

    new-instance v1, Landroid/support/v7/widget/d;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->fH()V

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/o$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/o$a;

    :goto_0
    iput-object v0, v1, Landroid/support/v7/view/menu/b;->QU:Landroid/support/v7/view/menu/o$a;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/h;->a(Landroid/support/v7/view/menu/o;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/ActionMenuView;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$b;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuView$b;-><init>()V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    iget-object v1, v0, Landroid/support/v7/widget/d;->Ud:Landroid/support/v7/widget/d$d;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/d;->Ud:Landroid/support/v7/widget/d$d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, v0, Landroid/support/v7/widget/d;->Uf:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/widget/d;->Ue:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/at;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/d;->G(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->hideOverflowMenu()Z

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->showOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/at;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->UE:Z

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/at;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v6

    sub-int v0, p5, p3

    div-int/lit8 v7, v0, 0x2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v8

    const/4 v4, 0x0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    sub-int v3, v0, v1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v7/widget/bw;->bj(Landroid/view/View;)Z

    move-result v9

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_5

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    if-eqz v1, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->aY(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/2addr v1, v8

    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v0, v2

    add-int v2, v0, v1

    :goto_2
    div-int/lit8 v12, v11, 0x2

    sub-int v12, v7, v12

    add-int/2addr v11, v12

    invoke-virtual {v10, v0, v12, v2, v11}, Landroid/view/View;->layout(IIII)V

    sub-int v0, v3, v1

    const/4 v2, 0x1

    move v1, v4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v3, v0

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v2, v12

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr v2, v0

    sub-int v0, v2, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v10, v0, Landroid/support/v7/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v1, v10

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v0, v1

    sub-int v0, v3, v0

    invoke-direct {p0, v5}, Landroid/support/v7/widget/ActionMenuView;->aY(I)Z

    add-int/lit8 v1, v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    if-ne v6, v0, :cond_6

    if-nez v2, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v2, 0x2

    sub-int v4, v7, v4

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    const/4 v0, 0x0

    :goto_4
    sub-int v0, v4, v0

    const/4 v1, 0x0

    if-lez v0, :cond_8

    div-int v0, v3, v0

    :goto_5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_b

    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    if-nez v5, :cond_b

    iget v5, v0, Landroid/support/v7/widget/ActionMenuView$c;->rightMargin:I

    sub-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    sub-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v10, v9, v1, v8}, Landroid/view/View;->layout(IIII)V

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    sub-int v0, v1, v0

    :goto_7
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_6

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$c;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_a

    iget-boolean v5, v0, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    if-nez v5, :cond_a

    iget v5, v0, Landroid/support/v7/widget/ActionMenuView$c;->leftMargin:I

    add-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    add-int v10, v1, v5

    add-int/2addr v8, v9

    invoke-virtual {v4, v1, v9, v10, v8}, Landroid/view/View;->layout(IIII)V

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView$c;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    :goto_9
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_8

    :cond_a
    move v0, v1

    goto :goto_9

    :cond_b
    move v0, v1

    goto :goto_7

    :cond_c
    move v0, v3

    move v1, v4

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .locals 32

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/ActionMenuView;->UE:Z

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->UE:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->UE:Z

    if-eq v7, v6, :cond_0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/ActionMenuView;->UF:I

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/ActionMenuView;->UE:Z

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->UF:I

    if-eq v6, v7, :cond_1

    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/ActionMenuView;->UF:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/ActionMenuView;->Pj:Landroid/support/v7/view/menu/h;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/h;->J(Z)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/support/v7/widget/ActionMenuView;->UE:Z

    if-eqz v6, :cond_1c

    if-lez v8, :cond_1c

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v9

    add-int v19, v8, v9

    const/4 v8, -0x2

    move/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v24

    sub-int v25, v6, v7

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->Up:I

    div-int v9, v25, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->Up:I

    rem-int v6, v25, v6

    if-nez v9, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->Up:I

    div-int/2addr v6, v9

    add-int v26, v7, v6

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v27

    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v14, 0x8

    if-eq v6, v14, :cond_25

    instance-of v0, v8, Landroid/support/v7/view/menu/ActionMenuItemView;

    move/from16 v17, v0

    add-int/lit8 v14, v7, 0x1

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->UG:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->UG:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v6, v7, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->expanded:Z

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->UK:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->UL:Z

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->leftMargin:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->rightMargin:I

    if-eqz v17, :cond_5

    move-object v7, v8

    check-cast v7, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->UM:Z

    iget-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v8, v0, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->d(Landroid/view/View;IIII)I

    move-result v21

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->UL:Z

    if-eqz v7, :cond_24

    add-int/lit8 v7, v10, 0x1

    :goto_5
    iget-boolean v6, v6, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    :goto_6
    sub-int v17, v9, v21

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move/from16 v0, v16

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v8, 0x1

    move/from16 v0, v21

    if-ne v0, v8, :cond_22

    const/4 v8, 0x1

    shl-int v8, v8, v18

    int-to-long v8, v8

    or-long/2addr v8, v12

    move-wide v12, v8

    move v10, v7

    move/from16 v16, v11

    :goto_7
    add-int/lit8 v8, v18, 0x1

    move/from16 v18, v8

    move v11, v6

    move v7, v14

    move/from16 v9, v17

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    move v7, v9

    goto :goto_4

    :cond_7
    if-eqz v11, :cond_8

    const/4 v6, 0x2

    if-ne v7, v6, :cond_8

    const/4 v6, 0x1

    move v8, v6

    :goto_8
    const/16 v17, 0x0

    move-wide/from16 v18, v12

    move/from16 v21, v9

    :goto_9
    if-lez v10, :cond_e

    if-lez v21, :cond_e

    const v14, 0x7fffffff

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move/from16 v22, v6

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v0, v6, Landroid/support/v7/widget/ActionMenuView$c;->UL:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    iget v0, v6, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v14, :cond_9

    iget v9, v6, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    const-wide/16 v12, 0x1

    shl-long v12, v12, v22

    const/4 v6, 0x1

    move v14, v9

    :goto_b
    add-int/lit8 v22, v22, 0x1

    move v9, v6

    goto :goto_a

    :cond_8
    const/4 v6, 0x0

    move v8, v6

    goto :goto_8

    :cond_9
    iget v6, v6, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    if-ne v6, v14, :cond_21

    const-wide/16 v28, 0x1

    shl-long v28, v28, v22

    or-long v12, v12, v28

    add-int/lit8 v6, v9, 0x1

    goto :goto_b

    :cond_a
    or-long v18, v18, v12

    move/from16 v0, v21

    if-gt v9, v0, :cond_e

    add-int/lit8 v17, v14, 0x1

    const/4 v6, 0x0

    move v14, v6

    move/from16 v9, v21

    :goto_c
    move/from16 v0, v27

    if-ge v14, v0, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    const/16 v22, 0x1

    shl-int v22, v22, v14

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v28, v0

    and-long v28, v28, v12

    const-wide/16 v30, 0x0

    cmp-long v22, v28, v30

    if-nez v22, :cond_b

    iget v6, v6, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    move/from16 v0, v17

    if-ne v6, v0, :cond_20

    const/4 v6, 0x1

    shl-int/2addr v6, v14

    int-to-long v0, v6

    move-wide/from16 v28, v0

    or-long v18, v18, v28

    move v6, v9

    :goto_d
    add-int/lit8 v14, v14, 0x1

    move v9, v6

    goto :goto_c

    :cond_b
    if-eqz v8, :cond_c

    iget-boolean v0, v6, Landroid/support/v7/widget/ActionMenuView$c;->UM:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->UG:I

    move/from16 v22, v0

    add-int v22, v22, v26

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->UG:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    iget v0, v6, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    iput v0, v6, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Landroid/support/v7/widget/ActionMenuView$c;->expanded:Z

    add-int/lit8 v6, v9, -0x1

    goto :goto_d

    :cond_d
    const/16 v17, 0x1

    move/from16 v21, v9

    goto/16 :goto_9

    :cond_e
    move-wide/from16 v12, v18

    if-nez v11, :cond_12

    const/4 v6, 0x1

    if-ne v7, v6, :cond_12

    const/4 v6, 0x1

    :goto_e
    if-lez v21, :cond_18

    const-wide/16 v8, 0x0

    cmp-long v8, v12, v8

    if-eqz v8, :cond_18

    add-int/lit8 v7, v7, -0x1

    move/from16 v0, v21

    if-lt v0, v7, :cond_f

    if-nez v6, :cond_f

    const/4 v7, 0x1

    if-le v15, v7, :cond_18

    :cond_f
    invoke-static {v12, v13}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    int-to-float v7, v7

    if-nez v6, :cond_1f

    const-wide/16 v8, 0x1

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v6, v6, Landroid/support/v7/widget/ActionMenuView$c;->UM:Z

    if-nez v6, :cond_10

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v7, v6

    :cond_10
    const/4 v6, 0x1

    add-int/lit8 v8, v27, -0x1

    shl-int/2addr v6, v8

    int-to-long v8, v6

    and-long/2addr v8, v12

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1f

    add-int/lit8 v6, v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v6, v6, Landroid/support/v7/widget/ActionMenuView$c;->UM:Z

    if-nez v6, :cond_1f

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v7, v6

    :goto_f
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_13

    mul-int v7, v21, v26

    int-to-float v7, v7

    div-float v6, v7, v6

    float-to-int v6, v6

    move v7, v6

    :goto_10
    const/4 v6, 0x0

    move v9, v6

    move/from16 v8, v17

    :goto_11
    move/from16 v0, v27

    if-ge v9, v0, :cond_19

    const/4 v6, 0x1

    shl-int/2addr v6, v9

    int-to-long v10, v6

    and-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    instance-of v10, v10, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v10, :cond_14

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->UK:I

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/support/v7/widget/ActionMenuView$c;->expanded:Z

    if-nez v9, :cond_11

    iget-boolean v8, v6, Landroid/support/v7/widget/ActionMenuView$c;->UM:Z

    if-nez v8, :cond_11

    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/support/v7/widget/ActionMenuView$c;->leftMargin:I

    :cond_11
    const/4 v6, 0x1

    :goto_12
    add-int/lit8 v9, v9, 0x1

    move v8, v6

    goto :goto_11

    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_e

    :cond_13
    const/4 v6, 0x0

    move v7, v6

    goto :goto_10

    :cond_14
    iget-boolean v10, v6, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    if-eqz v10, :cond_15

    iput v7, v6, Landroid/support/v7/widget/ActionMenuView$c;->UK:I

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/support/v7/widget/ActionMenuView$c;->expanded:Z

    neg-int v8, v7

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/support/v7/widget/ActionMenuView$c;->rightMargin:I

    const/4 v6, 0x1

    goto :goto_12

    :cond_15
    if-eqz v9, :cond_16

    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroid/support/v7/widget/ActionMenuView$c;->leftMargin:I

    :cond_16
    add-int/lit8 v10, v27, -0x1

    if-eq v9, v10, :cond_17

    div-int/lit8 v10, v7, 0x2

    iput v10, v6, Landroid/support/v7/widget/ActionMenuView$c;->rightMargin:I

    :cond_17
    move v6, v8

    goto :goto_12

    :cond_18
    move/from16 v8, v17

    :cond_19
    if-eqz v8, :cond_1b

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    move/from16 v0, v27

    if-ge v7, v0, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    iget-boolean v9, v6, Landroid/support/v7/widget/ActionMenuView$c;->expanded:Z

    if-eqz v9, :cond_1a

    iget v9, v6, Landroid/support/v7/widget/ActionMenuView$c;->UJ:I

    mul-int v9, v9, v26

    iget v6, v6, Landroid/support/v7/widget/ActionMenuView$c;->UK:I

    add-int/2addr v6, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v0, v24

    invoke-virtual {v8, v6, v0}, Landroid/view/View;->measure(II)V

    :cond_1a
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_13

    :cond_1b
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_1e

    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_1

    :cond_1c
    const/4 v6, 0x0

    move v7, v6

    :goto_15
    if-ge v7, v8, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$c;

    const/4 v9, 0x0

    iput v9, v6, Landroid/support/v7/widget/ActionMenuView$c;->rightMargin:I

    iput v9, v6, Landroid/support/v7/widget/ActionMenuView$c;->leftMargin:I

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_15

    :cond_1d
    invoke-super/range {p0 .. p2}, Landroid/support/v7/widget/at;->onMeasure(II)V

    goto/16 :goto_1

    :cond_1e
    move/from16 v16, v20

    goto :goto_14

    :cond_1f
    move v6, v7

    goto/16 :goto_f

    :cond_20
    move v6, v9

    goto/16 :goto_d

    :cond_21
    move v6, v9

    goto/16 :goto_b

    :cond_22
    move v10, v7

    move/from16 v16, v11

    goto/16 :goto_7

    :cond_23
    move v6, v11

    goto/16 :goto_6

    :cond_24
    move v7, v10

    goto/16 :goto_5

    :cond_25
    move v6, v11

    move v14, v7

    move/from16 v17, v9

    goto/16 :goto_7
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    iput-boolean p1, v0, Landroid/support/v7/widget/d;->Uo:Z

    return-void
.end method

.method public final setMenuCallbacks(Landroid/support/v7/view/menu/o$a;Landroid/support/v7/view/menu/h$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/o$a;

    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/h$a;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$e;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->UH:Landroid/support/v7/widget/ActionMenuView$e;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    iget-object v1, v0, Landroid/support/v7/widget/d;->Ud:Landroid/support/v7/widget/d$d;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/d;->Ud:Landroid/support/v7/widget/d$d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/d;->Uf:Z

    iput-object p1, v0, Landroid/support/v7/widget/d;->Ue:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->Ug:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/support/v7/widget/d;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->UD:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/d;->a(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method
