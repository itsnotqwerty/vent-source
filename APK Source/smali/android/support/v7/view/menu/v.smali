.class final Landroid/support/v7/view/menu/v;
.super Landroid/support/v7/view/menu/r;

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/b/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/r;-><init>(Landroid/content/Context;Landroid/support/v4/b/a/a;)V

    return-void
.end method


# virtual methods
.method public final clearHeader()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0}, Landroid/support/v4/b/a/c;->clearHeader()V

    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0}, Landroid/support/v4/b/a/c;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/v;->b(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/a/c;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/a/c;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/a/c;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/a/c;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/a/c;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/a/c;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->Ra:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/b/a/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/a/c;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
