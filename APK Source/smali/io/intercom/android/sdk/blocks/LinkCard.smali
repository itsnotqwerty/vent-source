.class Lio/intercom/android/sdk/blocks/LinkCard;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/blocks/blockInterfaces/LinkBlock;


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

.field private final conversationId:Ljava/lang/String;

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final style:Lio/intercom/android/sdk/blocks/StyleType;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;Ljava/lang/String;Lio/intercom/a/a/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/StyleType;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Ljava/lang/String;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/LinkCard;->style:Lio/intercom/android/sdk/blocks/StyleType;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/LinkCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/LinkCard;->conversationId:Ljava/lang/String;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/LinkCard;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/blocks/LinkCard;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkCard;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method private addAuthorDetails(Lio/intercom/android/sdk/blocks/models/Link;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Written by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/Link;->getAuthor()Lio/intercom/android/sdk/blocks/models/Author;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Author;->getAvatar()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lio/intercom/android/sdk/models/Avatar;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/Avatar;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/LinkCard;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v2, p2, v1, v0, v3}, Lio/intercom/android/sdk/utilities/AvatarUtils;->createAvatar(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;ILio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method private createLinkBlock(Lio/intercom/android/sdk/blocks/models/Link;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 7

    const/16 v6, 0x8

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_link_block:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lio/intercom/android/sdk/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/Link;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lio/intercom/android/sdk/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lio/intercom/android/sdk/blocks/LinkCard;->setUpDescription(Lio/intercom/android/sdk/blocks/models/Link;Landroid/widget/TextView;)V

    sget v1, Lio/intercom/android/sdk/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget v2, Lio/intercom/android/sdk/R$id;->author:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/Link;->getAuthor()Lio/intercom/android/sdk/blocks/models/Author;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/android/sdk/blocks/models/Author;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-nez p3, :cond_1

    const-string v1, "educate.article"

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/Link;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lio/intercom/android/sdk/blocks/LinkCard$1;

    invoke-direct {v1, p0, v3, p1, v0}, Lio/intercom/android/sdk/blocks/LinkCard$1;-><init>(Lio/intercom/android/sdk/blocks/LinkCard;Landroid/content/Context;Lio/intercom/android/sdk/blocks/models/Link;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_conversation_card_background:I

    invoke-static {v3, v1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v6}, Lio/intercom/android/sdk/utilities/BlockUtils;->setMarginBottom(Landroid/view/View;I)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_link_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, 0x3

    invoke-static {v0, v1, p4}, Lio/intercom/android/sdk/utilities/BlockUtils;->setLayoutMarginsAndGravity(Landroid/view/View;IZ)V

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0, p1, v1, v2, v4}, Lio/intercom/android/sdk/blocks/LinkCard;->addAuthorDetails(Lio/intercom/android/sdk/blocks/models/Link;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isOnlyBlock(ZZ)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUpDescription(Lio/intercom/android/sdk/blocks/models/Link;Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/Link;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private shouldDisplayLink()Z
    .locals 2

    sget-object v0, Lio/intercom/android/sdk/blocks/StyleType;->ADMIN:Lio/intercom/android/sdk/blocks/StyleType;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkCard;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/StyleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkCard;->style:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/StyleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addLinkBlock(Lio/intercom/android/sdk/blocks/models/Link;ZZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-direct {p0, p2, p3}, Lio/intercom/android/sdk/blocks/LinkCard;->isOnlyBlock(ZZ)Z

    move-result v0

    invoke-direct {p0}, Lio/intercom/android/sdk/blocks/LinkCard;->shouldDisplayLink()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p4, v0, p3}, Lio/intercom/android/sdk/blocks/LinkCard;->createLinkBlock(Lio/intercom/android/sdk/blocks/models/Link;Landroid/view/ViewGroup;ZZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkCard;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v1

    new-instance v0, Lio/intercom/android/sdk/blocks/views/ParagraphView;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lio/intercom/android/sdk/blocks/StyleType;->ADMIN:Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v4, Lio/intercom/android/sdk/blocks/BlockAlignment;->LEFT:Lio/intercom/android/sdk/blocks/BlockAlignment;

    invoke-direct {v0, v2, v3, v4, v1}, Lio/intercom/android/sdk/blocks/views/ParagraphView;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/blocks/BlockAlignment;I)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/Link;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/android/sdk/commons/utilities/HtmlCompat;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
