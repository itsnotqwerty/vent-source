.class final Lcom/vent/views/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/views/b;->a(Landroid/support/v7/app/d;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXk:Landroid/support/v7/app/d;

.field final synthetic cov:Lcom/vent/views/b;


# direct methods
.method constructor <init>(Lcom/vent/views/b;Landroid/support/v7/app/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    iput-object p2, p0, Lcom/vent/views/b$1;->bXk:Landroid/support/v7/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    iget-object v0, v0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    iget-boolean v0, v0, Lcom/vent/views/b;->cot:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    invoke-virtual {v0}, Lcom/vent/views/b;->x()V

    iget-object v0, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    iget-object v0, v0, Lcom/vent/views/b;->coq:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    iget-object v1, p0, Lcom/vent/views/b$1;->bXk:Landroid/support/v7/app/d;

    invoke-virtual {v0, v1}, Lcom/vent/views/b;->c(Landroid/support/v7/app/d;)V

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6

    iget-object v0, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vent/views/b;->cos:J

    iget-object v0, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    iget-boolean v0, v0, Lcom/vent/views/b;->cot:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    iget-wide v2, v0, Lcom/vent/views/b;->cos:J

    iget-object v1, p0, Lcom/vent/views/b$1;->cov:Lcom/vent/views/b;

    iget-wide v4, v1, Lcom/vent/views/b;->cou:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/vent/views/b;->cos:J

    :cond_0
    return-void
.end method
