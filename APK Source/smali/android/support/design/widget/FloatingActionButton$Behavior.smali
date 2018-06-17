.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# instance fields
.field private lg:Landroid/graphics/Rect;

.field private mA:Landroid/support/design/widget/FloatingActionButton$a;

.field private mB:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mB:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/support/design/a$k;->FloatingActionButton_Behavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/design/a$k;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mB:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 2

    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->lg:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->lg:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->lg:Landroid/graphics/Rect;

    invoke-static {p1, p2, v0}, Landroid/support/v4/widget/s;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mA:Landroid/support/design/widget/FloatingActionButton$a;

    invoke-virtual {p3, v0}, Landroid/support/design/widget/FloatingActionButton;->b(Landroid/support/design/widget/FloatingActionButton$a;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mA:Landroid/support/design/widget/FloatingActionButton$a;

    invoke-virtual {p3, v0}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;)V

    goto :goto_1
.end method

.method private a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->n(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v5, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v5, :cond_4

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->e(Landroid/view/View;I)V

    iget-object v3, p2, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    iget v5, v0, Landroid/support/design/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v4, v5

    if-lt v1, v4, :cond_6

    iget v1, v3, Landroid/graphics/Rect;->right:I

    :goto_1
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_7

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    invoke-static {p2, v2}, Landroid/support/v4/view/r;->m(Landroid/view/View;I)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p2, v1}, Landroid/support/v4/view/r;->n(Landroid/view/View;I)V

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    invoke-static {v0}, Landroid/support/design/widget/FloatingActionButton$Behavior;->o(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v0, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->b(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$e;->leftMargin:I

    if-gt v1, v4, :cond_8

    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v4

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    if-gt v4, v0, :cond_1

    iget v0, v3, Landroid/graphics/Rect;->top:I

    neg-int v2, v0

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-boolean v2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mB:Z

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lX:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getUserSetVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mA:Landroid/support/design/widget/FloatingActionButton$a;

    invoke-virtual {p2, v0}, Landroid/support/design/widget/FloatingActionButton;->b(Landroid/support/design/widget/FloatingActionButton$a;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mA:Landroid/support/design/widget/FloatingActionButton$a;

    invoke-virtual {p2, v0}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/support/design/widget/FloatingActionButton$a;)V

    goto :goto_1
.end method

.method private static o(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->lT:Landroid/support/design/widget/CoordinatorLayout$b;

    instance-of v0, v0, Landroid/support/design/widget/BottomSheetBehavior;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/CoordinatorLayout$e;)V
    .locals 1

    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;->lZ:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;->lZ:I

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1

    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->b(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_0
.end method

.method public final synthetic a(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 5

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p1, Landroid/support/design/widget/FloatingActionButton;->mv:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    return v0
.end method
