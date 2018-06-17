.class abstract Landroid/support/design/widget/g$e;
.super Landroid/animation/AnimatorListenerAdapter;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "e"
.end annotation


# instance fields
.field final synthetic mT:Landroid/support/design/widget/g;

.field private mU:Z

.field private mV:F

.field private mW:F


# direct methods
.method private constructor <init>(Landroid/support/design/widget/g;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/g$e;->mT:Landroid/support/design/widget/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/g;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/g$e;-><init>(Landroid/support/design/widget/g;)V

    return-void
.end method


# virtual methods
.method protected abstract bL()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/g$e;->mT:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    iget v1, p0, Landroid/support/design/widget/g$e;->mW:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->g(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/g$e;->mU:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-boolean v0, p0, Landroid/support/design/widget/g$e;->mU:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g$e;->mT:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    iget v0, v0, Landroid/support/design/widget/k;->nt:F

    iput v0, p0, Landroid/support/design/widget/g$e;->mV:F

    invoke-virtual {p0}, Landroid/support/design/widget/g$e;->bL()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/g$e;->mW:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/g$e;->mU:Z

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/g$e;->mT:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->mF:Landroid/support/design/widget/k;

    iget v1, p0, Landroid/support/design/widget/g$e;->mV:F

    iget v2, p0, Landroid/support/design/widget/g$e;->mW:F

    iget v3, p0, Landroid/support/design/widget/g$e;->mV:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/design/widget/k;->g(F)V

    return-void
.end method
