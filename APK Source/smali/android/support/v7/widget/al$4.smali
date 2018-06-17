.class final Landroid/support/v7/widget/al$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XZ:Landroid/support/v7/widget/al;

.field final synthetic Yc:Landroid/support/v7/widget/RecyclerView$x;

.field final synthetic Yd:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/al;Landroid/support/v7/widget/RecyclerView$x;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/al$4;->XZ:Landroid/support/v7/widget/al;

    iput-object p2, p0, Landroid/support/v7/widget/al$4;->Yc:Landroid/support/v7/widget/RecyclerView$x;

    iput-object p3, p0, Landroid/support/v7/widget/al$4;->Yd:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/al$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/al$4;->Yd:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/al$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Landroid/support/v7/widget/al$4;->XZ:Landroid/support/v7/widget/al;

    iget-object v1, p0, Landroid/support/v7/widget/al$4;->Yc:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bi;->k(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/al$4;->XZ:Landroid/support/v7/widget/al;

    iget-object v0, v0, Landroid/support/v7/widget/al;->XW:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/al$4;->Yc:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/al$4;->XZ:Landroid/support/v7/widget/al;

    invoke-virtual {v0}, Landroid/support/v7/widget/al;->gC()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
