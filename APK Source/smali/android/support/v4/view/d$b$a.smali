.class final Landroid/support/v4/view/d$b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic FB:Landroid/support/v4/view/d$b;


# direct methods
.method constructor <init>(Landroid/support/v4/view/d$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    iget-object v0, v0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    iget-object v1, v1, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    iget-object v1, v0, Landroid/support/v4/view/d$b;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/view/d$b;->Fp:Z

    iput-boolean v3, v0, Landroid/support/v4/view/d$b;->Fq:Z

    iget-object v1, v0, Landroid/support/v4/view/d$b;->Fm:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v0, v0, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-interface {v1, v0}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    iget-object v0, v0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    iget-boolean v0, v0, Landroid/support/v4/view/d$b;->Fo:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    iget-object v0, v0, Landroid/support/v4/view/d$b;->Fn:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    iget-object v1, v1, Landroid/support/v4/view/d$b;->Ft:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/d$b$a;->FB:Landroid/support/v4/view/d$b;

    iput-boolean v3, v0, Landroid/support/v4/view/d$b;->Fp:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
