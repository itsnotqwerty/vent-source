.class final Landroid/support/v7/widget/z$b;
.super Landroid/support/v7/widget/av;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field LE:Landroid/widget/ListAdapter;

.field final synthetic WF:Landroid/support/v7/widget/z;

.field WI:Ljava/lang/CharSequence;

.field final WJ:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/z;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/av;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/z$b;->WJ:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v7/widget/av;->acY:Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/v7/widget/z$b;->hv()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/av;->acW:I

    new-instance v0, Landroid/support/v7/widget/z$b$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/z$b$1;-><init>(Landroid/support/v7/widget/z$b;Landroid/support/v7/widget/z;)V

    iput-object v0, p0, Landroid/support/v7/widget/av;->ada:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/z$b;)V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/av;->show()V

    return-void
.end method


# virtual methods
.method final gk()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/bw;->bj(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move v1, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->getPaddingLeft()I

    move-result v3

    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->getPaddingRight()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->getWidth()I

    move-result v5

    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->c(Landroid/support/v7/widget/z;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    iget-object v0, p0, Landroid/support/v7/widget/z$b;->LE:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    iget-object v6, p0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/support/v7/widget/z;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v6}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v6}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    if-le v2, v0, :cond_5

    :goto_2
    sub-int v2, v5, v3

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/z$b;->setContentWidth(I)V

    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/bw;->bj(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-int v0, v5, v4

    iget v2, p0, Landroid/support/v7/widget/av;->WD:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_4
    iput v0, p0, Landroid/support/v7/widget/av;->acM:I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v1}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v2}, Landroid/support/v7/widget/z;->b(Landroid/support/v7/widget/z;)Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v1, v0

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->c(Landroid/support/v7/widget/z;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    sub-int v0, v5, v3

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/z$b;->setContentWidth(I)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-static {v0}, Landroid/support/v7/widget/z;->c(Landroid/support/v7/widget/z;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/z$b;->setContentWidth(I)V

    goto :goto_3

    :cond_4
    add-int v0, v1, v3

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/av;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/support/v7/widget/z$b;->LE:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final show()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/z$b;->gk()V

    invoke-virtual {p0}, Landroid/support/v7/widget/z$b;->hw()V

    invoke-super {p0}, Landroid/support/v7/widget/av;->show()V

    iget-object v1, p0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v1, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-virtual {v1}, Landroid/support/v7/widget/z;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/av;->acK:Landroid/support/v7/widget/an;

    iget-object v3, p0, Landroid/support/v7/widget/av;->adj:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/an;->setListSelectionHidden(Z)V

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/an;->setSelection(I)V

    invoke-virtual {v2}, Landroid/support/v7/widget/an;->getChoiceMode()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, v4}, Landroid/support/v7/widget/an;->setItemChecked(IZ)V

    :cond_0
    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/z$b;->WF:Landroid/support/v7/widget/z;

    invoke-virtual {v0}, Landroid/support/v7/widget/z;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v7/widget/z$b$2;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/z$b$2;-><init>(Landroid/support/v7/widget/z$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Landroid/support/v7/widget/z$b$3;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/z$b$3;-><init>(Landroid/support/v7/widget/z$b;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/z$b;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
