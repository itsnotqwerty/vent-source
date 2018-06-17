.class abstract Landroid/support/design/widget/i;
.super Landroid/support/design/widget/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/q",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private jJ:Landroid/view/VelocityTracker;

.field private jK:I

.field private mY:Ljava/lang/Runnable;

.field mZ:Landroid/widget/OverScroller;

.field private na:Z

.field private nb:I

.field private nc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/support/design/widget/q;-><init>()V

    iput v0, p0, Landroid/support/design/widget/i;->jK:I

    iput v0, p0, Landroid/support/design/widget/i;->nc:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Landroid/support/design/widget/i;->jK:I

    iput v0, p0, Landroid/support/design/widget/i;->nc:I

    return-void
.end method

.method private bM()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/design/widget/i;->be()I

    move-result v1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    if-lt v1, p4, :cond_0

    if-gt v1, p5, :cond_0

    invoke-static {p3, p4, p5}, Landroid/support/v4/c/a;->b(III)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/design/widget/i;->r(I)Z

    sub-int v0, v1, v2

    :cond_0
    return v0
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v1, p0, Landroid/support/design/widget/i;->nc:I

    if-gez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/i;->nc:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/support/design/widget/i;->na:Z

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/design/widget/i;->na:Z

    goto :goto_0

    :pswitch_0
    iput-boolean v4, p0, Landroid/support/design/widget/i;->na:Z

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/support/design/widget/i;->bd()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Landroid/support/design/widget/i;->nb:I

    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/i;->jK:I

    invoke-direct {p0}, Landroid/support/design/widget/i;->bM()V

    goto :goto_1

    :pswitch_1
    iget v1, p0, Landroid/support/design/widget/i;->jK:I

    if-eq v1, v3, :cond_2

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-eq v1, v3, :cond_2

    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/support/design/widget/i;->nb:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/i;->nc:I

    if-le v2, v3, :cond_2

    iput-boolean v0, p0, Landroid/support/design/widget/i;->na:Z

    iput v1, p0, Landroid/support/design/widget/i;->nb:I

    goto :goto_1

    :pswitch_2
    iput-boolean v4, p0, Landroid/support/design/widget/i;->na:Z

    iput v3, p0, Landroid/support/design/widget/i;->jK:I

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/design/widget/i;->bc()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget v0, p0, Landroid/support/design/widget/i;->nc:I

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/i;->nc:I

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/design/widget/i;->bd()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Landroid/support/design/widget/i;->nb:I

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/i;->jK:I

    invoke-direct {p0}, Landroid/support/design/widget/i;->bM()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget v0, p0, Landroid/support/design/widget/i;->jK:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/support/design/widget/i;->nb:I

    sub-int v3, v1, v0

    iget-boolean v1, p0, Landroid/support/design/widget/i;->na:Z

    if-nez v1, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/design/widget/i;->nc:I

    if-le v1, v2, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/i;->na:Z

    if-lez v3, :cond_6

    iget v1, p0, Landroid/support/design/widget/i;->nc:I

    sub-int/2addr v3, v1

    :cond_5
    :goto_2
    iget-boolean v1, p0, Landroid/support/design/widget/i;->na:Z

    if-eqz v1, :cond_1

    iput v0, p0, Landroid/support/design/widget/i;->nb:I

    invoke-virtual {p0, p2}, Landroid/support/design/widget/i;->c(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/i;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_0

    :cond_6
    iget v1, p0, Landroid/support/design/widget/i;->nc:I

    add-int/2addr v3, v1

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/i;->jK:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    invoke-virtual {p0, p2}, Landroid/support/design/widget/i;->b(Landroid/view/View;)I

    move-result v0

    neg-int v7, v0

    iget-object v0, p0, Landroid/support/design/widget/i;->mY:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/widget/i;->mY:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/i;->mY:Ljava/lang/Runnable;

    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/i;->mZ:Landroid/widget/OverScroller;

    if-nez v0, :cond_8

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/i;->mZ:Landroid/widget/OverScroller;

    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/i;->mZ:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/i;->be()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, p0, Landroid/support/design/widget/i;->mZ:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/support/design/widget/i$a;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/design/widget/i$a;-><init>(Landroid/support/design/widget/i;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/i;->mY:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/support/design/widget/i;->mY:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_9
    :goto_3
    :pswitch_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/i;->na:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/i;->jK:I

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/i;->jJ:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method bc()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/i;->be()I

    move-result v0

    return v0
.end method

.method bd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method final c(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/i;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method c(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method
