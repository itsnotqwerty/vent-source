.class final Landroid/support/design/widget/g$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mQ:Z

.field final synthetic mR:Z

.field final synthetic mS:Landroid/support/design/widget/g$c;

.field final synthetic mT:Landroid/support/design/widget/g;


# direct methods
.method constructor <init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$c;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/g$1;->mT:Landroid/support/design/widget/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/g$1;->mR:Z

    iput-object p2, p0, Landroid/support/design/widget/g$1;->mS:Landroid/support/design/widget/g$c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/g$1;->mQ:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/g$1;->mT:Landroid/support/design/widget/g;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/g;->mD:I

    iget-boolean v0, p0, Landroid/support/design/widget/g$1;->mQ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g$1;->mT:Landroid/support/design/widget/g;

    iget-object v1, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    iget-boolean v0, p0, Landroid/support/design/widget/g$1;->mR:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Landroid/support/design/widget/g$1;->mR:Z

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/u;->b(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/design/widget/g$1;->mT:Landroid/support/design/widget/g;

    iget-object v0, v0, Landroid/support/design/widget/g;->mN:Landroid/support/design/widget/u;

    iget-boolean v1, p0, Landroid/support/design/widget/g$1;->mR:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/u;->b(IZ)V

    iput-boolean v2, p0, Landroid/support/design/widget/g$1;->mQ:Z

    return-void
.end method
