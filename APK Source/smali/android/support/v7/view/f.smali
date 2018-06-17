.class public final Landroid/support/v7/view/f;
.super Landroid/view/ActionMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/f$a;
    }
.end annotation


# instance fields
.field final Py:Landroid/support/v7/view/b;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/f;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->finish()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 2

    iget-object v1, p0, Landroid/support/v7/view/f;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b/a/a;

    invoke-static {v1, v0}, Landroid/support/v7/view/menu/q;->a(Landroid/content/Context;Landroid/support/v4/b/a/a;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    iget-object v0, v0, Landroid/support/v7/view/b;->oX:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    iget-boolean v0, v0, Landroid/support/v7/view/b;->Ps:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->invalidate()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->setSubtitle(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    iput-object p1, v0, Landroid/support/v7/view/b;->oX:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->setTitle(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/f;->Py:Landroid/support/v7/view/b;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/b;->setTitleOptionalHint(Z)V

    return-void
.end method
