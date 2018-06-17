.class final Landroid/support/v7/widget/RecyclerView$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic aeU:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$g;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final m(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$x;->setIsRecyclable(Z)V

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$x;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$x;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$x;

    if-nez v2, :cond_0

    iput-object v3, p1, Landroid/support/v7/widget/RecyclerView$x;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$x;

    :cond_0
    iput-object v3, p1, Landroid/support/v7/widget/RecyclerView$x;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$x;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$x;->access$1500(Landroid/support/v7/widget/RecyclerView$x;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$g;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->hF()V

    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    iget-object v5, v2, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v5, v4}, Landroid/support/v7/widget/ai$b;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ai;->az(Landroid/view/View;)Z

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v4

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$p;->p(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v5, v3, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$p;->o(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_1
    if-nez v2, :cond_5

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->aa(Z)V

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$x;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$g;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v6, v2, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/ai$a;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v2, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/ai$a;->bm(I)Z

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ai;->az(Landroid/view/View;)Z

    iget-object v2, v2, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v2, v5}, Landroid/support/v7/widget/ai$b;->removeViewAt(I)V

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
