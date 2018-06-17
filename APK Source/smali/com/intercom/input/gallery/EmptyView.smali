.class public Lcom/intercom/input/gallery/EmptyView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private actionButton:Landroid/widget/Button;

.field private blW:Ljava/lang/String;

.field private blX:Ljava/lang/String;

.field private blY:Ljava/lang/String;

.field private blZ:I

.field private bma:I

.field private bmb:I

.field private bmc:I

.field private subtitle:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/intercom/input/gallery/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/intercom/input/gallery/m$f;->intercom_composer_empty_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/intercom/input/gallery/m$b;->intercom_composer_white:I

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/EmptyView;->setBackgroundResource(I)V

    sget-object v0, Lcom/intercom/input/gallery/m$h;->intercom_composer_empty_view:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Lcom/intercom/input/gallery/m$h;->intercom_composer_empty_view_intercom_composer_titleText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->blW:Ljava/lang/String;

    sget v0, Lcom/intercom/input/gallery/m$h;->intercom_composer_empty_view_intercom_composer_subtitleText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->blX:Ljava/lang/String;

    sget v0, Lcom/intercom/input/gallery/m$h;->intercom_composer_empty_view_intercom_composer_actionButtonText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->blY:Ljava/lang/String;

    sget v0, Lcom/intercom/input/gallery/m$h;->intercom_composer_empty_view_intercom_composer_internalPaddingTop:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/intercom/input/gallery/EmptyView;->blZ:I

    sget v0, Lcom/intercom/input/gallery/m$h;->intercom_composer_empty_view_intercom_composer_internalPaddingBottom:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/intercom/input/gallery/EmptyView;->bma:I

    sget v0, Lcom/intercom/input/gallery/m$h;->intercom_composer_empty_view_intercom_composer_internalPaddingLeft:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/intercom/input/gallery/EmptyView;->bmb:I

    sget v0, Lcom/intercom/input/gallery/m$h;->intercom_composer_empty_view_intercom_composer_internalPaddingRight:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/intercom/input/gallery/EmptyView;->bmc:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->blW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->blX:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->blY:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/intercom/input/gallery/EmptyView;->blZ:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/intercom/input/gallery/EmptyView;->bma:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/intercom/input/gallery/EmptyView;->bmb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/intercom/input/gallery/EmptyView;->bmc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/intercom/input/gallery/m$d;->empty_text_title:I

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->title:Landroid/widget/TextView;

    sget v0, Lcom/intercom/input/gallery/m$d;->empty_text_subtitle:I

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->subtitle:Landroid/widget/TextView;

    sget v0, Lcom/intercom/input/gallery/m$d;->empty_action_button:I

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->actionButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/intercom/input/gallery/EmptyView;->blW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->subtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/intercom/input/gallery/EmptyView;->blX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->blY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->actionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/intercom/input/gallery/EmptyView;->blY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v0, Lcom/intercom/input/gallery/m$d;->empty_view_layout:I

    invoke-virtual {p0, v0}, Lcom/intercom/input/gallery/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/intercom/input/gallery/EmptyView;->bmb:I

    iget v2, p0, Lcom/intercom/input/gallery/EmptyView;->blZ:I

    iget v3, p0, Lcom/intercom/input/gallery/EmptyView;->bmc:I

    iget v4, p0, Lcom/intercom/input/gallery/EmptyView;->bma:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->actionButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setActionButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setActionButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setThemeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/EmptyView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
