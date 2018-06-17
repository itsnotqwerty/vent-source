.class Lio/intercom/android/sdk/blocks/LinkListRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/LinkListBlock;


# instance fields
.field private final api:Lio/intercom/android/sdk/api/Api;

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

.field private final conversationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/api/Api;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer;->api:Lio/intercom/android/sdk/api/Api;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer;->conversationId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/blocks/LinkListRenderer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/blocks/LinkListRenderer;)Lio/intercom/android/sdk/api/Api;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer;->api:Lio/intercom/android/sdk/api/Api;

    return-object v0
.end method

.method private addLinkToLayout(Landroid/widget/LinearLayout;Lio/intercom/android/sdk/blocks/models/Link;ILandroid/content/Context;Z)V
    .locals 7

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v6, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz p5, :cond_0

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Link;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2, p4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    invoke-static {v5, p4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v3

    invoke-static {v5, p4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v4

    invoke-static {v5, p4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v2, "educate.help_center"

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Link;->getLinkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lio/intercom/android/sdk/R$drawable;->intercom_open_help_center:I

    invoke-static {p4, v2}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p3, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2, p4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;

    invoke-direct {v1, p0, p2, p4, p1}, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;-><init>(Lio/intercom/android/sdk/blocks/LinkListRenderer;Lio/intercom/android/sdk/blocks/models/Link;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public addLinkListBlock(Lio/intercom/android/sdk/blocks/models/LinkList;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-virtual {v2, v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, v4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {v1, v2}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v3

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/LinkList;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/blocks/models/Link;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/LinkListRenderer;->addLinkToLayout(Landroid/widget/LinearLayout;Lio/intercom/android/sdk/blocks/models/Link;ILandroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/LinkList;->getFooterLink()Lio/intercom/android/sdk/blocks/models/Link;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/blocks/models/Link;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/LinkListRenderer;->addLinkToLayout(Landroid/widget/LinearLayout;Lio/intercom/android/sdk/blocks/models/Link;ILandroid/content/Context;Z)V

    :cond_1
    return-object v1
.end method
