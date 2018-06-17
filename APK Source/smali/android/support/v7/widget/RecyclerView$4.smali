.class final Landroid/support/v7/widget/RecyclerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/bv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeU:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$p;->p(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView$x;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$x;->setIsRecyclable(Z)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$f;->d(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hT()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$x;->setIsRecyclable(Z)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$f;->e(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hT()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$x;->setIsRecyclable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->aeg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hT()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$f;->f(Landroid/support/v7/widget/RecyclerView$x;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->hT()V

    goto :goto_0
.end method

.method public final i(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$4;->aeU:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V

    return-void
.end method
