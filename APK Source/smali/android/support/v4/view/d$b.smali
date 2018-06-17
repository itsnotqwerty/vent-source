.class final Landroid/support/v4/view/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/d$b$a;
    }
.end annotation


# static fields
.field private static final Fj:I

.field private static final Fk:I

.field private static final Fl:I


# instance fields
.field private FA:Z

.field private Ff:I

.field private Fg:I

.field private Fh:I

.field private Fi:I

.field final Fm:Landroid/view/GestureDetector$OnGestureListener;

.field Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

.field Fo:Z

.field Fp:Z

.field Fq:Z

.field private Fr:Z

.field private Fs:Z

.field Ft:Landroid/view/MotionEvent;

.field private Fu:Landroid/view/MotionEvent;

.field private Fv:Z

.field private Fw:F

.field private Fx:F

.field private Fy:F

.field private Fz:F

.field private jJ:Landroid/view/VelocityTracker;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/d$b;->Fj:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/d$b;->Fk:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/view/d$b;->Fl:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/view/d$b$a;

    invoke-direct {v0, p0}, Landroid/support/v4/view/d$b$a;-><init>(Landroid/support/v4/view/d$b;)V

    iput-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    iput-object p2, p0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/d$b;->FA:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/d$b;->Fh:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/view/d$b;->Fi:I

    mul-int v0, v1, v1

    iput v0, p0, Landroid/support/v4/view/d$b;->Ff:I

    mul-int v0, v2, v2

    iput v0, p0, Landroid/support/v4/view/d$b;->Fg:I

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v7, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    iget-object v0, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v9, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    move v8, v4

    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    move v6, v3

    move v1, v7

    move v2, v7

    :goto_2
    if-ge v6, v5, :cond_4

    if-eq v0, v6, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v2, v10

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v1, v10

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v8, v3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_6

    add-int/lit8 v0, v5, -0x1

    :goto_3
    int-to-float v6, v0

    div-float/2addr v2, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    and-int/lit16 v0, v9, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_4
    :pswitch_0
    return v3

    :cond_6
    move v0, v5

    goto :goto_3

    :pswitch_1
    iput v2, p0, Landroid/support/v4/view/d$b;->Fw:F

    iput v2, p0, Landroid/support/v4/view/d$b;->Fy:F

    iput v1, p0, Landroid/support/v4/view/d$b;->Fx:F

    iput v1, p0, Landroid/support/v4/view/d$b;->Fz:F

    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fv:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fr:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fs:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fp:Z

    iget-boolean v0, p0, Landroid/support/v4/view/d$b;->Fq:Z

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fq:Z

    goto :goto_4

    :pswitch_2
    iput v2, p0, Landroid/support/v4/view/d$b;->Fw:F

    iput v2, p0, Landroid/support/v4/view/d$b;->Fy:F

    iput v1, p0, Landroid/support/v4/view/d$b;->Fx:F

    iput v1, p0, Landroid/support/v4/view/d$b;->Fz:F

    iget-object v0, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/d$b;->Fi:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v2, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    iget-object v4, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    move v0, v3

    :goto_5
    if-ge v0, v5, :cond_5

    if-eq v0, v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget-object v8, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float/2addr v8, v2

    iget-object v9, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    iget-object v0, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v5, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget-object v5, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/support/v4/view/d$b;->Fu:Landroid/view/MotionEvent;

    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    iget-object v5, p0, Landroid/support/v4/view/d$b;->Fu:Landroid/view/MotionEvent;

    iget-boolean v6, p0, Landroid/support/v4/view/d$b;->Fs:Z

    if-eqz v6, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget v5, Landroid/support/v4/view/d$b;->Fl:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-gtz v5, :cond_b

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v0, v6

    mul-int/2addr v5, v5

    mul-int/2addr v0, v0

    add-int/2addr v0, v5

    iget v5, p0, Landroid/support/v4/view/d$b;->Fg:I

    if-ge v0, v5, :cond_b

    move v0, v4

    :goto_6
    if-eqz v0, :cond_c

    iput-boolean v4, p0, Landroid/support/v4/view/d$b;->Fv:Z

    iget-object v0, p0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v5, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-interface {v0, v5}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    iget-object v5, p0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    or-int/2addr v0, v5

    :goto_7
    iput v2, p0, Landroid/support/v4/view/d$b;->Fw:F

    iput v2, p0, Landroid/support/v4/view/d$b;->Fy:F

    iput v1, p0, Landroid/support/v4/view/d$b;->Fx:F

    iput v1, p0, Landroid/support/v4/view/d$b;->Fz:F

    iget-object v1, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    iput-boolean v4, p0, Landroid/support/v4/view/d$b;->Fr:Z

    iput-boolean v4, p0, Landroid/support/v4/view/d$b;->Fs:Z

    iput-boolean v4, p0, Landroid/support/v4/view/d$b;->Fo:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fq:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fp:Z

    iget-boolean v1, p0, Landroid/support/v4/view/d$b;->FA:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v5, Landroid/support/v4/view/d$b;->Fk:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    sget v5, Landroid/support/v4/view/d$b;->Fj:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    invoke-virtual {v1, v12, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_a
    iget-object v1, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v5, Landroid/support/v4/view/d$b;->Fk:I

    int-to-long v6, v5

    add-long/2addr v2, v6

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v1, p0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int v3, v0, v1

    goto/16 :goto_4

    :cond_b
    move v0, v3

    goto :goto_6

    :cond_c
    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    sget v5, Landroid/support/v4/view/d$b;->Fl:I

    int-to-long v6, v5

    invoke-virtual {v0, v11, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    move v0, v3

    goto :goto_7

    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v4/view/d$b;->Fq:Z

    if-nez v0, :cond_5

    iget v0, p0, Landroid/support/v4/view/d$b;->Fw:F

    sub-float/2addr v0, v2

    iget v5, p0, Landroid/support/v4/view/d$b;->Fx:F

    sub-float/2addr v5, v1

    iget-boolean v6, p0, Landroid/support/v4/view/d$b;->Fv:Z

    if-eqz v6, :cond_e

    iget-object v0, p0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v3, v0, 0x0

    goto/16 :goto_4

    :cond_e
    iget-boolean v6, p0, Landroid/support/v4/view/d$b;->Fr:Z

    if-eqz v6, :cond_10

    iget v6, p0, Landroid/support/v4/view/d$b;->Fy:F

    sub-float v6, v2, v6

    float-to-int v6, v6

    iget v7, p0, Landroid/support/v4/view/d$b;->Fz:F

    sub-float v7, v1, v7

    float-to-int v7, v7

    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    iget v7, p0, Landroid/support/v4/view/d$b;->Ff:I

    if-le v6, v7, :cond_1a

    iget-object v7, p0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v8, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v0, v5}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    iput v2, p0, Landroid/support/v4/view/d$b;->Fw:F

    iput v1, p0, Landroid/support/v4/view/d$b;->Fx:F

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fr:Z

    iget-object v1, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    :goto_8
    iget v1, p0, Landroid/support/v4/view/d$b;->Ff:I

    if-le v6, v1, :cond_f

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fs:Z

    :cond_f
    move v3, v0

    goto/16 :goto_4

    :cond_10
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-gez v4, :cond_11

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_5

    :cond_11
    iget-object v3, p0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v4, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-interface {v3, v4, p1, v0, v5}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    iput v2, p0, Landroid/support/v4/view/d$b;->Fw:F

    iput v1, p0, Landroid/support/v4/view/d$b;->Fx:F

    goto/16 :goto_4

    :pswitch_5
    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fo:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iget-boolean v0, p0, Landroid/support/v4/view/d$b;->Fv:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    :cond_12
    :goto_9
    iget-object v2, p0, Landroid/support/v4/view/d$b;->Fu:Landroid/view/MotionEvent;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/support/v4/view/d$b;->Fu:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_13
    iput-object v1, p0, Landroid/support/v4/view/d$b;->Fu:Landroid/view/MotionEvent;

    iget-object v1, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    :cond_14
    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fv:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fp:Z

    iget-object v1, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->removeMessages(I)V

    move v3, v0

    goto/16 :goto_4

    :cond_15
    iget-boolean v0, p0, Landroid/support/v4/view/d$b;->Fq:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fq:Z

    move v0, v3

    goto :goto_9

    :cond_16
    iget-boolean v0, p0, Landroid/support/v4/view/d$b;->Fr:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/v4/view/d$b;->Fp:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_9

    :cond_17
    iget-object v0, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/16 v5, 0x3e8

    iget v6, p0, Landroid/support/v4/view/d$b;->Fi:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Landroid/support/v4/view/d$b;->Fh:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-gtz v2, :cond_18

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, p0, Landroid/support/v4/view/d$b;->Fh:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-lez v2, :cond_19

    :cond_18
    iget-object v2, p0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v6, p0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-interface {v2, v6, p1, v0, v5}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto/16 :goto_9

    :pswitch_6
    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/d$b;->jJ:Landroid/view/VelocityTracker;

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fv:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fo:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fr:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fs:Z

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fp:Z

    iget-boolean v0, p0, Landroid/support/v4/view/d$b;->Fq:Z

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Landroid/support/v4/view/d$b;->Fq:Z

    goto/16 :goto_4

    :cond_19
    move v0, v3

    goto/16 :goto_9

    :cond_1a
    move v0, v3

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
