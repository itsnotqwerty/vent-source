.class final Landroid/support/transition/f$10;
.super Landroid/support/transition/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/f;->a(Landroid/view/ViewGroup;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field tB:Z

.field final synthetic tC:Landroid/view/ViewGroup;

.field final synthetic tt:Landroid/support/transition/f;


# direct methods
.method constructor <init>(Landroid/support/transition/f;Landroid/view/ViewGroup;)V
    .locals 1

    iput-object p1, p0, Landroid/support/transition/f$10;->tt:Landroid/support/transition/f;

    iput-object p2, p0, Landroid/support/transition/f$10;->tC:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/support/transition/v;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/f$10;->tB:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/transition/u;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/transition/f$10;->tB:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/f$10;->tC:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/ae;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/transition/u;->b(Landroid/support/transition/u$c;)Landroid/support/transition/u;

    return-void
.end method

.method public final cl()V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/f$10;->tC:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/ae;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final cm()V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/f$10;->tC:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/transition/ae;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method
