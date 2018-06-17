.class public final Lcom/intercom/composer/a/b;
.super Ljava/lang/Object;


# instance fields
.field public final blg:Landroid/view/View;

.field public blh:Lcom/intercom/composer/a/c;

.field public bli:Landroid/animation/ObjectAnimator;

.field public blj:I

.field public final blk:Landroid/animation/Animator$AnimatorListener;

.field public final bll:Landroid/animation/Animator$AnimatorListener;

.field public final blm:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/intercom/composer/a/a;->bld:I

    iput v0, p0, Lcom/intercom/composer/a/b;->blj:I

    new-instance v0, Lcom/intercom/composer/a/b$1;

    invoke-direct {v0, p0}, Lcom/intercom/composer/a/b$1;-><init>(Lcom/intercom/composer/a/b;)V

    iput-object v0, p0, Lcom/intercom/composer/a/b;->blk:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/intercom/composer/a/b$2;

    invoke-direct {v0, p0}, Lcom/intercom/composer/a/b$2;-><init>(Lcom/intercom/composer/a/b;)V

    iput-object v0, p0, Lcom/intercom/composer/a/b;->bll:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/intercom/composer/a/b$3;

    invoke-direct {v0, p0}, Lcom/intercom/composer/a/b$3;-><init>(Lcom/intercom/composer/a/b;)V

    iput-object v0, p0, Lcom/intercom/composer/a/b;->blm:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/intercom/composer/a/b;->blg:Landroid/view/View;

    return-void
.end method
