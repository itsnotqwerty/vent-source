.class final Landroid/support/v4/widget/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ix:Landroid/support/v4/widget/d$a;

.field final synthetic Iy:Landroid/support/v4/widget/d;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/d;Landroid/support/v4/widget/d$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/d$2;->Iy:Landroid/support/v4/widget/d;

    iput-object p2, p0, Landroid/support/v4/widget/d$2;->Ix:Landroid/support/v4/widget/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/v4/widget/d$2;->Iy:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/d$2;->Ix:Landroid/support/v4/widget/d$a;

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v2}, Landroid/support/v4/widget/d;->a(Landroid/support/v4/widget/d;FLandroid/support/v4/widget/d$a;Z)V

    iget-object v0, p0, Landroid/support/v4/widget/d$2;->Ix:Landroid/support/v4/widget/d$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/d$a;->ec()V

    iget-object v0, p0, Landroid/support/v4/widget/d$2;->Ix:Landroid/support/v4/widget/d$a;

    invoke-virtual {v0}, Landroid/support/v4/widget/d$a;->ea()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d$a;->aF(I)V

    iget-object v0, p0, Landroid/support/v4/widget/d$2;->Iy:Landroid/support/v4/widget/d;

    invoke-static {v0}, Landroid/support/v4/widget/d;->a(Landroid/support/v4/widget/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/d$2;->Iy:Landroid/support/v4/widget/d;

    invoke-static {v0}, Landroid/support/v4/widget/d;->b(Landroid/support/v4/widget/d;)Z

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    iget-object v0, p0, Landroid/support/v4/widget/d$2;->Ix:Landroid/support/v4/widget/d$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d$a;->y(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/d$2;->Iy:Landroid/support/v4/widget/d;

    iget-object v1, p0, Landroid/support/v4/widget/d$2;->Iy:Landroid/support/v4/widget/d;

    invoke-static {v1}, Landroid/support/v4/widget/d;->c(Landroid/support/v4/widget/d;)F

    move-result v1

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Landroid/support/v4/widget/d;->a(Landroid/support/v4/widget/d;F)F

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/d$2;->Iy:Landroid/support/v4/widget/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/d;->a(Landroid/support/v4/widget/d;F)F

    return-void
.end method
