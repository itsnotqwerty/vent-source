.class final Landroid/support/transition/ae;
.super Ljava/lang/Object;


# static fields
.field private static final vi:Landroid/support/transition/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/transition/ag;

    invoke-direct {v0}, Landroid/support/transition/ag;-><init>()V

    sput-object v0, Landroid/support/transition/ae;->vi:Landroid/support/transition/ah;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/transition/af;

    invoke-direct {v0}, Landroid/support/transition/af;-><init>()V

    sput-object v0, Landroid/support/transition/ae;->vi:Landroid/support/transition/ah;

    goto :goto_0
.end method

.method static b(Landroid/view/ViewGroup;)Landroid/support/transition/ad;
    .locals 1

    sget-object v0, Landroid/support/transition/ae;->vi:Landroid/support/transition/ah;

    invoke-interface {v0, p0}, Landroid/support/transition/ah;->b(Landroid/view/ViewGroup;)Landroid/support/transition/ad;

    move-result-object v0

    return-object v0
.end method

.method static c(Landroid/view/ViewGroup;Z)V
    .locals 1

    sget-object v0, Landroid/support/transition/ae;->vi:Landroid/support/transition/ah;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ah;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method
