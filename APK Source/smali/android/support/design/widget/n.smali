.class final Landroid/support/design/widget/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/n$a;
    }
.end annotation


# instance fields
.field final nI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/n$a;",
            ">;"
        }
    .end annotation
.end field

.field nJ:Landroid/support/design/widget/n$a;

.field nK:Landroid/animation/ValueAnimator;

.field private final nL:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/n;->nI:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/design/widget/n;->nJ:Landroid/support/design/widget/n$a;

    iput-object v1, p0, Landroid/support/design/widget/n;->nK:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/support/design/widget/n$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/n$1;-><init>(Landroid/support/design/widget/n;)V

    iput-object v0, p0, Landroid/support/design/widget/n;->nL:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public final a([ILandroid/animation/ValueAnimator;)V
    .locals 2

    new-instance v0, Landroid/support/design/widget/n$a;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/n$a;-><init>([ILandroid/animation/ValueAnimator;)V

    iget-object v1, p0, Landroid/support/design/widget/n;->nL:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/support/design/widget/n;->nI:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
