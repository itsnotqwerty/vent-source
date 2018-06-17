.class public final Landroid/support/v4/view/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/v$a;
    }
.end annotation


# instance fields
.field public Hr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field Hs:Ljava/lang/Runnable;

.field Ht:Ljava/lang/Runnable;

.field Hu:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/v;->Hs:Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/support/v4/view/v;->Ht:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/v;->Hu:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v4/view/w;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/v$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/view/v$1;-><init>(Landroid/support/v4/view/v;Landroid/support/v4/view/w;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/w;)Landroid/support/v4/view/v;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/view/v;->a(Landroid/view/View;Landroid/support/v4/view/w;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/high16 v1, 0x7e000000

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v1, Landroid/support/v4/view/v$a;

    invoke-direct {v1, p0}, Landroid/support/v4/view/v$a;-><init>(Landroid/support/v4/view/v;)V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/view/v;->a(Landroid/view/View;Landroid/support/v4/view/w;)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/view/y;)Landroid/support/v4/view/v;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/support/v4/view/v$2;

    invoke-direct {v1, p0, p1, v0}, Landroid/support/v4/view/v$2;-><init>(Landroid/support/v4/view/v;Landroid/support/v4/view/y;Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-object p0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public final e(J)Landroid/support/v4/view/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public final k(F)Landroid/support/v4/view/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public final l(F)Landroid/support/v4/view/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/v;->Hr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method
