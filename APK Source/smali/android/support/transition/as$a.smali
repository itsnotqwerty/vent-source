.class final Landroid/support/transition/as$a;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroid/support/transition/b$a;
.implements Landroid/support/transition/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field tB:Z

.field private final vQ:I

.field private final vR:Landroid/view/ViewGroup;

.field private final vS:Z

.field private vT:Z


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/as$a;->tB:Z

    iput-object p1, p0, Landroid/support/transition/as$a;->mView:Landroid/view/View;

    iput p2, p0, Landroid/support/transition/as$a;->vQ:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/transition/as$a;->vR:Landroid/view/ViewGroup;

    iput-boolean v1, p0, Landroid/support/transition/as$a;->vS:Z

    invoke-direct {p0, v1}, Landroid/support/transition/as$a;->l(Z)V

    return-void
.end method

.method private cw()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/transition/as$a;->tB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/as$a;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/as$a;->vQ:I

    invoke-static {v0, v1}, Landroid/support/transition/al;->k(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/support/transition/as$a;->vR:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/as$a;->vR:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/as$a;->l(Z)V

    return-void
.end method

.method private l(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/transition/as$a;->vS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/transition/as$a;->vT:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/as$a;->vR:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/support/transition/as$a;->vT:Z

    iget-object v0, p0, Landroid/support/transition/as$a;->vR:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Landroid/support/transition/ae;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/transition/u;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/as$a;->cw()V

    invoke-virtual {p1, p0}, Landroid/support/transition/u;->b(Landroid/support/transition/u$c;)Landroid/support/transition/u;

    return-void
.end method

.method public final cl()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/as$a;->l(Z)V

    return-void
.end method

.method public final cm()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/as$a;->l(Z)V

    return-void
.end method

.method public final co()V
    .locals 0

    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/as$a;->tB:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/as$a;->cw()V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/transition/as$a;->tB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/as$a;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/as$a;->vQ:I

    invoke-static {v0, v1}, Landroid/support/transition/al;->k(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/transition/as$a;->tB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/as$a;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/al;->k(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
