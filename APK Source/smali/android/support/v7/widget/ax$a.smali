.class public final Landroid/support/v7/widget/ax$a;
.super Landroid/support/v7/widget/an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private adm:Landroid/support/v7/widget/aw;

.field final adn:I

.field final ado:I

.field private adp:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    const/16 v4, 0x16

    const/16 v3, 0x15

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/an;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_0

    iput v3, p0, Landroid/support/v7/widget/ax$a;->adn:I

    iput v4, p0, Landroid/support/v7/widget/ax$a;->ado:I

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Landroid/support/v7/widget/ax$a;->adn:I

    iput v3, p0, Landroid/support/v7/widget/ax$a;->ado:I

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic b(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/an;->b(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c(IIIII)I
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/an;->c(IIIII)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic hasFocus()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/an;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hasWindowFocus()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/an;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isFocused()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/an;->isFocused()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isInTouchMode()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/an;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Landroid/support/v7/widget/ax$a;->adm:Landroid/support/v7/widget/aw;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/ax$a;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/g;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/ax$a;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    sub-int v1, v3, v1

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/g;->aW(I)Landroid/support/v7/view/menu/j;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/ax$a;->adp:Landroid/view/MenuItem;

    if-eq v2, v1, :cond_1

    iget-object v0, v0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/ax$a;->adm:Landroid/support/v7/widget/aw;

    invoke-interface {v3, v0, v2}, Landroid/support/v7/widget/aw;->b(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    :cond_0
    iput-object v1, p0, Landroid/support/v7/widget/ax$a;->adp:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ax$a;->adm:Landroid/support/v7/widget/aw;

    invoke-interface {v2, v0, v1}, Landroid/support/v7/widget/aw;->c(Landroid/support/v7/view/menu/h;Landroid/view/MenuItem;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/an;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v1, 0x0

    check-cast v0, Landroid/support/v7/view/menu/g;

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/ax$a;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ListMenuItemView;

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/support/v7/widget/ax$a;->adn:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->getItemData()Landroid/support/v7/view/menu/j;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/view/menu/j;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ax$a;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/ax$a;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {p0, v0, v2, v4, v5}, Landroid/support/v7/widget/ax$a;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/v7/widget/ax$a;->ado:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ax$a;->setSelection(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ax$a;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/g;

    iget-object v0, v0, Landroid/support/v7/view/menu/g;->RX:Landroid/support/v7/view/menu/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/h;->I(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/an;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/an;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setHoverListener(Landroid/support/v7/widget/aw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ax$a;->adm:Landroid/support/v7/widget/aw;

    return-void
.end method

.method public final bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/an;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
