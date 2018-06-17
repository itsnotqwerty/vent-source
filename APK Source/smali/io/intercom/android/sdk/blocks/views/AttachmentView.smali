.class public Lio/intercom/android/sdk/blocks/views/AttachmentView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final ATTACHMENT_ICON_WIDTH_DP:I = 0x14

.field static final DIVIDER_MARGIN_DP:I = 0x6

.field static final DIVIDER_WIDTH_DP:I = 0x1


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;ILio/intercom/android/sdk/blocks/models/BlockAttachment;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4}, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/blocks/views/AttachmentView;->url:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->setOrientation(I)V

    invoke-direct {p0, p1, p2, p3}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->setupIcon(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->addView(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->isUserMessage(Lio/intercom/android/sdk/blocks/StyleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->setupDivider(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p4}, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->setupName(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isUserMessage(Lio/intercom/android/sdk/blocks/StyleType;)Z
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/blocks/StyleType;->PREVIEW:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v0, p1, :cond_0

    sget-object v0, Lio/intercom/android/sdk/blocks/StyleType;->USER:Lio/intercom/android/sdk/blocks/StyleType;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupDivider(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private setupIcon(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;I)Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x13

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_icn_attachment:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p2}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->isUserMessage(Lio/intercom/android/sdk/blocks/StyleType;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-object v0
.end method

.method private setupName(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;ILjava/lang/String;)Landroid/widget/TextView;
    .locals 4

    const/16 v3, 0x13

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_full_transparent_full_black:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p2}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->isUserMessage(Lio/intercom/android/sdk/blocks/StyleType;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p1, v1}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/views/AttachmentView;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lio/intercom/android/sdk/blocks/views/AttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/IntentUtils;->safelyOpenIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
