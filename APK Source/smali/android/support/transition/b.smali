.class final Landroid/support/transition/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/transition/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/b$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/animation/Animator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    instance-of v4, v0, Landroid/support/transition/b$a;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/support/transition/b$a;

    invoke-interface {v0, p1}, Landroid/support/transition/b$a;->onAnimationPause(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Landroid/animation/Animator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    instance-of v4, v0, Landroid/support/transition/b$a;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/support/transition/b$a;

    invoke-interface {v0, p1}, Landroid/support/transition/b$a;->onAnimationResume(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
