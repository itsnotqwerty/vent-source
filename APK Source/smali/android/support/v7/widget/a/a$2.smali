.class final Landroid/support/v7/widget/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aln:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q(Z)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$x;I)V

    goto :goto_0
.end method

.method public final e(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->alj:Landroid/support/v4/view/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/d;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/a/a;->jK:I

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/a/a;->akS:F

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Landroid/support/v7/widget/a/a;->akT:F

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v4, v0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-nez v0, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v5, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/a/a;->h(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    iget-object v0, v5, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_5

    iget-object v0, v5, Landroid/support/v7/widget/a/a;->ald:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/a$c;

    iget-object v7, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    if-ne v7, v6, :cond_4

    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v4, v3, Landroid/support/v7/widget/a/a;->akS:F

    iget v5, v0, Landroid/support/v7/widget/a/a$c;->alE:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/a/a;->akS:F

    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v4, v3, Landroid/support/v7/widget/a/a;->akT:F

    iget v5, v0, Landroid/support/v7/widget/a/a$c;->alF:F

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/a/a;->akT:F

    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v4, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v3, v4, v1}, Landroid/support/v7/widget/a/a;->b(Landroid/support/v7/widget/RecyclerView$x;Z)I

    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v3, v3, Landroid/support/v7/widget/a/a;->akP:Ljava/util/List;

    iget-object v4, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-static {v3}, Landroid/support/v7/widget/a/a$a;->x(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v4, v0, Landroid/support/v7/widget/a/a$c;->afr:Landroid/support/v7/widget/RecyclerView$x;

    iget v0, v0, Landroid/support/v7/widget/a/a$c;->alb:I

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$x;I)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v3, v3, Landroid/support/v7/widget/a/a;->alc:I

    invoke-virtual {v0, p1, v3, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;II)V

    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    return v0

    :cond_4
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_1

    :cond_6
    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iput v5, v0, Landroid/support/v7/widget/a/a;->jK:I

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$x;I)V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v3, v3, Landroid/support/v7/widget/a/a;->jK:I

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v3, v3, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {v4, v0, p1, v3}, Landroid/support/v7/widget/a/a;->a(ILandroid/view/MotionEvent;I)Z

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->alj:Landroid/support/v4/view/d;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/d;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v1, v1, Landroid/support/v7/widget/a/a;->jK:I

    if-ne v1, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v2, v2, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {v3, v1, p1, v2}, Landroid/support/v7/widget/a/a;->a(ILandroid/view/MotionEvent;I)Z

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v3, v3, Landroid/support/v7/widget/a/a;->akR:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz v3, :cond_1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :cond_4
    :goto_1
    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$x;I)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iput v4, v0, Landroid/support/v7/widget/a/a;->jK:I

    goto :goto_0

    :pswitch_2
    if-ltz v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v1, v1, Landroid/support/v7/widget/a/a;->alc:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;II)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/a/a;->u(Landroid/support/v7/widget/RecyclerView$x;)V

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->ale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->ale:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v3, v3, Landroid/support/v7/widget/a/a;->jK:I

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/a/a;->jK:I

    iget-object v0, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget-object v2, p0, Landroid/support/v7/widget/a/a$2;->aln:Landroid/support/v7/widget/a/a;

    iget v2, v2, Landroid/support/v7/widget/a/a;->alc:I

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
