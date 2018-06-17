.class final Landroid/support/design/widget/SwipeDismissBehavior$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic nY:Landroid/support/design/widget/SwipeDismissBehavior;

.field private final nZ:Z


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->mView:Landroid/view/View;

    iput-boolean p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->nZ:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->jC:Landroid/support/v4/widget/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->jC:Landroid/support/v4/widget/r;

    invoke-virtual {v0}, Landroid/support/v4/widget/r;->en()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->nZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->nP:Landroid/support/design/widget/SwipeDismissBehavior$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->nY:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->nP:Landroid/support/design/widget/SwipeDismissBehavior$a;

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$b;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/design/widget/SwipeDismissBehavior$a;->g(Landroid/view/View;)V

    goto :goto_0
.end method
