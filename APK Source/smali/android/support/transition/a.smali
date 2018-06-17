.class final Landroid/support/transition/a;
.super Ljava/lang/Object;


# static fields
.field private static final td:Landroid/support/transition/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/transition/c;

    invoke-direct {v0}, Landroid/support/transition/c;-><init>()V

    sput-object v0, Landroid/support/transition/a;->td:Landroid/support/transition/d;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/transition/b;

    invoke-direct {v0}, Landroid/support/transition/b;-><init>()V

    sput-object v0, Landroid/support/transition/a;->td:Landroid/support/transition/d;

    goto :goto_0
.end method

.method static a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    sget-object v0, Landroid/support/transition/a;->td:Landroid/support/transition/d;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/d;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static b(Landroid/animation/Animator;)V
    .locals 1

    sget-object v0, Landroid/support/transition/a;->td:Landroid/support/transition/d;

    invoke-interface {v0, p0}, Landroid/support/transition/d;->b(Landroid/animation/Animator;)V

    return-void
.end method

.method static c(Landroid/animation/Animator;)V
    .locals 1

    sget-object v0, Landroid/support/transition/a;->td:Landroid/support/transition/d;

    invoke-interface {v0, p0}, Landroid/support/transition/d;->c(Landroid/animation/Animator;)V

    return-void
.end method
