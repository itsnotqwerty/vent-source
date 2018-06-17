.class final Landroid/support/v4/widget/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Landroid/support/v4/widget/d$1;->Iy:Landroid/support/v4/widget/d;

    iput-object p2, p0, Landroid/support/v4/widget/d$1;->Ix:Landroid/support/v4/widget/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/d$1;->Ix:Landroid/support/v4/widget/d$a;

    invoke-static {v0, v1}, Landroid/support/v4/widget/d;->b(FLandroid/support/v4/widget/d$a;)V

    iget-object v1, p0, Landroid/support/v4/widget/d$1;->Iy:Landroid/support/v4/widget/d;

    iget-object v2, p0, Landroid/support/v4/widget/d$1;->Ix:Landroid/support/v4/widget/d$a;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/widget/d;->a(Landroid/support/v4/widget/d;FLandroid/support/v4/widget/d$a;Z)V

    iget-object v0, p0, Landroid/support/v4/widget/d$1;->Iy:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->invalidateSelf()V

    return-void
.end method
