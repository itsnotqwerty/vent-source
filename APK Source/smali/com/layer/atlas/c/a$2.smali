.class final Lcom/layer/atlas/c/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/c/a;->a(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bpn:Lcom/layer/atlas/c/a;

.field final synthetic bpo:Landroid/view/animation/AlphaAnimation;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/layer/atlas/c/a;Landroid/view/animation/AlphaAnimation;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/c/a$2;->bpn:Lcom/layer/atlas/c/a;

    iput-object p2, p0, Lcom/layer/atlas/c/a$2;->bpo:Landroid/view/animation/AlphaAnimation;

    iput-object p3, p0, Lcom/layer/atlas/c/a$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/layer/atlas/c/a$2;->bpo:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/layer/atlas/c/a$2;->bpo:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    iget-object v0, p0, Lcom/layer/atlas/c/a$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/layer/atlas/c/a$2;->bpo:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
