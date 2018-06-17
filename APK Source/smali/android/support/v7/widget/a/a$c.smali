.class Landroid/support/v7/widget/a/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final afr:Landroid/support/v7/widget/RecyclerView$x;

.field final alA:F

.field final alB:Landroid/animation/ValueAnimator;

.field final alC:I

.field public alD:Z

.field alE:F

.field alF:F

.field alG:Z

.field alH:F

.field final alb:I

.field final alx:F

.field final aly:F

.field final alz:F

.field uF:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$x;IIFFFF)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/support/v7/widget/a/a$c;->alG:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/a/a$c;->uF:Z

    iput p3, p0, Landroid/support/v7/widget/a/a$c;->alb:I

    iput p2, p0, Landroid/support/v7/widget/a/a$c;->alC:I

    iput-object p1, p0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    iput p4, p0, Landroid/support/v7/widget/a/a$c;->alx:F

    iput p5, p0, Landroid/support/v7/widget/a/a$c;->aly:F

    iput p6, p0, Landroid/support/v7/widget/a/a$c;->alz:F

    iput p7, p0, Landroid/support/v7/widget/a/a$c;->alA:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/a/a$c;->alB:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->alB:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v7/widget/a/a$c$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/a/a$c$1;-><init>(Landroid/support/v7/widget/a/a$c;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->alB:Landroid/animation/ValueAnimator;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->alB:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/a/a$c;->alH:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v7/widget/a/a$c;->alH:F

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/widget/a/a$c;->uF:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$x;->setIsRecyclable(Z)V

    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/a/a$c;->uF:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
