.class final Landroid/support/transition/f$9;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/f;->a(Landroid/view/ViewGroup;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tA:I

.field final synthetic tt:Landroid/support/transition/f;

.field private tv:Z

.field final synthetic tw:Landroid/graphics/Rect;

.field final synthetic tx:I

.field final synthetic ty:I

.field final synthetic tz:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/f;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/f$9;->tt:Landroid/support/transition/f;

    iput-object p2, p0, Landroid/support/transition/f$9;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/support/transition/f$9;->tw:Landroid/graphics/Rect;

    iput p4, p0, Landroid/support/transition/f$9;->tx:I

    iput p5, p0, Landroid/support/transition/f$9;->ty:I

    iput p6, p0, Landroid/support/transition/f$9;->tz:I

    iput p7, p0, Landroid/support/transition/f$9;->tA:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/f$9;->tv:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/transition/f$9;->tv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/f$9;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/support/transition/f$9;->tw:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/transition/f$9;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/f$9;->tx:I

    iget v2, p0, Landroid/support/transition/f$9;->ty:I

    iget v3, p0, Landroid/support/transition/f$9;->tz:I

    iget v4, p0, Landroid/support/transition/f$9;->tA:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/transition/al;->b(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
