.class public final Lcom/vent/views/FixedTextViewTouchConsume$a;
.super Landroid/text/method/LinkMovementMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/views/FixedTextViewTouchConsume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field static cok:Lcom/vent/views/FixedTextViewTouchConsume$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static FB()Lcom/vent/views/FixedTextViewTouchConsume$a;
    .locals 1

    sget-object v0, Lcom/vent/views/FixedTextViewTouchConsume$a;->cok:Lcom/vent/views/FixedTextViewTouchConsume$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vent/views/FixedTextViewTouchConsume$a;

    invoke-direct {v0}, Lcom/vent/views/FixedTextViewTouchConsume$a;-><init>()V

    sput-object v0, Lcom/vent/views/FixedTextViewTouchConsume$a;->cok:Lcom/vent/views/FixedTextViewTouchConsume$a;

    :cond_0
    sget-object v0, Lcom/vent/views/FixedTextViewTouchConsume$a;->cok:Lcom/vent/views/FixedTextViewTouchConsume$a;

    return-object v0
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_0

    if-nez v3, :cond_8

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    int-to-float v0, v0

    invoke-virtual {v5, v4, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, v0, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    array-length v4, v0

    if-eqz v4, :cond_6

    if-ne v3, v1, :cond_5

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    instance-of v0, p1, Lcom/vent/views/FixedTextViewTouchConsume;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/vent/views/FixedTextViewTouchConsume;

    iput-boolean v1, v0, Lcom/vent/views/FixedTextViewTouchConsume;->coj:Z

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setScrollY(I)V

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0

    :cond_5
    if-nez v3, :cond_1

    aget-object v3, v0, v2

    invoke-interface {p2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v0, v0, v2

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v3, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_6
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setScrollY(I)V

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setScrollY(I)V

    goto :goto_1
.end method
