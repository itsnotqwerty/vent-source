.class public Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;


# instance fields
.field private longClickActive:Z

.field private longClickPerformed:Z

.field private startClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    iput-boolean v0, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickActive:Z

    iput-boolean v0, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickPerformed:Z

    return-void
.end method

.method private getPosition(Landroid/view/MotionEvent;Landroid/widget/TextView;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method private performClick(Landroid/view/ViewGroup;)V
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private performLongClick(Landroid/view/ViewGroup;)V
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p3, p1}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->getPosition(Landroid/view/MotionEvent;Landroid/widget/TextView;)I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p2, v0, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v2

    :pswitch_0
    sget-object v3, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v3}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->startClickTime:J

    iget-boolean v3, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickActive:Z

    if-nez v3, :cond_1

    iput-boolean v1, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickActive:Z

    :cond_1
    array-length v1, v0

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    invoke-interface {p2, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v2

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickActive:Z

    iget-boolean v3, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickPerformed:Z

    if-nez v3, :cond_3

    array-length v3, v0

    if-eqz v3, :cond_2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lio/intercom/android/sdk/utilities/LinkOpener;->handleUrl(Ljava/lang/String;Landroid/content/Context;Lio/intercom/android/sdk/api/Api;)V

    :goto_1
    move v0, v1

    :goto_2
    iput-boolean v2, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickPerformed:Z

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->performClick(Landroid/view/ViewGroup;)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickActive:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v0}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->startClickTime:J

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    iput-boolean v2, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickActive:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->performLongClick(Landroid/view/ViewGroup;)V

    iput-boolean v1, p0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;->longClickPerformed:Z

    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
