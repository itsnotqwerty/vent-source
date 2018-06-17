.class abstract Lcom/intercom/composer/a/f;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final blw:Lcom/intercom/composer/pager/a;

.field final blx:Landroid/support/v7/widget/RecyclerView$a;

.field final bly:Lcom/intercom/composer/a;

.field blz:Z

.field protected final inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/intercom/composer/pager/a;Landroid/support/v7/widget/RecyclerView$a;Lcom/intercom/composer/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/composer/b/b;",
            ">;",
            "Lcom/intercom/composer/pager/a;",
            "Landroid/support/v7/widget/RecyclerView$a;",
            "Lcom/intercom/composer/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/intercom/composer/a/f;->inputs:Ljava/util/List;

    iput-object p2, p0, Lcom/intercom/composer/a/f;->blw:Lcom/intercom/composer/pager/a;

    iput-object p3, p0, Lcom/intercom/composer/a/f;->blx:Landroid/support/v7/widget/RecyclerView$a;

    iput-object p4, p0, Lcom/intercom/composer/a/f;->bly:Lcom/intercom/composer/a;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intercom/composer/a/f;->blz:Z

    return-void
.end method

.method final vV()Z
    .locals 2

    iget-object v0, p0, Lcom/intercom/composer/a/f;->inputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/composer/b/b;

    instance-of v0, v0, Lcom/intercom/composer/b/a/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
