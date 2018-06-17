.class final Landroid/support/v4/app/o$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yb:Landroid/support/v4/app/o;

.field final synthetic yc:Landroid/view/ViewGroup;

.field final synthetic yd:Landroid/support/v4/app/i;

.field final synthetic yf:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/i;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/o$3;->yb:Landroid/support/v4/app/o;

    iput-object p2, p0, Landroid/support/v4/app/o$3;->yc:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/o$3;->yf:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/o$3;->yd:Landroid/support/v4/app/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/o$3;->yc:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/o$3;->yf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/o$3;->yd:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/o$3;->yd:Landroid/support/v4/app/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/i;->setAnimator(Landroid/animation/Animator;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o$3;->yc:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/o$3;->yf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/o$3;->yb:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/o$3;->yd:Landroid/support/v4/app/i;

    iget-object v2, p0, Landroid/support/v4/app/o$3;->yd:Landroid/support/v4/app/i;

    invoke-virtual {v2}, Landroid/support/v4/app/i;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/i;IIIZ)V

    :cond_0
    return-void
.end method
