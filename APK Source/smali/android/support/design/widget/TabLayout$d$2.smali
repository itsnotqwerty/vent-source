.class final Landroid/support/design/widget/TabLayout$d$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$d;->i(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oW:Landroid/support/design/widget/TabLayout$d;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$d;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$d$2;->oW:Landroid/support/design/widget/TabLayout$d;

    iput p2, p0, Landroid/support/design/widget/TabLayout$d$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d$2;->oW:Landroid/support/design/widget/TabLayout$d;

    iget v1, p0, Landroid/support/design/widget/TabLayout$d$2;->val$position:I

    iput v1, v0, Landroid/support/design/widget/TabLayout$d;->oM:I

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$d$2;->oW:Landroid/support/design/widget/TabLayout$d;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/design/widget/TabLayout$d;->oN:F

    return-void
.end method
