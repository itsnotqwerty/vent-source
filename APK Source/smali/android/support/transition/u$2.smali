.class final Landroid/support/transition/u$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uL:Landroid/support/v4/g/a;

.field final synthetic uM:Landroid/support/transition/u;


# direct methods
.method constructor <init>(Landroid/support/transition/u;Landroid/support/v4/g/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/u$2;->uM:Landroid/support/transition/u;

    iput-object p2, p0, Landroid/support/transition/u$2;->uL:Landroid/support/v4/g/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u$2;->uL:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/transition/u$2;->uM:Landroid/support/transition/u;

    invoke-static {v0}, Landroid/support/transition/u;->c(Landroid/support/transition/u;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u$2;->uM:Landroid/support/transition/u;

    invoke-static {v0}, Landroid/support/transition/u;->c(Landroid/support/transition/u;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
