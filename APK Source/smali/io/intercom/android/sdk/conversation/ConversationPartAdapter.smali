.class Lio/intercom/android/sdk/conversation/ConversationPartAdapter;
.super Landroid/support/v7/widget/RecyclerView$a;

# interfaces
.implements Lio/intercom/android/sdk/views/holder/ConversationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$x;",
        ">;",
        "Lio/intercom/android/sdk/views/holder/ConversationListener;"
    }
.end annotation


# instance fields
.field private allowExpansionArrow:Z

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

.field private final clipboardManager:Landroid/content/ClipboardManager;

.field private final conversationId:Ljava/lang/String;

.field private final listener:Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;

.field private final partList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;"
        }
    .end annotation
.end field

.field private final partMetadataFormatter:Lio/intercom/android/sdk/views/PartMetadataFormatter;

.field private final partViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final rootActivity:Landroid/app/Activity;

.field private selectedPart:Lio/intercom/android/sdk/models/Part;

.field private final timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

.field private final userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/ClipboardManager;Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;Lio/intercom/android/sdk/views/PartMetadataFormatter;Lio/intercom/android/sdk/utilities/TimeFormatter;Ljava/util/Map;Lio/intercom/android/sdk/api/Api;Landroid/app/Activity;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/a/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;",
            "Landroid/content/ClipboardManager;",
            "Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;",
            "Lio/intercom/android/sdk/views/PartMetadataFormatter;",
            "Lio/intercom/android/sdk/utilities/TimeFormatter;",
            "Ljava/util/Map",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lio/intercom/android/sdk/api/Api;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->allowExpansionArrow:Z

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->clipboardManager:Landroid/content/ClipboardManager;

    iput-object p3, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->listener:Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;

    iput-object p4, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partMetadataFormatter:Lio/intercom/android/sdk/views/PartMetadataFormatter;

    iput-object p5, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    iput-object p6, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partViewMap:Ljava/util/Map;

    iput-object p7, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->api:Lio/intercom/android/sdk/api/Api;

    iput-object p8, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->rootActivity:Landroid/app/Activity;

    iput-object p9, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->conversationId:Ljava/lang/String;

    iput-object p10, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p11, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iput-object p12, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method public static create(Landroid/app/Activity;Ljava/util/List;Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;Lio/intercom/android/sdk/api/Api;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Lio/intercom/android/sdk/utilities/ContextLocaliser;Lio/intercom/a/a/a/j;)Lio/intercom/android/sdk/conversation/ConversationPartAdapter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Part;",
            ">;",
            "Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;",
            "Lio/intercom/android/sdk/api/Api;",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/identity/UserIdentity;",
            "Lio/intercom/android/sdk/commons/utilities/TimeProvider;",
            "Lio/intercom/android/sdk/utilities/ContextLocaliser;",
            "Lio/intercom/a/a/a/j;",
            ")",
            "Lio/intercom/android/sdk/conversation/ConversationPartAdapter;"
        }
    .end annotation

    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    move-object/from16 v0, p8

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/utilities/ContextLocaliser;->createLocalisedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    new-instance v6, Lio/intercom/android/sdk/utilities/TimeFormatter;

    move-object/from16 v0, p7

    invoke-direct {v6, v1, v0}, Lio/intercom/android/sdk/utilities/TimeFormatter;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    new-instance v5, Lio/intercom/android/sdk/views/PartMetadataFormatter;

    invoke-direct {v5, v6}, Lio/intercom/android/sdk/views/PartMetadataFormatter;-><init>(Lio/intercom/android/sdk/utilities/TimeFormatter;)V

    new-instance v1, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v2, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p3

    move-object v9, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;-><init>(Ljava/util/List;Landroid/content/ClipboardManager;Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;Lio/intercom/android/sdk/views/PartMetadataFormatter;Lio/intercom/android/sdk/utilities/TimeFormatter;Ljava/util/Map;Lio/intercom/android/sdk/api/Api;Landroid/app/Activity;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/a/a/a/j;)V

    return-object v1
.end method

.method private openArticleActivity(Lio/intercom/android/sdk/blocks/models/Block;Lio/intercom/android/sdk/models/Part;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->rootActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lio/intercom/android/sdk/blocks/models/Block;->getArticleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->conversationId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->rootActivity:Landroid/app/Activity;

    const-string v2, "link_background"

    invoke-static {v1, p3, v2}, Landroid/support/v4/app/b;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/b;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->rootActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/support/v4/app/b;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->rootActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startAllowingExpansionArrowIfPositionIsNotLast(I)V
    .locals 2

    iget-boolean v1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->allowExpansionArrow:Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->allowExpansionArrow:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isEvent()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xc

    :goto_0
    return v0

    :cond_0
    const-string v2, "admin_is_typing_style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const-string v2, "day_divider_style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const-string v2, "loading_layout_style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getParticipant()Lio/intercom/android/sdk/models/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Participant;->isAdmin()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isLinkCard()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isInitialMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    const/16 v0, 0x9

    goto :goto_0

    :cond_5
    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->CONVERSATIONRATING:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/models/Part;->isSingleBlockPartOfType(Lio/intercom/android/sdk/blocks/BlockType;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v0, 0xa

    goto :goto_0

    :cond_6
    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->LINKLIST:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/models/Part;->isSingleBlockPartOfType(Lio/intercom/android/sdk/blocks/BlockType;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_0

    :cond_7
    const-string v0, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_0

    :cond_8
    const-string v0, "note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->startAllowingExpansionArrowIfPositionIsNotLast(I)V

    const/4 v0, 0x3

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/UserIdentity;->getIntercomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/models/Participant;->isUserWithId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getPart(I)Lio/intercom/android/sdk/models/Part;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    return-object v0
.end method

.method public getSelectedPart()Lio/intercom/android/sdk/models/Part;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->selectedPart:Lio/intercom/android/sdk/models/Part;

    return-object v0
.end method

.method getViewForPart(Lio/intercom/android/sdk/models/Part;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$x;I)V
    .locals 3

    instance-of v0, p1, Lio/intercom/android/sdk/views/holder/ConversationPartViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getPart(I)Lio/intercom/android/sdk/models/Part;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partViewMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :cond_0
    check-cast p1, Lio/intercom/android/sdk/views/holder/ConversationPartViewHolder;

    invoke-interface {p1, v1, v0}, Lio/intercom/android/sdk/views/holder/ConversationPartViewHolder;->bind(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public onContainerCardClicked(ILio/intercom/android/sdk/views/holder/ContainerCardViewHolder;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getItemViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->allowExpansionArrow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->toggleExpanded()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->listener:Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;->onPostCardClicked(Lio/intercom/android/sdk/models/Part;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$x;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lio/intercom/android/sdk/views/holder/PartViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_user_part:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partMetadataFormatter:Lio/intercom/android/sdk/views/PartMetadataFormatter;

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v7, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lio/intercom/android/sdk/views/holder/PartViewHolder;-><init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;Lio/intercom/android/sdk/views/PartMetadataFormatter;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lio/intercom/android/sdk/views/holder/TimeStampViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_day_divider:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->timeFormatter:Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/views/holder/TimeStampViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/utilities/TimeFormatter;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lio/intercom/android/sdk/views/holder/PartViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_admin_part:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partMetadataFormatter:Lio/intercom/android/sdk/views/PartMetadataFormatter;

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v7, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lio/intercom/android/sdk/views/holder/PartViewHolder;-><init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;Lio/intercom/android/sdk/views/PartMetadataFormatter;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_post:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v7, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;-><init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;ZLio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_note:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->clipboardManager:Landroid/content/ClipboardManager;

    iget-boolean v5, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->allowExpansionArrow:Z

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v7, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;-><init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;ZLio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto :goto_0

    :pswitch_5
    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_row_loading:I

    invoke-virtual {v1, v0, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lio/intercom/android/sdk/views/holder/ConversationLoadingViewHolder;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-direct {v1, v2, v0}, Lio/intercom/android/sdk/views/holder/ConversationLoadingViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/identity/AppConfig;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_link:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/views/holder/LinkViewHolder;-><init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lio/intercom/android/sdk/views/holder/LinkViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_link_reply:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->clipboardManager:Landroid/content/ClipboardManager;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/views/holder/LinkViewHolder;-><init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lio/intercom/android/sdk/views/holder/ConversationRatingViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_conversation_rating:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v0, v1, p0, v2, v3}, Lio/intercom/android/sdk/views/holder/ConversationRatingViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/views/holder/ConversationListener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_link_list:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v0, v1, p0, v2, v3}, Lio/intercom/android/sdk/views/holder/LinkListViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/views/holder/ConversationListener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lio/intercom/android/sdk/views/holder/EventViewHolder;

    sget v2, Lio/intercom/android/sdk/R$layout;->intercom_row_event:I

    invoke-virtual {v1, v2, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/views/holder/EventViewHolder;-><init>(Landroid/view/View;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public onLinkClicked(ILandroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getLinkBlock()Lio/intercom/android/sdk/blocks/models/Block;

    move-result-object v1

    const-string v2, "educate.article"

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Block;->getLinkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v0, p2}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->openArticleActivity(Lio/intercom/android/sdk/blocks/models/Block;Lio/intercom/android/sdk/models/Part;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Block;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->rootActivity:Landroid/app/Activity;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->api:Lio/intercom/android/sdk/api/Api;

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/utilities/LinkOpener;->handleUrl(Ljava/lang/String;Landroid/content/Context;Lio/intercom/android/sdk/api/Api;)V

    goto :goto_0
.end method

.method public onPartClicked(ILio/intercom/android/sdk/views/holder/PartViewHolder;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v1

    sget-object v2, Lio/intercom/android/sdk/models/Part$MessageState;->FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getMessageState()Lio/intercom/android/sdk/models/Part$MessageState;

    move-result-object v1

    sget-object v2, Lio/intercom/android/sdk/models/Part$MessageState;->UPLOAD_FAILED:Lio/intercom/android/sdk/models/Part$MessageState;

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->listener:Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;->onPartClicked(Lio/intercom/android/sdk/models/Part;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->selectedPart:Lio/intercom/android/sdk/models/Part;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->selectedPart:Lio/intercom/android/sdk/models/Part;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->setExpanded(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partList:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->selectedPart:Lio/intercom/android/sdk/models/Part;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyItemChanged(I)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->selectedPart:Lio/intercom/android/sdk/models/Part;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lio/intercom/android/sdk/views/holder/PartViewHolder;->setExpanded(Z)V

    goto :goto_0
.end method

.method setViewForPart(Lio/intercom/android/sdk/models/Part;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->partViewMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
