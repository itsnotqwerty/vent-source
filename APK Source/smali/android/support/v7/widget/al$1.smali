.class final Landroid/support/v7/widget/al$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/al;->gB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XY:Ljava/util/ArrayList;

.field final synthetic XZ:Landroid/support/v7/widget/al;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/al;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/al$1;->XZ:Landroid/support/v7/widget/al;

    iput-object p2, p0, Landroid/support/v7/widget/al$1;->XY:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/al$1;->XY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/al$b;

    iget-object v1, p0, Landroid/support/v7/widget/al$1;->XZ:Landroid/support/v7/widget/al;

    iget-object v2, v0, Landroid/support/v7/widget/al$b;->Yq:Landroid/support/v7/widget/RecyclerView$x;

    iget v3, v0, Landroid/support/v7/widget/al$b;->Ym:I

    iget v5, v0, Landroid/support/v7/widget/al$b;->Yn:I

    iget v6, v0, Landroid/support/v7/widget/al$b;->Yo:I

    iget v0, v0, Landroid/support/v7/widget/al$b;->Yp:I

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    sub-int v3, v6, v3

    sub-int v5, v0, v5

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v0, v1, Landroid/support/v7/widget/al;->XV:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v1, Landroid/support/v7/widget/RecyclerView$f;->aeZ:J

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v0, Landroid/support/v7/widget/al$6;

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/al$6;-><init>(Landroid/support/v7/widget/al;Landroid/support/v7/widget/RecyclerView$x;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/al$1;->XY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v7/widget/al$1;->XZ:Landroid/support/v7/widget/al;

    iget-object v0, v0, Landroid/support/v7/widget/al;->XS:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/al$1;->XY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
