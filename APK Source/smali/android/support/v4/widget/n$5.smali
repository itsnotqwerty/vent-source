.class final Landroid/support/v4/widget/n$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/n;->p(F)V
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

    iput-object p1, p0, Landroid/support/v4/widget/n$5;->KA:Landroid/support/v4/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/n$5;->KA:Landroid/support/v4/widget/n;

    iget-boolean v0, v0, Landroid/support/v4/widget/n;->Ke:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n$5;->KA:Landroid/support/v4/widget/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/n;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
