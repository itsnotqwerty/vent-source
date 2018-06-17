.class public Lio/intercom/android/sdk/blocks/ViewHolderGenerator;
.super Ljava/lang/Object;


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

.field private final bus:Lio/intercom/a/c/a/b;

.field private final buttonClickListener:Lio/intercom/android/sdk/blocks/ButtonClickListener;

.field private final conversationId:Ljava/lang/String;

.field private final gson:Lio/intercom/a/b/a/e;

.field private final imageListener:Lio/intercom/android/sdk/blocks/ImageClickListener;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Ljava/lang/String;Lio/intercom/android/sdk/blocks/ImageClickListener;Lio/intercom/android/sdk/blocks/ButtonClickListener;Lio/intercom/a/a/a/j;Lio/intercom/a/b/a/e;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/metrics/MetricTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/UploadingImageCache;",
            "Lio/intercom/android/sdk/api/Api;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/blocks/ImageClickListener;",
            "Lio/intercom/android/sdk/blocks/ButtonClickListener;",
            "Lio/intercom/a/a/a/j;",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/c/a/b;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->api:Lio/intercom/android/sdk/api/Api;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->conversationId:Ljava/lang/String;

    iput-object p5, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->imageListener:Lio/intercom/android/sdk/blocks/ImageClickListener;

    iput-object p6, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->buttonClickListener:Lio/intercom/android/sdk/blocks/ButtonClickListener;

    iput-object p7, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->requestManager:Lio/intercom/a/a/a/j;

    iput-object p8, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->gson:Lio/intercom/a/b/a/e;

    iput-object p9, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->bus:Lio/intercom/a/c/a/b;

    iput-object p10, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    return-void
.end method

.method public static createLayoutFromBlocks(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Ljava/util/List;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/blocks/BlocksViewHolder;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/blocks/Blocks;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getBlocksTwig()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lio/intercom/android/sdk/blocks/Blocks;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/twig/Twig;)V

    invoke-virtual {v0, p1, p0}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public static createPartsLayout(Lio/intercom/android/sdk/blocks/BlocksViewHolder;Lio/intercom/android/sdk/models/Part;Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 6

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Attachments;

    new-instance v4, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    invoke-direct {v4}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Attachments;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withName(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Attachments;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->build()Lio/intercom/android/sdk/blocks/models/BlockAttachment;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;-><init>()V

    sget-object v3, Lio/intercom/android/sdk/blocks/BlockType;->ATTACHMENTLIST:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v3}, Lio/intercom/android/sdk/blocks/BlockType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withAttachments(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->build()Lio/intercom/android/sdk/blocks/models/Block;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lio/intercom/android/sdk/blocks/Blocks;

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getBlocksTwig()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Lio/intercom/android/sdk/blocks/Blocks;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/twig/Twig;)V

    invoke-virtual {v0, v1, p0}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 9

    new-instance v6, Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-direct {v6}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;-><init>()V

    new-instance v7, Lio/intercom/android/sdk/blocks/Button;

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->buttonClickListener:Lio/intercom/android/sdk/blocks/ButtonClickListener;

    invoke-direct {v7, p2, v0, v1}, Lio/intercom/android/sdk/blocks/Button;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/blocks/ButtonClickListener;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/Heading;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v0, p2, v1}, Lio/intercom/android/sdk/blocks/Heading;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;)V

    new-instance v1, Lio/intercom/android/sdk/blocks/ListBlock;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v1, p2, v2}, Lio/intercom/android/sdk/blocks/ListBlock;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;)V

    new-instance v8, Lio/intercom/android/sdk/blocks/Attachment;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v8, p2, v2}, Lio/intercom/android/sdk/blocks/Attachment;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;)V

    invoke-virtual {v6, p1}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setLayout(I)V

    new-instance v2, Lio/intercom/android/sdk/blocks/Paragraph;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v2, p2, v3}, Lio/intercom/android/sdk/blocks/Paragraph;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;)V

    invoke-virtual {v6, v2}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setParagraph(Lio/intercom/android/sdk/blocks/blockInterfaces/ParagraphBlock;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setHeading(Lio/intercom/android/sdk/blocks/blockInterfaces/HeadingBlock;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setSubheading(Lio/intercom/android/sdk/blocks/blockInterfaces/SubheadingBlock;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/Code;

    invoke-direct {v0}, Lio/intercom/android/sdk/blocks/Code;-><init>()V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setCode(Lio/intercom/android/sdk/blocks/blockInterfaces/CodeBlock;)V

    invoke-virtual {v6, v1}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setUnorderedList(Lio/intercom/android/sdk/blocks/blockInterfaces/UnorderedListBlock;)V

    invoke-virtual {v6, v1}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setOrderedList(Lio/intercom/android/sdk/blocks/blockInterfaces/OrderedListBlock;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/NetworkImage;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->imageListener:Lio/intercom/android/sdk/blocks/ImageClickListener;

    iget-object v5, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->requestManager:Lio/intercom/a/a/a/j;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/NetworkImage;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/blocks/ImageClickListener;Lio/intercom/a/a/a/j;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setImage(Lio/intercom/android/sdk/blocks/blockInterfaces/ImageBlock;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/LocalImage;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v0, p2, v1}, Lio/intercom/android/sdk/blocks/LocalImage;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/a/a/a/j;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setLocalImage(Lio/intercom/android/sdk/blocks/blockInterfaces/LocalImageBlock;)V

    invoke-virtual {v6, v7}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setButton(Lio/intercom/android/sdk/blocks/blockInterfaces/ButtonBlock;)V

    invoke-virtual {v6, v8}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setAttachmentList(Lio/intercom/android/sdk/blocks/blockInterfaces/AttachmentListBlock;)V

    invoke-virtual {v6, v8}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setLocalAttachment(Lio/intercom/android/sdk/blocks/blockInterfaces/LocalAttachmentBlock;)V

    invoke-virtual {v6, v7}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setTwitterButton(Lio/intercom/android/sdk/blocks/blockInterfaces/TwitterBlock;)V

    invoke-virtual {v6, v7}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setFacebookButton(Lio/intercom/android/sdk/blocks/blockInterfaces/FacebookBlock;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/Video;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v0, p2, v1, v2, v3}, Lio/intercom/android/sdk/blocks/Video;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setVideo(Lio/intercom/android/sdk/blocks/blockInterfaces/VideoBlock;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/LinkCard;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->conversationId:Ljava/lang/String;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v0, p2, v1, v2, v3}, Lio/intercom/android/sdk/blocks/LinkCard;-><init>(Lio/intercom/android/sdk/blocks/StyleType;Lio/intercom/android/sdk/Provider;Ljava/lang/String;Lio/intercom/a/a/a/j;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setLink(Lio/intercom/android/sdk/blocks/blockInterfaces/LinkBlock;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->conversationId:Ljava/lang/String;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;-><init>(Lio/intercom/android/sdk/api/Api;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setConversationRating(Lio/intercom/android/sdk/blocks/blockInterfaces/ConversationRatingBlock;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/LinkListRenderer;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->conversationId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/blocks/LinkListRenderer;-><init>(Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setLinkList(Lio/intercom/android/sdk/blocks/blockInterfaces/LinkListBlock;)V

    new-instance v0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->gson:Lio/intercom/a/b/a/e;

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->bus:Lio/intercom/a/c/a/b;

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v5, p0, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->conversationId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCard;-><init>(Lio/intercom/android/sdk/Provider;Lio/intercom/a/b/a/e;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lio/intercom/android/sdk/blocks/BlocksViewHolder;->setMessengerCardBlock(Lio/intercom/android/sdk/blocks/blockInterfaces/MessengerCardBlock;)V

    return-object v6
.end method


# virtual methods
.method public getAdminHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_admin_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->ADMIN:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChatFullHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_admin_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getContainerCardHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_container_card_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->CONTAINER_CARD:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationRatingHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_container_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getLinkHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_container_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getLinkListHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_container_card_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getNoteHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_note_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->NOTE:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getPostHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_container_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->POST:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_user_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->PREVIEW:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getUserHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;
    .locals 2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_user_layout:I

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->USER:Lio/intercom/android/sdk/blocks/StyleType;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->generateHolder(ILio/intercom/android/sdk/blocks/StyleType;)Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v0

    return-object v0
.end method
