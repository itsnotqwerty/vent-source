.class final Landroid/support/transition/g$1;
.super Landroid/support/transition/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/g;->b(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tJ:Landroid/support/transition/g;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/g;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/g$1;->tJ:Landroid/support/transition/g;

    iput-object p2, p0, Landroid/support/transition/g$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/transition/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/transition/u;)V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/g$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/transition/al;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/transition/g$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/transition/al;->E(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/support/transition/u;->b(Landroid/support/transition/u$c;)Landroid/support/transition/u;

    return-void
.end method
