.class Lio/intercom/android/sdk/blocks/Attachment;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/AttachmentListBlock;
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/LocalAttachmentBlock;


# static fields
.field private static final ATTACHMENT_LINE_SPACING_DP:I = 0xc

.field private static final DIVIDER_MARGIN_DP:I = 0x6

.field private static final DIVIDER_WIDTH_DP:I = 0x1

.field private static final LOCAL_ICON_SIZE_DP:I = 0x14


# instance fields
.field private final appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final style:Lio/intercom/android/sdk/blocks/StyleType;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/StyleType;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Attachment;->style:Lio/intercom/android/sdk/blocks/StyleType;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Attachment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method

.method private getAttachmentIcon(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_icn_attachment:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private getAttachmentListView(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_full_transparent_full_black:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-static {v0, v2, v2}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    return-object v0
.end method

.method private getDivider(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v3, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v3, -0x1

    invoke-static {v2, v0, v3}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    return-object v2
.end method

.method private getIconHolder(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 3

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0, v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x13

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v1
.end method

.method private getLocalAttachmentView(Landroid/content/Context;)Lio/intercom/android/sdk/views/ProgressLinearLayout;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lio/intercom/android/sdk/views/ProgressLinearLayout;

    invoke-direct {v0, p1}, Lio/intercom/android/sdk/views/ProgressLinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v1}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/ProgressLinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method private getTextView(Ljava/lang/String;Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v1}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->setSmallLineSpacing(Landroid/widget/TextView;)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p2, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_full_transparent_full_black:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getUploadProgressBar(Landroid/content/Context;)Lio/intercom/android/sdk/views/UploadProgressBar;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lio/intercom/android/sdk/views/UploadProgressBar;

    invoke-direct {v0, p1}, Lio/intercom/android/sdk/views/UploadProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/UploadProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public addAttachment(Lio/intercom/android/sdk/blocks/models/BlockAttachment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Attachment;->getLocalAttachmentView(Landroid/content/Context;)Lio/intercom/android/sdk/views/ProgressLinearLayout;

    move-result-object v1

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Attachment;->getIconHolder(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Attachment;->getAttachmentIcon(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Attachment;->getUploadProgressBar(Landroid/content/Context;)Lio/intercom/android/sdk/views/UploadProgressBar;

    move-result-object v4

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/blocks/Attachment;->getDivider(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lio/intercom/android/sdk/blocks/Attachment;->getTextView(Ljava/lang/String;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Lio/intercom/android/sdk/views/ProgressLinearLayout;->setUploadProgressBar(Lio/intercom/android/sdk/views/UploadProgressBar;)V

    invoke-virtual {v1, v3}, Lio/intercom/android/sdk/views/ProgressLinearLayout;->setAttachmentIcon(Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/views/ProgressLinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Lio/intercom/android/sdk/views/ProgressLinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/views/ProgressLinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x3

    invoke-static {v1, v0, p3}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v1
.end method

.method public addAttachmentList(Ljava/util/List;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/BlockAttachment;",
            ">;ZZ",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Attachment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/intercom/android/sdk/blocks/Attachment;->getAttachmentListView(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    new-instance v6, Lio/intercom/android/sdk/blocks/views/AttachmentView;

    iget-object v7, p0, Lio/intercom/android/sdk/blocks/Attachment;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;

    invoke-direct {v6, v3, v7, v2, v0}, Lio/intercom/android/sdk/blocks/views/AttachmentView;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;ILio/intercom/android/sdk/blocks/models/BlockAttachment;)V

    add-int/lit8 v0, v5, -0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v9, v3}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v9

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-static {v4, v0, p3}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object v4
.end method
