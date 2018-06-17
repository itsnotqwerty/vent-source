.class final Lcom/intercom/composer/a/b$2;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intercom/composer/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bln:Lcom/intercom/composer/a/b;


# direct methods
.method constructor <init>(Lcom/intercom/composer/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/composer/a/b$2;->bln:Lcom/intercom/composer/a/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/intercom/composer/a/b$2;->bln:Lcom/intercom/composer/a/b;

    sget v1, Lcom/intercom/composer/a/a;->blc:I

    iput v1, v0, Lcom/intercom/composer/a/b;->blj:I

    iget-object v0, p0, Lcom/intercom/composer/a/b$2;->bln:Lcom/intercom/composer/a/b;

    iget-object v0, v0, Lcom/intercom/composer/a/b;->blh:Lcom/intercom/composer/a/c;

    if-eqz v0, :cond_0

    sget v0, Lcom/intercom/composer/a/a;->blc:I

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/intercom/composer/a/b$2;->bln:Lcom/intercom/composer/a/b;

    sget v1, Lcom/intercom/composer/a/a;->bla:I

    iput v1, v0, Lcom/intercom/composer/a/b;->blj:I

    return-void
.end method
