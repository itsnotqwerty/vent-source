.class final Landroid/support/v4/view/v$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/v;->a(Landroid/support/v4/view/y;)Landroid/support/v4/view/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Hw:Landroid/support/v4/view/v;

.field final synthetic Hx:Landroid/support/v4/view/y;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/v;Landroid/support/v4/view/y;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/v$2;->Hw:Landroid/support/v4/view/v;

    iput-object p2, p0, Landroid/support/v4/view/v$2;->Hx:Landroid/support/v4/view/y;

    iput-object p3, p0, Landroid/support/v4/view/v$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/v$2;->Hx:Landroid/support/v4/view/y;

    invoke-interface {v0}, Landroid/support/v4/view/y;->dX()V

    return-void
.end method
