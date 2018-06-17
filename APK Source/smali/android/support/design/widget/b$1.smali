.class final Landroid/support/design/widget/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    const-wide/16 v6, 0xfa

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v3

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/b;

    iget-object v1, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v1}, Landroid/support/design/widget/b$e;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v1}, Landroid/support/design/widget/b$e;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v4, v1, Landroid/support/design/widget/CoordinatorLayout$e;

    if-eqz v4, :cond_0

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$e;

    new-instance v4, Landroid/support/design/widget/b$a;

    invoke-direct {v4, v0}, Landroid/support/design/widget/b$a;-><init>(Landroid/support/design/widget/b;)V

    const v5, 0x3dcccccd    # 0.1f

    invoke-static {v5}, Landroid/support/design/widget/SwipeDismissBehavior;->h(F)F

    move-result v5

    iput v5, v4, Landroid/support/design/widget/SwipeDismissBehavior;->nV:F

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5}, Landroid/support/design/widget/SwipeDismissBehavior;->h(F)F

    move-result v5

    iput v5, v4, Landroid/support/design/widget/SwipeDismissBehavior;->nW:F

    iput v3, v4, Landroid/support/design/widget/SwipeDismissBehavior;->nT:I

    new-instance v3, Landroid/support/design/widget/b$7;

    invoke-direct {v3, v0}, Landroid/support/design/widget/b$7;-><init>(Landroid/support/design/widget/b;)V

    iput-object v3, v4, Landroid/support/design/widget/SwipeDismissBehavior;->nP:Landroid/support/design/widget/SwipeDismissBehavior$a;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/CoordinatorLayout$e;->a(Landroid/support/design/widget/CoordinatorLayout$b;)V

    const/16 v3, 0x50

    iput v3, v1, Landroid/support/design/widget/CoordinatorLayout$e;->lY:I

    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/b;->jg:Landroid/view/ViewGroup;

    iget-object v3, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    new-instance v3, Landroid/support/design/widget/b$8;

    invoke-direct {v3, v0}, Landroid/support/design/widget/b$8;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v1, v3}, Landroid/support/design/widget/b$e;->setOnAttachStateChangeListener(Landroid/support/design/widget/b$c;)V

    iget-object v1, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-static {v1}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/design/widget/b;->bj()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/design/widget/b;->bg()V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/design/widget/b;->bh()V

    goto :goto_1

    :cond_3
    iget-object v1, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    new-instance v3, Landroid/support/design/widget/b$9;

    invoke-direct {v3, v0}, Landroid/support/design/widget/b$9;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v1, v3}, Landroid/support/design/widget/b$e;->setOnLayoutChangeListener(Landroid/support/design/widget/b$d;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/support/design/widget/b;->bj()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v4}, Landroid/support/design/widget/b$e;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_4

    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v3

    iget-object v3, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v3}, Landroid/support/design/widget/b$e;->getHeight()I

    move-result v3

    aput v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v3, Landroid/support/design/widget/a;->iB:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/support/design/widget/b$2;

    invoke-direct {v3, v0, v1}, Landroid/support/design/widget/b$2;-><init>(Landroid/support/design/widget/b;I)V

    invoke-virtual {v4, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/support/design/widget/b$3;

    invoke-direct {v1, v0}, Landroid/support/design/widget/b$3;-><init>(Landroid/support/design/widget/b;)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    move v0, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v3}, Landroid/support/design/widget/b$e;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/design/a$a;->design_snackbar_out:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    sget-object v4, Landroid/support/design/widget/a;->iB:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/support/design/widget/b$4;

    invoke-direct {v4, v0, v1}, Landroid/support/design/widget/b$4;-><init>(Landroid/support/design/widget/b;I)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, v0, Landroid/support/design/widget/b;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/b$e;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/support/design/widget/b;->bi()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
