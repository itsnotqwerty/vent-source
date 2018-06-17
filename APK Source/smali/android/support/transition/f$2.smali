.class final Landroid/support/transition/f$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/f;->a(Landroid/view/ViewGroup;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tq:Landroid/view/ViewGroup;

.field final synthetic tr:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic ts:F

.field final synthetic tt:Landroid/support/transition/f;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/f;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/f$2;->tt:Landroid/support/transition/f;

    iput-object p2, p0, Landroid/support/transition/f$2;->tq:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/transition/f$2;->tr:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Landroid/support/transition/f$2;->val$view:Landroid/view/View;

    iput p5, p0, Landroid/support/transition/f$2;->ts:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/f$2;->tq:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/al;->A(Landroid/view/View;)Landroid/support/transition/ak;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/f$2;->tr:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1}, Landroid/support/transition/ak;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/transition/f$2;->val$view:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/f$2;->ts:F

    invoke-static {v0, v1}, Landroid/support/transition/al;->c(Landroid/view/View;F)V

    return-void
.end method
