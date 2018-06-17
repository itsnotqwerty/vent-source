.class Lio/intercom/android/sdk/blocks/Button;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/ButtonBlock;
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/FacebookBlock;
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/TwitterBlock;


# static fields
.field private static final FACEBOOK_LOGO_PADDING_LEFT_DP:I = 0x14

.field private static final TWITTER_LOGO_PADDING_LEFT_DP:I = 0x10


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

.field private final buttonClickListener:Lio/intercom/android/sdk/blocks/ButtonClickListener;

.field private final style:Lio/intercom/android/sdk/blocks/StyleType;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/blocks/ButtonClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/StyleType;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/blocks/ButtonClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Button;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/Button;->buttonClickListener:Lio/intercom/android/sdk/blocks/ButtonClickListener;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/blocks/Button;)Lio/intercom/android/sdk/blocks/ButtonClickListener;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Button;->buttonClickListener:Lio/intercom/android/sdk/blocks/ButtonClickListener;

    return-object v0
.end method

.method private createButtonWithLogo(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;
    .locals 7

    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    invoke-static {v1, v4, v0}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Button;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    new-instance v2, Lio/intercom/android/sdk/views/ButtonSelector;

    sget v3, Lio/intercom/android/sdk/R$drawable;->intercom_border:I

    invoke-direct {v2, p1, v3, v0}, Lio/intercom/android/sdk/views/ButtonSelector;-><init>(Landroid/content/Context;II)V

    invoke-static {v1, v2}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    invoke-static {v2, v0, v4}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_full_transparent_full_black:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v2, p3, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x13

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4, v4}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    sget v3, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p1, v3}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget v3, Lio/intercom/android/sdk/R$color;->intercom_full_transparent_full_black:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoMediumTypeface(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private createDefaultTextView(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;)Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Button;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    new-instance v1, Lio/intercom/android/sdk/blocks/views/ParagraphView;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {v1, p1, v2, p3, v0}, Lio/intercom/android/sdk/blocks/views/ParagraphView;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/blocks/BlockAlignment;I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-virtual {p3}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private createFullWidthButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;
    .locals 4

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextSize(F)V

    sget v0, Lio/intercom/android/sdk/R$color;->intercom_white:I

    invoke-static {p1, v0}, Landroid/support/v4/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setGravity(I)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v0, v2}, Lio/intercom/android/sdk/utilities/BlockUtils;->createLayoutParams(Landroid/view/View;II)V

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/BlockUtils;->setDefaultMarginBottom(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Button;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    new-instance v2, Lio/intercom/android/sdk/views/ButtonSelector;

    sget v3, Lio/intercom/android/sdk/R$drawable;->intercom_border:I

    invoke-direct {v2, p1, v3, v0}, Lio/intercom/android/sdk/views/ButtonSelector;-><init>(Landroid/content/Context;II)V

    invoke-static {v1, v2}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoMediumTypeface(Landroid/widget/TextView;)V

    return-object v1
.end method

.method private setButtonDefaults(Landroid/view/View;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;Z)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Button;->buttonClickListener:Lio/intercom/android/sdk/blocks/ButtonClickListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/blocks/ButtonClickListener;->shouldHandleClicks()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/blocks/Button$1;

    invoke-direct {v0, p0, p2}, Lio/intercom/android/sdk/blocks/Button$1;-><init>(Lio/intercom/android/sdk/blocks/Button;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p3}, Lio/intercom/android/sdk/blocks/BlockAlignment;->getGravity()I

    move-result v0

    invoke-static {p1, v0, p4}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    return-object p1
.end method


# virtual methods
.method public addButton(Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v2, Lio/intercom/android/sdk/blocks/StyleType;->NOTE:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v2, Lio/intercom/android/sdk/blocks/StyleType;->POST:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v2, Lio/intercom/android/sdk/blocks/StyleType;->CONTAINER_CARD:Lio/intercom/android/sdk/blocks/StyleType;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, v0, p1}, Lio/intercom/android/sdk/blocks/Button;->createFullWidthButton(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2, p3, p5}, Lio/intercom/android/sdk/blocks/Button;->setButtonDefaults(Landroid/view/View;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v0, p1, p3}, Lio/intercom/android/sdk/blocks/Button;->createDefaultTextView(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method

.method public addFacebookButton(Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_facebook_like:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v3, Lio/intercom/android/sdk/blocks/StyleType;->NOTE:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v3, Lio/intercom/android/sdk/blocks/StyleType;->POST:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v3, Lio/intercom/android/sdk/blocks/StyleType;->CONTAINER_CARD:Lio/intercom/android/sdk/blocks/StyleType;

    if-ne v2, v3, :cond_1

    :cond_0
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2, v0}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    sget v3, Lio/intercom/android/sdk/R$drawable;->intercom_icn_fb:I

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/Button;->createButtonWithLogo(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1, p2, p4}, Lio/intercom/android/sdk/blocks/Button;->setButtonDefaults(Landroid/view/View;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v0, v1, p2}, Lio/intercom/android/sdk/blocks/Button;->createDefaultTextView(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method

.method public addTwitterButton(Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_twitter_follow:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v3, Lio/intercom/android/sdk/blocks/StyleType;->NOTE:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v3, Lio/intercom/android/sdk/blocks/StyleType;->POST:Lio/intercom/android/sdk/blocks/StyleType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/Button;->style:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v3, Lio/intercom/android/sdk/blocks/StyleType;->CONTAINER_CARD:Lio/intercom/android/sdk/blocks/StyleType;

    if-ne v2, v3, :cond_1

    :cond_0
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2, v0}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    sget v3, Lio/intercom/android/sdk/R$drawable;->intercom_icn_twitter:I

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/Button;->createButtonWithLogo(Landroid/content/Context;Ljava/lang/String;II)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p1, p2, p4}, Lio/intercom/android/sdk/blocks/Button;->setButtonDefaults(Landroid/view/View;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v0, v1, p2}, Lio/intercom/android/sdk/blocks/Button;->createDefaultTextView(Landroid/content/Context;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method
