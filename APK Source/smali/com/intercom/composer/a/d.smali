.class public final Lcom/intercom/composer/a/d;
.super Lcom/intercom/composer/a/f;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/intercom/composer/pager/a;Landroid/support/v7/widget/RecyclerView$a;Lcom/intercom/composer/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/b;",
            ">;",
            "Lcom/intercom/composer/pager/a;",
            "Landroid/support/v7/widget/RecyclerView$a;",
            "Lcom/intercom/composer/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intercom/composer/a/f;-><init>(Ljava/util/List;Lcom/intercom/composer/pager/a;Landroid/support/v7/widget/RecyclerView$a;Lcom/intercom/composer/a;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/intercom/composer/a/f;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/intercom/composer/a/f;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/intercom/composer/a/d;->bly:Lcom/intercom/composer/a;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/intercom/composer/a;->setSendButtonVisibility(I)V

    iget-boolean v0, p0, Lcom/intercom/composer/a/d;->blz:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/intercom/composer/a/d;->vV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/composer/a/d;->bly:Lcom/intercom/composer/a;

    sget v1, Lcom/intercom/composer/a/a;->blc:I

    invoke-interface {v0, v1}, Lcom/intercom/composer/a;->di(I)V

    iget-object v0, p0, Lcom/intercom/composer/a/d;->inputs:Ljava/util/List;

    iget-object v1, p0, Lcom/intercom/composer/a/d;->inputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/intercom/composer/a/d;->blw:Lcom/intercom/composer/pager/a;

    invoke-virtual {v0}, Lcom/intercom/composer/pager/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/intercom/composer/a/d;->blx:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v1, p0, Lcom/intercom/composer/a/d;->inputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/intercom/composer/a/f;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/intercom/composer/a/d;->bly:Lcom/intercom/composer/a;

    sget v1, Lcom/intercom/composer/a/a;->bla:I

    invoke-interface {v0, v1}, Lcom/intercom/composer/a;->di(I)V

    return-void
.end method
