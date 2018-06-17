.class public final Lcom/intercom/composer/a/g;
.super Lcom/intercom/composer/a/f;


# instance fields
.field private final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/intercom/composer/pager/a;Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/LinearLayoutManager;Lcom/intercom/composer/a;)V
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
            "Landroid/support/v7/widget/LinearLayoutManager;",
            "Lcom/intercom/composer/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/intercom/composer/a/f;-><init>(Ljava/util/List;Lcom/intercom/composer/pager/a;Landroid/support/v7/widget/RecyclerView$a;Lcom/intercom/composer/a;)V

    iput-object p4, p0, Lcom/intercom/composer/a/g;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/intercom/composer/a/f;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/intercom/composer/a/f;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/intercom/composer/a/g;->blz:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/intercom/composer/a/g;->vV()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intercom/composer/a/g;->bly:Lcom/intercom/composer/a;

    sget v1, Lcom/intercom/composer/a/a;->bld:I

    invoke-interface {v0, v1}, Lcom/intercom/composer/a;->di(I)V

    iget-object v0, p0, Lcom/intercom/composer/a/g;->inputs:Ljava/util/List;

    new-instance v1, Lcom/intercom/composer/b/a/b;

    invoke-direct {v1}, Lcom/intercom/composer/b/a/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/intercom/composer/a/g;->blw:Lcom/intercom/composer/pager/a;

    invoke-virtual {v0}, Lcom/intercom/composer/pager/a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/intercom/composer/a/g;->inputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/intercom/composer/a/g;->blx:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$a;->notifyItemInserted(I)V

    iget-object v1, p0, Lcom/intercom/composer/a/g;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->hs()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/intercom/composer/a/g;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->bA(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/intercom/composer/a/f;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/intercom/composer/a/g;->bly:Lcom/intercom/composer/a;

    sget v1, Lcom/intercom/composer/a/a;->blb:I

    invoke-interface {v0, v1}, Lcom/intercom/composer/a;->di(I)V

    iget-object v0, p0, Lcom/intercom/composer/a/g;->bly:Lcom/intercom/composer/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/intercom/composer/a;->setSendButtonVisibility(I)V

    return-void
.end method
