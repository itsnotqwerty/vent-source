.class final Landroid/support/design/widget/AppBarLayout$Behavior$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iW:Landroid/support/design/widget/CoordinatorLayout;

.field final synthetic iX:Landroid/support/design/widget/AppBarLayout;

.field final synthetic iY:Landroid/support/design/widget/AppBarLayout$Behavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior$1;->iY:Landroid/support/design/widget/AppBarLayout$Behavior;

    iput-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior$1;->iW:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior$1;->iX:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior$1;->iY:Landroid/support/design/widget/AppBarLayout$Behavior;

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior$1;->iW:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior$1;->iX:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    return-void
.end method
