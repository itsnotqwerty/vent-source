.class final Landroid/support/v4/widget/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KA:Landroid/support/v4/widget/n;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/n;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    iget-boolean v0, v0, Landroid/support/v4/widget/n;->JU:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    iget-object v0, v0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/d;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    iget-object v0, v0, Landroid/support/v4/widget/n;->Kn:Landroid/support/v4/widget/d;

    invoke-virtual {v0}, Landroid/support/v4/widget/d;->start()V

    iget-object v0, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    iget-boolean v0, v0, Landroid/support/v4/widget/n;->Kt:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    iget-object v0, v0, Landroid/support/v4/widget/n;->JT:Landroid/support/v4/widget/n$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    iget-object v0, v0, Landroid/support/v4/widget/n;->JT:Landroid/support/v4/widget/n$b;

    invoke-interface {v0}, Landroid/support/v4/widget/n$b;->em()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    iget-object v1, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    iget-object v1, v1, Landroid/support/v4/widget/n;->Kh:Landroid/support/v4/widget/c;

    invoke-virtual {v1}, Landroid/support/v4/widget/c;->getTop()I

    move-result v1

    iput v1, v0, Landroid/support/v4/widget/n;->Kc:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/n$1;->KA:Landroid/support/v4/widget/n;

    invoke-virtual {v0}, Landroid/support/v4/widget/n;->reset()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
