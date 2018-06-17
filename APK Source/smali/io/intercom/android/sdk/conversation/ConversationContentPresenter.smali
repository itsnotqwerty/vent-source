.class Lio/intercom/android/sdk/conversation/ConversationContentPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;
    }
.end annotation


# static fields
.field private static final IMAGE_MIME_TYPE:Ljava/lang/String; = "image"

.field private static final PART_DISPLAY_DELIVERED_TIMEOUT:J

.field static final TIMESTAMP_UPDATE_PERIOD:J


# instance fields
.field private final adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

.field private final api:Lio/intercom/android/sdk/api/Api;

.field private final blocks:Lio/intercom/android/sdk/blocks/Blocks;

.field private final blocksAdminViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

.field private final blocksAnnouncementViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

.field private final blocksConversationRatingViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

.field private final blocksLinkListHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

.field private final blocksLinkViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

.field private final blocksPreviewViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

.field private final blocksUserViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

.field private conversationId:Ljava/lang/String;

.field private final conversationList:Landroid/support/v7/widget/RecyclerView;

.field private final host:Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;

.field private final intercomLinkPresenter:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

.field private final isTypingViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/views/AdminIsTypingView;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private final loadingPart:Lio/intercom/android/sdk/models/Part;

.field private final opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;"
        }
    .end annotation
.end field

.field private final pill:Landroid/widget/TextView;

.field private replyDeliveredUpdater:Ljava/lang/Runnable;

.field final sendingParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;"
        }
    .end annotation
.end field

.field private final soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

.field private final timestampAdder:Lio/intercom/android/sdk/blocks/function/TimestampAdder;

.field private final timestampUpdater:Ljava/lang/Runnable;

.field private final uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;

.field private final userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->PART_DISPLAY_DELIVERED_TIMEOUT:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->TIMESTAMP_UPDATE_PERIOD:J

    return-void
.end method

.method constructor <init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;Landroid/support/v7/widget/RecyclerView;Lio/intercom/android/sdk/conversation/ConversationPartAdapter;Landroid/support/v7/widget/LinearLayoutManager;Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;Landroid/widget/TextView;Ljava/util/List;Lio/intercom/android/sdk/conversation/SoundPlayer;Lio/intercom/android/sdk/blocks/Blocks;Lio/intercom/android/sdk/blocks/ViewHolderGenerator;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;Lio/intercom/android/sdk/blocks/UploadingImageCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lio/intercom/android/sdk/conversation/ConversationPartAdapter;",
            "Landroid/support/v7/widget/LinearLayoutManager;",
            "Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;",
            "Landroid/widget/TextView;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;",
            "Lio/intercom/android/sdk/conversation/SoundPlayer;",
            "Lio/intercom/android/sdk/blocks/Blocks;",
            "Lio/intercom/android/sdk/blocks/ViewHolderGenerator;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/android/sdk/api/Api;",
            "Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;",
            "Lio/intercom/android/sdk/blocks/UploadingImageCache;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lio/intercom/android/sdk/models/Part$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/models/Part$Builder;-><init>()V

    const-string v2, "loading_layout_style"

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/models/Part$Builder;->withStyle(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part$Builder;->build()Lio/intercom/android/sdk/models/Part;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->loadingPart:Lio/intercom/android/sdk/models/Part;

    invoke-static {}, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->create()Lio/intercom/android/sdk/blocks/function/TimestampAdder;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->timestampAdder:Lio/intercom/android/sdk/blocks/function/TimestampAdder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->sendingParts:Ljava/util/List;

    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isTypingViews:Ljava/util/Map;

    new-instance v1, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$10;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$10;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->timestampUpdater:Ljava/lang/Runnable;

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->host:Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iput-object p4, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p5, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->intercomLinkPresenter:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    iput-object p6, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->pill:Landroid/widget/TextView;

    iput-object p7, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    iput-object p8, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    iput-object p9, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocks:Lio/intercom/android/sdk/blocks/Blocks;

    iput-object p11, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iput-object p12, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->api:Lio/intercom/android/sdk/api/Api;

    move-object/from16 v0, p13

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    move-object/from16 v0, p14

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;

    invoke-virtual {p10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getUserHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksUserViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {p10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getContainerCardHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksAnnouncementViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {p10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getAdminHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksAdminViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {p10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getLinkHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksLinkViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {p10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getConversationRatingHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksConversationRatingViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {p10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getPreviewHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksPreviewViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {p10}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;->getLinkListHolder()Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksLinkListHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->pill:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->intercomLinkPresenter:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->smoothScrollToBottom()V

    return-void
.end method

.method static synthetic access$300(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Lio/intercom/android/sdk/api/Api;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->api:Lio/intercom/android/sdk/api/Api;

    return-object v0
.end method

.method static synthetic access$400(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Lio/intercom/android/sdk/conversation/ConversationPartAdapter;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    return-object v0
.end method

.method static synthetic access$600(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private addSendingPart(Ljava/util/List;)Lio/intercom/android/sdk/models/Part;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;)",
            "Lio/intercom/android/sdk/models/Part;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->createSendingPart(Ljava/util/List;)Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->sendingParts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->displaySendingPart(Lio/intercom/android/sdk/models/Part;)V

    return-object v0
.end method

.method private addViewForPart(Lio/intercom/android/sdk/models/Part;)V
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

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v4

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Attachments;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withContentType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

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
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->getIntercomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/models/Participant;->isUserWithId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocks:Lio/intercom/android/sdk/blocks/Blocks;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksUserViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {v2, v1, v3}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    :goto_1
    return-void

    :cond_2
    const-string v0, "post"

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "note"

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocks:Lio/intercom/android/sdk/blocks/Blocks;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksAnnouncementViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {v2, v1, v3}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isLinkCard()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocks:Lio/intercom/android/sdk/blocks/Blocks;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksLinkViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {v2, v1, v3}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lio/intercom/android/sdk/blocks/BlockType;->CONVERSATIONRATING:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/models/Part;->isSingleBlockPartOfType(Lio/intercom/android/sdk/blocks/BlockType;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocks:Lio/intercom/android/sdk/blocks/Blocks;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksConversationRatingViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {v2, v1, v3}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lio/intercom/android/sdk/blocks/BlockType;->LINKLIST:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/models/Part;->isSingleBlockPartOfType(Lio/intercom/android/sdk/blocks/BlockType;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocks:Lio/intercom/android/sdk/blocks/Blocks;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksLinkListHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {v2, v1, v3}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocks:Lio/intercom/android/sdk/blocks/Blocks;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksAdminViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {v2, v1, v3}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method static create(Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;Landroid/support/v7/widget/RecyclerView;Lio/intercom/android/sdk/conversation/ConversationPartAdapter;Lio/intercom/android/sdk/views/IntercomLinkView;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/api/Api;Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;Lio/intercom/android/sdk/conversation/SoundPlayer;Lio/intercom/android/sdk/blocks/Blocks;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;Lio/intercom/a/a/a/j;)Lio/intercom/android/sdk/conversation/ConversationContentPresenter;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lio/intercom/android/sdk/conversation/ConversationPartAdapter;",
            "Lio/intercom/android/sdk/views/IntercomLinkView;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/api/Api;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            "Lio/intercom/android/sdk/conversation/SoundPlayer;",
            "Lio/intercom/android/sdk/blocks/Blocks;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;",
            "Lio/intercom/a/a/a/j;",
            ")",
            "Lio/intercom/android/sdk/conversation/ConversationContentPresenter;"
        }
    .end annotation

    new-instance v13, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;-><init>(Lio/intercom/android/sdk/views/IntercomLinkView;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/api/Api;Ljava/util/List;Ljava/lang/String;)V

    new-instance v3, Lio/intercom/android/sdk/blocks/UploadingImageCache;

    invoke-direct {v3}, Lio/intercom/android/sdk/blocks/UploadingImageCache;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v4

    new-instance v2, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;

    new-instance v7, Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Lio/intercom/android/sdk/blocks/LightboxOpeningImageClickListener;-><init>(Lio/intercom/android/sdk/api/Api;)V

    new-instance v8, Lio/intercom/android/sdk/blocks/LinkOpeningButtonClickListener;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Lio/intercom/android/sdk/blocks/LinkOpeningButtonClickListener;-><init>(Lio/intercom/android/sdk/api/Api;)V

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getGson()Lio/intercom/a/b/a/e;

    move-result-object v10

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v11

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v12

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move-object/from16 v9, p13

    invoke-direct/range {v2 .. v12}, Lio/intercom/android/sdk/blocks/ViewHolderGenerator;-><init>(Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/Provider;Ljava/lang/String;Lio/intercom/android/sdk/blocks/ImageClickListener;Lio/intercom/android/sdk/blocks/ButtonClickListener;Lio/intercom/a/a/a/j;Lio/intercom/a/b/a/e;Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    new-instance v4, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v13

    move-object v9, v1

    move-object/from16 v10, p8

    move-object/from16 v11, p6

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object v14, v2

    move-object/from16 v15, p11

    move-object/from16 v16, p5

    move-object/from16 v17, p12

    move-object/from16 v18, v3

    invoke-direct/range {v4 .. v18}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;Landroid/support/v7/widget/RecyclerView;Lio/intercom/android/sdk/conversation/ConversationPartAdapter;Landroid/support/v7/widget/LinearLayoutManager;Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;Landroid/widget/TextView;Ljava/util/List;Lio/intercom/android/sdk/conversation/SoundPlayer;Lio/intercom/android/sdk/blocks/Blocks;Lio/intercom/android/sdk/blocks/ViewHolderGenerator;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;Lio/intercom/android/sdk/blocks/UploadingImageCache;)V

    return-object v4
.end method

.method private createBlocksForUpload(Lio/intercom/android/sdk/models/events/UploadEvent;Lio/intercom/android/sdk/blocks/models/Block;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/events/UploadEvent;",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/UploadEvent;->getUpload()Lio/intercom/android/sdk/models/Upload;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Upload;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Block;->toBuilder()Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/blocks/BlockType;->IMAGE:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/BlockType;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/UploadEvent;->getUpload()Lio/intercom/android/sdk/models/Upload;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Upload;->getPublicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Block;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment;->toBuilder()Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/UploadEvent;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withSize(J)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/UploadEvent;->getUpload()Lio/intercom/android/sdk/models/Upload;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Upload;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withId(I)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->build()Lio/intercom/android/sdk/blocks/models/BlockAttachment;

    move-result-object v0

    invoke-virtual {p2}, Lio/intercom/android/sdk/blocks/models/Block;->toBuilder()Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withAttachments(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/blocks/BlockType;->ATTACHMENTLIST:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/BlockType;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private createSendingPart(Ljava/util/List;)Lio/intercom/android/sdk/models/Part;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;)",
            "Lio/intercom/android/sdk/models/Part;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/models/Part$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Part$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v2}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/models/Part$Builder;->withCreatedAt(J)Lio/intercom/android/sdk/models/Part$Builder;

    move-result-object v0

    const-string v1, "chat"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Part$Builder;->withStyle(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/models/Part$Builder;->withBlocks(Ljava/util/List;)Lio/intercom/android/sdk/models/Part$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part$Builder;->build()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/models/Part$MessageState;->SENDING:Lio/intercom/android/sdk/models/Part$MessageState;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Part;->setMessageState(Lio/intercom/android/sdk/models/Part$MessageState;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->getUserParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Part;->setParticipant(Lio/intercom/android/sdk/models/Participant;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Part;->setEntranceAnimation(Z)V

    return-object v0
.end method

.method private displaySendingPart(Lio/intercom/android/sdk/models/Part;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playReplySentSound()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocks:Lio/intercom/android/sdk/blocks/Blocks;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->blocksPreviewViewHolder:Lio/intercom/android/sdk/blocks/BlocksViewHolder;

    invoke-virtual {v1, v2, v3}, Lio/intercom/android/sdk/blocks/Blocks;->createBlocks(Ljava/util/List;Lio/intercom/android/sdk/blocks/BlocksViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->smoothScrollToBottom()V

    return-void
.end method

.method private hideLoadingIndicator()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->loadingPart:Lio/intercom/android/sdk/models/Part;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method private markAsFailed(ILjava/lang/String;Z)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->positionOfPart(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getViewForPart(Lio/intercom/android/sdk/models/Part;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lio/intercom/android/sdk/conversation/UploadProgressListener;

    if-eqz v2, :cond_0

    check-cast v1, Lio/intercom/android/sdk/conversation/UploadProgressListener;

    invoke-interface {v1}, Lio/intercom/android/sdk/conversation/UploadProgressListener;->uploadStopped()V

    :cond_0
    if-eqz p3, :cond_2

    sget-object v1, Lio/intercom/android/sdk/models/Part$MessageState;->UPLOAD_FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    :goto_0
    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Part;->setMessageState(Lio/intercom/android/sdk/models/Part$MessageState;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lio/intercom/android/sdk/models/Part$MessageState;->FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    goto :goto_0
.end method

.method private positionOfPart(ILjava/lang/String;)I
    .locals 1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    :goto_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private retryFailedUpload(Lio/intercom/android/sdk/models/Part;)V
    .locals 6

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->positionOfPart(ILjava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getViewForPart(Lio/intercom/android/sdk/models/Part;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/conversation/UploadProgressListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/conversation/UploadProgressListener;->uploadStarted()V

    move-object v5, v0

    :goto_0
    sget-object v0, Lio/intercom/android/sdk/models/Part$MessageState;->SENDING:Lio/intercom/android/sdk/models/Part$MessageState;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/models/Part;->setMessageState(Lio/intercom/android/sdk/models/Part$MessageState;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->api:Lio/intercom/android/sdk/api/Api;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getUpload()Lcom/intercom/input/gallery/b;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/api/Api;->uploadFile(Lcom/intercom/input/gallery/b;ILjava/lang/String;Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/conversation/UploadProgressListener;)V

    return-void

    :cond_0
    new-instance v5, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$5;

    invoke-direct {v5, p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$5;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V

    goto :goto_0
.end method

.method private showLoadingIndicator()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->loadingPart:Lio/intercom/android/sdk/models/Part;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method private showRetryDialog(Lio/intercom/android/sdk/models/Part;)V
    .locals 3

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_inbox_error_state_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_failed_delivery:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_retry:I

    new-instance v2, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$6;

    invoke-direct {v2, p0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$6;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;Lio/intercom/android/sdk/models/Part;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    return-void
.end method

.method private smoothScrollToBottom()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private updateSendPartOpsMetric()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "finish"

    const-string v2, "time-to-complete-request-send-part-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "start"

    const-string v2, "time-to-render-result-send-part-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$8;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$8;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public addBottomPadding(I)V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    return-void
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->replyDeliveredUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->timestampUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fetchConversation(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "start"

    const-string v2, "time-to-complete-request-load-conversation-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationId:Ljava/lang/String;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$4;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$4;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method getUserParticipant()Lio/intercom/android/sdk/models/Participant;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->getIntercomId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->host:Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;

    invoke-interface {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;->getConversation()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Conversation;->getParticipant(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    sget-object v2, Lio/intercom/android/sdk/models/Participant;->NULL:Lio/intercom/android/sdk/models/Participant;

    if-ne v0, v2, :cond_0

    new-instance v0, Lio/intercom/android/sdk/models/Participant$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Participant$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Participant$Builder;->withId(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant$Builder;->build()Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isAtBottom()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(IIZZ)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->aT(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public newConversationFailure(Lio/intercom/android/sdk/models/events/failure/NewConversationFailedEvent;)V
    .locals 3
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/failure/NewConversationFailedEvent;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/failure/NewConversationFailedEvent;->getPartId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->markAsFailed(ILjava/lang/String;Z)V

    return-void
.end method

.method public newConversationSuccess(Lio/intercom/android/sdk/models/events/NewConversationEvent;)V
    .locals 2
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/NewConversationEvent;->getPartId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->onNewConversation(Lio/intercom/android/sdk/models/events/NewConversationEvent;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->host:Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/NewConversationEvent;->getConversation()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;->onConversationCreated(Lio/intercom/android/sdk/models/Conversation;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onAdminStartedTyping(Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;->getAdminId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isTypingViews:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isTypingViews:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/AdminIsTypingView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->renewTypingAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lio/intercom/android/sdk/models/Part$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Part$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/models/Part$Builder;->withParticipantIsAdmin(Z)Lio/intercom/android/sdk/models/Part$Builder;

    move-result-object v0

    const-string v2, "admin_is_typing_style"

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/models/Part$Builder;->withStyle(Ljava/lang/String;)Lio/intercom/android/sdk/models/Part$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part$Builder;->build()Lio/intercom/android/sdk/models/Part;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->host:Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;

    invoke-interface {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;->getConversation()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Conversation;->getParticipant(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    sget-object v3, Lio/intercom/android/sdk/models/Participant;->NULL:Lio/intercom/android/sdk/models/Participant;

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;->getAdminName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "admin"

    const-string v4, ""

    invoke-virtual {p1}, Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;->getAdminAvatarUrl()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lio/intercom/android/sdk/models/Avatar;->create(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/Avatar;

    move-result-object v5

    invoke-static {v1, v0, v3, v4, v5}, Lio/intercom/android/sdk/models/Participant;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/models/Avatar;)Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/models/Part;->setParticipant(Lio/intercom/android/sdk/models/Participant;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/models/Part;->setEntranceAnimation(Z)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isAtBottom()Z

    move-result v3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_blocks_admin_layout:I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v5, Lio/intercom/android/sdk/views/AdminIsTypingView;

    invoke-direct {v5, v4}, Lio/intercom/android/sdk/views/AdminIsTypingView;-><init>(Landroid/content/Context;)V

    new-instance v4, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$3;

    invoke-direct {v4, p0, v1, v2}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$3;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;Ljava/lang/String;Lio/intercom/android/sdk/models/Part;)V

    invoke-virtual {v5, v4}, Lio/intercom/android/sdk/views/AdminIsTypingView;->setListener(Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isTypingViews:Ljava/util/Map;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->smoothScrollToBottom()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onAdminStoppedTyping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isTypingViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p2}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->positionOfPart(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onConversationFetched(Lio/intercom/android/sdk/models/events/ConversationEvent;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "finish"

    const-string v2, "time-to-complete-request-load-conversation-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "start"

    const-string v2, "time-to-render-result-load-conversation-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ConversationEvent;->getResponse()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getViewForPart(Lio/intercom/android/sdk/models/Part;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->addViewForPart(Lio/intercom/android/sdk/models/Part;)V

    :cond_0
    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->sendingParts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->timestampAdder:Lio/intercom/android/sdk/blocks/function/TimestampAdder;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/function/TimestampAdder;->addDayDividers(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->timestampUpdater:Ljava/lang/Runnable;

    sget-wide v2, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->TIMESTAMP_UPDATE_PERIOD:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$9;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$9;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->intercomLinkPresenter:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->updateIntercomLink(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;)V

    return-void
.end method

.method public onNewConversation(Lio/intercom/android/sdk/models/events/NewConversationEvent;)V
    .locals 3

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->updateSendPartOpsMetric()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/NewConversationEvent;->getConversation()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/NewConversationEvent;->getConversation()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getParts()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationId:Ljava/lang/String;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->sendingParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->addViewForPart(Lio/intercom/android/sdk/models/Part;)V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playReplyDeliveredSound()V

    return-void
.end method

.method public onNewPartReceived()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isTypingViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/AdminIsTypingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/AdminIsTypingView;->cancelTypingAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isAtBottom()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->smoothScrollToBottom()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->pill:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPartClicked(Lio/intercom/android/sdk/models/Part;)V
    .locals 2

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/models/Part$MessageState;->FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->showRetryDialog(Lio/intercom/android/sdk/models/Part;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/models/Part$MessageState;->UPLOAD_FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->retryFailedUpload(Lio/intercom/android/sdk/models/Part;)V

    goto :goto_0
.end method

.method public onProfileScrolled()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->intercomLinkPresenter:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->onProfileScrolled(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReplyDelivered(Lio/intercom/android/sdk/models/events/ReplyEvent;)V
    .locals 4

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->updateSendPartOpsMetric()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ReplyEvent;->getResponse()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ReplyEvent;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ReplyEvent;->getPartId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->positionOfPart(ILjava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->sendingParts:Ljava/util/List;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->addViewForPart(Lio/intercom/android/sdk/models/Part;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Part;->setDisplayDelivered(Z)V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {v1}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playReplyDeliveredSound()V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->replyDeliveredUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v1, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$7;

    invoke-direct {v1, p0, v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$7;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;Lio/intercom/android/sdk/models/Part;)V

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->replyDeliveredUpdater:Ljava/lang/Runnable;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->replyDeliveredUpdater:Ljava/lang/Runnable;

    sget-wide v2, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->PART_DISPLAY_DELIVERED_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onUserContentSeenByAdmin(Lio/intercom/android/sdk/models/events/realtime/UserContentSeenByAdminEvent;)V
    .locals 4
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/realtime/UserContentSeenByAdminEvent;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "seen"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Part;->setSeenByAdmin(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v3, "hide"

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/models/Part;->setSeenByAdmin(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public replyFailure(Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;)V
    .locals 3
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->getPartId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->isUpload()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->markAsFailed(ILjava/lang/String;Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playReplyFailedSound()V

    return-void
.end method

.method retryTapped(Lio/intercom/android/sdk/models/Part;)V
    .locals 5

    sget-object v0, Lio/intercom/android/sdk/models/Part$MessageState;->SENDING:Lio/intercom/android/sdk/models/Part$MessageState;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/models/Part;->setMessageState(Lio/intercom/android/sdk/models/Part$MessageState;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Block;->toBuilder()Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->sendPart(Ljava/util/List;)V

    return-void
.end method

.method public scrollToBottom()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->bA(I)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->bA(I)V

    return-void
.end method

.method public sendPart(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "finish"

    const-string v2, "time-to-process-action-send-part-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "start"

    const-string v2, "time-to-complete-request-send-part-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->addSendingPart(Ljava/util/List;)Lio/intercom/android/sdk/models/Part;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lio/intercom/android/sdk/api/Api;->startNewConversation(Ljava/util/List;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationId:Ljava/lang/String;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/api/Api;->replyToConversation(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public setup()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "finish"

    const-string v2, "time-to-process-action-load-conversation-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$i;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lio/intercom/android/sdk/views/decoration/ConversationItemDecoration;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$h;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bi;

    iput-boolean v4, v0, Landroid/support/v7/widget/bi;->aic:Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$1;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$n;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->intercomLinkPresenter:Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->setup(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->pill:Landroid/widget/TextView;

    new-instance v1, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$2;-><init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showContentView()V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->hideLoadingIndicator()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->pill:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public showErrorView()V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->hideLoadingIndicator()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->pill:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public showLoadingView()V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->showLoadingIndicator()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->pill:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public smoothScrollToTop()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationList:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public uploadFailure(Lio/intercom/android/sdk/models/events/failure/UploadFailedEvent;)V
    .locals 3
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/failure/UploadFailedEvent;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/failure/UploadFailedEvent;->getPartId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->markAsFailed(ILjava/lang/String;Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playReplyFailedSound()V

    return-void
.end method

.method public uploadImage(Ljava/util/List;Lcom/intercom/input/gallery/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;",
            "Lcom/intercom/input/gallery/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->addSendingPart(Ljava/util/List;)Lio/intercom/android/sdk/models/Part;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/intercom/android/sdk/models/Part;->setUpload(Lcom/intercom/input/gallery/b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->uploadingImageCache:Lio/intercom/android/sdk/blocks/UploadingImageCache;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->adapter:Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    invoke-virtual {v5, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getViewForPart(Lio/intercom/android/sdk/models/Part;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lio/intercom/android/sdk/conversation/UploadProgressListener;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/api/Api;->uploadFile(Lcom/intercom/input/gallery/b;ILjava/lang/String;Lio/intercom/android/sdk/blocks/UploadingImageCache;Lio/intercom/android/sdk/conversation/UploadProgressListener;)V

    return-void
.end method

.method public uploadSuccess(Lio/intercom/android/sdk/models/events/UploadEvent;)V
    .locals 6
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/UploadEvent;->getTempPartId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/UploadEvent;->getTempPartPosition()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->positionOfPart(ILjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v4}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lio/intercom/android/sdk/models/Part;->getBlocks()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/Block;

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->createBlocksForUpload(Lio/intercom/android/sdk/models/events/UploadEvent;Lio/intercom/android/sdk/blocks/models/Block;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lio/intercom/android/sdk/api/Api;->startNewConversation(Ljava/util/List;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->api:Lio/intercom/android/sdk/api/Api;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->conversationId:Ljava/lang/String;

    invoke-virtual {v4}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/api/Api;->replyToConversation(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Z)V

    goto :goto_0
.end method
