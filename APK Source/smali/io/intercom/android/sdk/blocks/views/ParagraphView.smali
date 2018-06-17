.class public Lio/intercom/android/sdk/blocks/views/ParagraphView;
.super Landroid/support/v7/widget/AppCompatTextView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final DEFAULT_LINE_SPACING_DP:I = 0x2

.field private static final POST_BOTTOM_MARGIN_DP:I = 0x18

.field private static final POST_LINE_SPACING_DP:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/blocks/BlockAlignment;I)V
    .locals 5

    const/4 v0, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {p0}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0, v4}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setLineSpacing(FF)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setTextSize(F)V

    invoke-virtual {p0, v3}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setTextIsSelectable(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0, v3}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setScrollContainer(Z)V

    invoke-virtual {p0, v3}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setClickable(Z)V

    invoke-virtual {p0, v3}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setLongClickable(Z)V

    invoke-virtual {p3}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setGravity(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v1, Lio/intercom/android/sdk/blocks/views/ParagraphView$1;->$SwitchMap$io$intercom$android$sdk$blocks$StyleType:[I

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/StyleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0, v3}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setIncludeFontPadding(Z)V

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setTextColor(I)V

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setLinkTextColor(I)V

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_800:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setTextColor(I)V

    invoke-virtual {p0, p4}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setLinkTextColor(I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_700:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setTextColor(I)V

    invoke-virtual {p0, p4}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setLinkTextColor(I)V

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    new-instance v0, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/TrackingLinkMovementMethod;-><init>()V

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0, v4}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setLineSpacing(FF)V

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setTextColor(I)V

    invoke-static {p4}, Lio/intercom/android/sdk/utilities/ColorUtils;->lightenColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setLinkTextColor(I)V

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setTextSize(F)V

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_grey_600:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setTextColor(I)V

    invoke-virtual {p0, p4}, Lio/intercom/android/sdk/blocks/views/ParagraphView;->setLinkTextColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
