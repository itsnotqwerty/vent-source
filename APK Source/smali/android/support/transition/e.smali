.class public final Landroid/support/transition/e;
.super Landroid/support/transition/y;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/support/transition/y;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/y;->uW:Z

    new-instance v0, Landroid/support/transition/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/transition/g;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/transition/e;->d(Landroid/support/transition/u;)Landroid/support/transition/y;

    move-result-object v0

    new-instance v1, Landroid/support/transition/f;

    invoke-direct {v1}, Landroid/support/transition/f;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/transition/y;->d(Landroid/support/transition/u;)Landroid/support/transition/y;

    move-result-object v0

    new-instance v1, Landroid/support/transition/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/support/transition/g;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/transition/y;->d(Landroid/support/transition/u;)Landroid/support/transition/y;

    return-void
.end method
