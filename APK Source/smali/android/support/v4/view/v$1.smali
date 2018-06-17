.class final Landroid/support/v4/view/v$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/v;->a(Landroid/view/View;Landroid/support/v4/view/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hv:Landroid/support/v4/view/w;

.field final synthetic Hw:Landroid/support/v4/view/v;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/v;Landroid/support/v4/view/w;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/v$1;->Hw:Landroid/support/v4/view/v;

    iput-object p2, p0, Landroid/support/v4/view/v$1;->Hv:Landroid/support/v4/view/w;

    iput-object p3, p0, Landroid/support/v4/view/v$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/v$1;->Hv:Landroid/support/v4/view/w;

    iget-object v1, p0, Landroid/support/v4/view/v$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/w;->aq(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/v$1;->Hv:Landroid/support/v4/view/w;

    iget-object v1, p0, Landroid/support/v4/view/v$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/w;->ap(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/v$1;->Hv:Landroid/support/v4/view/w;

    iget-object v1, p0, Landroid/support/v4/view/v$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/w;->ao(Landroid/view/View;)V

    return-void
.end method
