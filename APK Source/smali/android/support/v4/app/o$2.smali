.class final Landroid/support/v4/app/o$2;
.super Landroid/support/v4/app/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yb:Landroid/support/v4/app/o;

.field final synthetic yc:Landroid/view/ViewGroup;

.field final synthetic yd:Landroid/support/v4/app/i;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/support/v4/app/i;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/o$2;->yb:Landroid/support/v4/app/o;

    iput-object p3, p0, Landroid/support/v4/app/o$2;->yc:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroid/support/v4/app/o$2;->yd:Landroid/support/v4/app/i;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/o$b;-><init>(Landroid/view/animation/Animation$AnimationListener;B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/o$b;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Landroid/support/v4/app/o$2;->yc:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v4/app/o$2$1;

    invoke-direct {v1, p0}, Landroid/support/v4/app/o$2$1;-><init>(Landroid/support/v4/app/o$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
