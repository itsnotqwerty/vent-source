.class final Landroid/support/design/widget/TabLayout$d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$d;->i(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oS:I

.field final synthetic oT:I

.field final synthetic oU:I

.field final synthetic oV:I

.field final synthetic oW:Landroid/support/design/widget/TabLayout$d;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$d;IIII)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$d$1;->oW:Landroid/support/design/widget/TabLayout$d;

    iput p2, p0, Landroid/support/design/widget/TabLayout$d$1;->oS:I

    iput p3, p0, Landroid/support/design/widget/TabLayout$d$1;->oT:I

    iput p4, p0, Landroid/support/design/widget/TabLayout$d$1;->oU:I

    iput p5, p0, Landroid/support/design/widget/TabLayout$d$1;->oV:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$d$1;->oW:Landroid/support/design/widget/TabLayout$d;

    iget v2, p0, Landroid/support/design/widget/TabLayout$d$1;->oS:I

    iget v3, p0, Landroid/support/design/widget/TabLayout$d$1;->oT:I

    invoke-static {v2, v3, v0}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/TabLayout$d$1;->oU:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$d$1;->oV:I

    invoke-static {v3, v4, v0}, Landroid/support/design/widget/a;->a(IIF)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/support/design/widget/TabLayout$d;->h(II)V

    return-void
.end method
