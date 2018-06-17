.class Lio/intercom/android/sdk/blocks/Image;
.super Ljava/lang/Object;


# instance fields
.field private final style:Lio/intercom/android/sdk/blocks/StyleType;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Image;->style:Lio/intercom/android/sdk/blocks/StyleType;

    return-void
.end method

.method private calculateChatFullPadding(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_chat_overlay_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_chat_overlay_padding_right:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_chat_overlay_text_margin_left:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sget v4, Lio/intercom/android/sdk/R$dimen;->intercom_chat_overlay_text_padding_left:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sget v5, Lio/intercom/android/sdk/R$dimen;->intercom_chat_overlay_text_padding_right:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    add-float/2addr v0, v2

    invoke-static {p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float v0, v1, v0

    sub-float v0, v2, v0

    float-to-int v0, v0

    return v0
.end method

.method private getTotalViewPadding(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/blocks/Image$1;->$SwitchMap$io$intercom$android$sdk$blocks$StyleType:[I

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Image;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-virtual {v2}, Lio/intercom/android/sdk/blocks/StyleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_conversation_row_icon_spacer:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_conversation_row_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sget v4, Lio/intercom/android/sdk/R$dimen;->intercom_cell_horizontal_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :pswitch_1
    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_cell_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_post_cell_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_2
    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_cell_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_note_cell_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_note_layout_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_3
    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_cell_content_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_note_cell_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_note_layout_margin:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/Image;->calculateChatFullPadding(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected getStyle()Lio/intercom/android/sdk/blocks/StyleType;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Image;->style:Lio/intercom/android/sdk/blocks/StyleType;

    return-object v0
.end method

.method protected setBackground(Landroid/widget/ImageView;)V
    .locals 1

    sget v0, Lio/intercom/android/sdk/R$drawable;->intercom_rounded_image_preview:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method protected setImageViewBounds(IILio/intercom/android/sdk/views/ResizableImageView;Lio/intercom/a/a/a/i;)V
    .locals 3

    invoke-virtual {p3}, Lio/intercom/android/sdk/views/ResizableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Image;->getTotalViewPadding(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p3, v0}, Lio/intercom/android/sdk/views/ResizableImageView;->setTotalViewPadding(I)V

    invoke-virtual {p3, p1, p2}, Lio/intercom/android/sdk/views/ResizableImageView;->setDisplayImageDimensions(II)V

    invoke-virtual {p3}, Lio/intercom/android/sdk/views/ResizableImageView;->getImageDimens()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_0

    new-instance v1, Lio/intercom/a/a/a/g/g;

    invoke-direct {v1}, Lio/intercom/a/a/a/g/g;-><init>()V

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lio/intercom/a/a/a/g/g;->aO(II)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {p4, v0}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    :cond_0
    return-void
.end method
