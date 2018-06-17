.class public final Landroid/support/v7/widget/bb;
.super Landroid/support/v4/view/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/bb$a;
    }
.end annotation


# instance fields
.field final YZ:Landroid/support/v7/widget/RecyclerView;

.field final agn:Landroid/support/v4/view/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/bb;->YZ:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/bb$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bb$a;-><init>(Landroid/support/v7/widget/bb;)V

    iput-object v0, p0, Landroid/support/v7/widget/bb;->agn:Landroid/support/v4/view/b;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 8

    const/16 v7, 0x13

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/bb;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ie()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bb;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/bb;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0x2000

    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/a;->addAction(I)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/a/a;->setScrollable(Z)V

    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/16 v3, 0x1000

    invoke-virtual {p2, v3}, Landroid/support/v4/view/a/a;->addAction(I)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/a/a;->setScrollable(Z)V

    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_5

    new-instance v0, Landroid/support/v4/view/a/a$a;

    invoke-static {v3, v1, v5, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/a$a;-><init>(Ljava/lang/Object;)V

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_4

    iget-object v1, p2, Landroid/support/v4/view/a/a;->HB:Landroid/view/accessibility/AccessibilityNodeInfo;

    check-cast v0, Landroid/support/v4/view/a/a$a;

    iget-object v0, v0, Landroid/support/v4/view/a/a$a;->HD:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    :cond_4
    return-void

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_6

    new-instance v0, Landroid/support/v4/view/a/a$a;

    invoke-static {v3, v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/a$a;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/support/v4/view/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/a$a;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bb;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ie()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$i;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bb;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->ie()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bb;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bb;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$i;

    move-result-object v4

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    sparse-switch p2, :sswitch_data_0

    move v3, v1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    iget-object v1, v4, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    goto :goto_0

    :sswitch_0
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v4, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    :goto_2
    iget-object v3, v4, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v4, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    neg-int v3, v3

    goto :goto_1

    :sswitch_1
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v4, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_3
    iget-object v3, v4, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v4, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method
