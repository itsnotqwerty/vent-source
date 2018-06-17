.class public Lio/intercom/android/sdk/conversation/ConversationFragment;
.super Landroid/support/v4/app/i;

# interfaces
.implements Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;
.implements Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;
.implements Lio/intercom/android/sdk/store/Store$Subscriber2;
.implements Lio/intercom/android/sdk/views/IntercomToolbar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/i;",
        "Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;",
        "Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;",
        "Lio/intercom/android/sdk/store/Store$Subscriber2",
        "<",
        "Ljava/lang/Integer;",
        "Lio/intercom/android/sdk/models/TeamPresence;",
        ">;",
        "Lio/intercom/android/sdk/views/IntercomToolbar$Listener;"
    }
.end annotation


# static fields
.field private static final ARG_CONVERSATION_ID:Ljava/lang/String; = "conversationId"

.field private static final ARG_GROUP_PARTICIPANTS:Ljava/lang/String; = "group_participants"

.field private static final ARG_INITIAL_MESSAGE:Ljava/lang/String; = "initial_message"

.field private static final ARG_IS_READ:Ljava/lang/String; = "intercomsdk-isRead"

.field private static final ARG_IS_TWO_PANE:Ljava/lang/String; = "is_two_pane"

.field private static final ARG_LAST_PARTICIPANT:Ljava/lang/String; = "last_participant"

.field private static final COMPOSER_LIGHTBOX_REQUEST_CODE:I = 0x19

.field private static final EXTRA_GALLERY_IMAGE:Ljava/lang/String; = "gallery_image"

.field private static final IMAGE_MIME_TYPE:Ljava/lang/String; = "image"

.field private static final MAX_FILE_SIZE_BYTES:I = 0x2800000


# instance fields
.field appConfigProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private bus:Lio/intercom/a/c/a/b;

.field private canOpenProfile:Z

.field private composerHolder:Landroid/widget/RelativeLayout;

.field private final composerListener:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

.field composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

.field private final connectivityEventListener:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor$ConnectivityEventListener;

.field contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

.field conversation:Lio/intercom/android/sdk/models/Conversation;

.field conversationId:Ljava/lang/String;

.field private currentOrientation:I

.field private final globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private groupParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private hasLoadedConversation:Z

.field private initialMessage:Ljava/lang/String;

.field private intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

.field private intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

.field private isTwoPane:Z

.field private lastActiveTime:Ljava/lang/CharSequence;

.field private lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

.field private listener:Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;

.field private metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field final networkConnectivityMonitor:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;

.field private nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

.field private opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

.field orientationChanged:Z

.field private final profileExpansionLogic:Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;

.field profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

.field private reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

.field private requestManager:Lio/intercom/a/a/a/j;

.field rootView:Landroid/view/View;

.field shouldStayAtBottom:Z

.field soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

.field private store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private subscription:Lio/intercom/android/sdk/store/Store$Subscription;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;

.field private userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

.field private wallpaperLoader:Lio/intercom/android/sdk/imageloader/WallpaperLoader;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;

    invoke-direct {v0}, Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->networkConnectivityMonitor:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;

    new-instance v0, Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;

    invoke-direct {v0}, Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profileExpansionLogic:Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->canOpenProfile:Z

    iput-boolean v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->hasLoadedConversation:Z

    iput-boolean v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->orientationChanged:Z

    iput-boolean v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->shouldStayAtBottom:Z

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->initialMessage:Ljava/lang/String;

    iput-boolean v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->isTwoPane:Z

    new-instance v0, Lio/intercom/android/sdk/conversation/ConversationFragment$4;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$4;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lio/intercom/android/sdk/conversation/ConversationFragment$7;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$7;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->connectivityEventListener:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor$ConnectivityEventListener;

    new-instance v0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$9;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerListener:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/conversation/ConversationFragment;)Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    return-object v0
.end method

.method private configureInputView(Lio/intercom/android/sdk/models/Conversation;)V
    .locals 7

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v6

    invoke-virtual {v6}, Lio/intercom/android/sdk/models/Part;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/android/sdk/models/ReactionReply;->isNull(Lio/intercom/android/sdk/models/ReactionReply;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->showComposer()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->requestFocus()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lio/intercom/android/sdk/activities/ConversationReactionListener;

    sget-object v1, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->CONVERSATION:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    invoke-virtual {v6}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v4

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/activities/ConversationReactionListener;-><init>(Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    invoke-virtual {v6}, Lio/intercom/android/sdk/models/Part;->getReactionReply()Lio/intercom/android/sdk/models/ReactionReply;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v1, v2, v3, v0, v4}, Lio/intercom/android/sdk/conversation/ReactionInputView;->setUpReactions(Lio/intercom/android/sdk/models/ReactionReply;ZLio/intercom/android/sdk/conversation/ReactionListener;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->hideComposer()V

    goto :goto_0
.end method

.method private createContentPresenter(Landroid/view/View;)Lio/intercom/android/sdk/conversation/ConversationContentPresenter;
    .locals 20

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v3

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_link:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lio/intercom/android/sdk/views/IntercomLinkView;

    sget v1, Lio/intercom/android/sdk/R$id;->pill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget v1, Lio/intercom/android/sdk/R$id;->conversation_list:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/support/v7/widget/RecyclerView;

    new-instance v15, Lio/intercom/android/sdk/blocks/Blocks;

    invoke-virtual/range {p0 .. p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getBlocksTwig()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v2

    invoke-direct {v15, v1, v2}, Lio/intercom/android/sdk/blocks/Blocks;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/twig/Twig;)V

    invoke-virtual {v3}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lio/intercom/android/sdk/utilities/ContextLocaliser;

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v9, v1}, Lio/intercom/android/sdk/utilities/ContextLocaliser;-><init>(Lio/intercom/android/sdk/Provider;)V

    invoke-virtual/range {p0 .. p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v3}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->requestManager:Lio/intercom/a/a/a/j;

    move-object/from16 v3, p0

    invoke-static/range {v1 .. v10}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->create(Landroid/app/Activity;Ljava/util/List;Lio/intercom/android/sdk/conversation/ConversationPartAdapter$Listener;Lio/intercom/android/sdk/api/Api;Ljava/lang/String;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Lio/intercom/android/sdk/utilities/ContextLocaliser;Lio/intercom/a/a/a/j;)Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    move-object/from16 v0, p0

    iget-object v12, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->requestManager:Lio/intercom/a/a/a/j;

    move-object/from16 v18, v0

    move-object/from16 v5, p0

    move-object/from16 v6, v19

    move-object v8, v11

    move-object v10, v4

    move-object v11, v2

    invoke-static/range {v5 .. v18}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->create(Lio/intercom/android/sdk/conversation/ConversationContentPresenter$Host;Landroid/support/v7/widget/RecyclerView;Lio/intercom/android/sdk/conversation/ConversationPartAdapter;Lio/intercom/android/sdk/views/IntercomLinkView;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/api/Api;Ljava/util/List;Ljava/lang/String;Landroid/widget/TextView;Lio/intercom/android/sdk/conversation/SoundPlayer;Lio/intercom/android/sdk/blocks/Blocks;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;Lio/intercom/a/a/a/j;)Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    move-result-object v1

    return-object v1
.end method

.method private displayErrorView()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerHolder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->showErrorView()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;ZZLjava/lang/String;Ljava/util/List;)Lio/intercom/android/sdk/conversation/ConversationFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/models/LastParticipatingAdmin;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;)",
            "Lio/intercom/android/sdk/conversation/ConversationFragment;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/conversation/ConversationFragment;

    invoke-direct {v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "conversationId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "initial_message"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "last_participant"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "group_participants"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "intercomsdk-isRead"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "is_two_pane"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v2, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/ConversationFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private toggleProfile()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->closeProfile()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->profileClicked()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->smoothScrollToTop()V

    goto :goto_0
.end method

.method private trackLastPart(Lio/intercom/android/sdk/models/Part;)V
    .locals 5

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isLinkList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->receivedOperatorReply(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->hasAttachments()Z

    move-result v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->isLinkCard()Z

    move-result v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/metrics/MetricTracker;->receivedReply(ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLastActiveTime()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastParticipatingAdmin()Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/utilities/TimeFormatter;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getAdminActiveStatus(Lio/intercom/android/sdk/models/LastParticipatingAdmin;Lio/intercom/android/sdk/Provider;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastActiveTime:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method private updateProfileToolbar(Lio/intercom/android/sdk/models/TeamPresence;)V
    .locals 5

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-static {v1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isNull(Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    sget-object v2, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NONE:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v1, p1, v0, v2}, Lio/intercom/android/sdk/profile/ProfilePresenter;->setTeamPresence(Lio/intercom/android/sdk/models/TeamPresence;ILio/intercom/a/a/a/j;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->updateLastActiveTime()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->groupParticipants:Ljava/util/List;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastActiveTime:Ljava/lang/CharSequence;

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/profile/ProfilePresenter;->setTeammatePresence(Lio/intercom/android/sdk/models/LastParticipatingAdmin;Ljava/util/List;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method


# virtual methods
.method public adminIsTyping(Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;)V
    .locals 2
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {p1}, Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->onAdminStartedTyping(Lio/intercom/android/sdk/conversation/events/AdminIsTypingEvent;)V

    :cond_0
    return-void
.end method

.method public conversationFailure(Lio/intercom/android/sdk/models/events/failure/ConversationFailedEvent;)V
    .locals 1
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->displayErrorView()V

    :cond_0
    return-void
.end method

.method public conversationSuccess(Lio/intercom/android/sdk/models/events/ConversationEvent;)V
    .locals 8
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ConversationEvent;->getResponse()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Conversation;->getParts()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ConversationEvent;->getResponse()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_3

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ConversationEvent;->getResponse()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v1, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->onConversationFetched(Lio/intercom/android/sdk/models/events/ConversationEvent;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->displayConversation()V

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Conversation;->isRead()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v5

    invoke-virtual {v5}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v5

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lio/intercom/android/sdk/api/Api;->markConversationAsRead(Ljava/lang/String;)V

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-static {v6}, Lio/intercom/android/sdk/actions/Actions;->conversationMarkedAsRead(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    iget-object v7, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v7}, Lio/intercom/android/sdk/identity/UserIdentity;->getIntercomId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lio/intercom/android/sdk/nexus/NexusEvent;->getConversationSeenEvent(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/nexus/NexusEvent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/intercom/android/sdk/nexus/NexusClient;->fire(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    :cond_1
    if-nez v0, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isReply()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->trackLastPart(Lio/intercom/android/sdk/models/Part;)V

    :cond_2
    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->canOpenProfile:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profileExpansionLogic:Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v1, v4}, Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;->shouldExpandProfile(Lio/intercom/android/sdk/models/Conversation;)Z

    move-result v1

    new-instance v4, Lio/intercom/android/sdk/conversation/ConversationFragment$8;

    invoke-direct {v4, p0, v1}, Lio/intercom/android/sdk/conversation/ConversationFragment$8;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;Z)V

    const-wide/16 v6, 0x32

    invoke-virtual {v0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v1, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->scrollToTop()V

    :goto_1
    iput-boolean v3, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->canOpenProfile:Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastParticipatingAdmin()Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getGroupConversationParticipants()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->groupParticipants:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->updateLastActiveTime()V

    :cond_4
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->TEAM_PRESENCE:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/TeamPresence;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->updateProfileToolbar(Lio/intercom/android/sdk/models/TeamPresence;)V

    iput-boolean v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->hasLoadedConversation:Z

    return-void

    :cond_5
    move v1, v3

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->scrollToBottom()V

    goto :goto_1

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/SoundPlayer;->playMessageReceivedSound()V

    :cond_9
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->onNewPartReceived()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->trackLastPart(Lio/intercom/android/sdk/models/Part;)V

    goto :goto_2
.end method

.method displayConversation()V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->showContentView()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->configureInputView(Lio/intercom/android/sdk/models/Conversation;)V

    :cond_0
    return-void
.end method

.method displayLoadingView()V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->hideComposer()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public getConversation()Lio/intercom/android/sdk/models/Conversation;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->onBackPressed()V

    return-void
.end method

.method hasNotLoadedLastAdminForExistingConversation()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->hasLoadedConversation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-static {v0}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isNull(Lio/intercom/android/sdk/models/LastParticipatingAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    const-string v0, "gallery_image"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gallery_image"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/b;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerListener:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;->onUploadImageSelected(Lcom/intercom/input/gallery/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onAttach(Landroid/content/Context;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;

    move-object v1, v0

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->listener:Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement ConversationFragment.Listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCloseClicked()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->listener:Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;->onToolbarCloseClicked()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->currentOrientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->orientationChanged:Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->updateMaxLines()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->currentOrientation:I

    return-void
.end method

.method public onConversationCreated(Lio/intercom/android/sdk/models/Conversation;)V
    .locals 7

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$id;->disabled_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/profile/ProfilePresenter;->setConversationId(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->setConversationId(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_reply_to_conversation:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->setHint(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->getIntercomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/intercom/android/sdk/nexus/NexusEvent;->getNewCommentEvent(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/nexus/NexusEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/nexus/NexusClient;->fire(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getParts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/intercom/android/sdk/models/Part;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->hasAttachments()Z

    move-result v1

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->isGifOnlyPart()Z

    move-result v2

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v6, Lio/intercom/android/sdk/store/Selectors;->TEAM_PRESENCE:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v5, v6}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/intercom/android/sdk/models/TeamPresence;

    invoke-virtual {v5}, Lio/intercom/android/sdk/models/TeamPresence;->getOfficeHours()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/metrics/MetricTracker;->sentInNewConversation(ZZLjava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->startConversation(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->hasLoadedConversation:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lio/intercom/a/a/a/c;->r(Landroid/support/v4/app/i;)Lio/intercom/a/a/a/j;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getBus()Lio/intercom/a/c/a/b;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->bus:Lio/intercom/a/c/a/b;

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getNexusClient()Lio/intercom/android/sdk/nexus/NexusClient;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getUserIdentity()Lio/intercom/android/sdk/identity/UserIdentity;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getOpsMetricTracker()Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    const-string v1, "start"

    const-string v2, "time-to-process-action-load-conversation-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-class v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "conversationId"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    const-string v0, "initial_message"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->initialMessage:Ljava/lang/String;

    const-string v0, "last_participant"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->NULL:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    :cond_0
    const-string v0, "group_participants"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->groupParticipants:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->groupParticipants:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->groupParticipants:Ljava/util/List;

    :cond_1
    const-string v0, "intercomsdk-isRead"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-static {v2}, Lio/intercom/android/sdk/actions/Actions;->conversationMarkedAsRead(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    :cond_2
    const-string v0, "is_two_pane"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->isTwoPane:Z

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->composerOpened()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    :cond_3
    :goto_0
    new-instance v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Conversation;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    new-instance v0, Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/conversation/SoundPlayer;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/Provider;)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->soundPlayer:Lio/intercom/android/sdk/conversation/SoundPlayer;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->currentOrientation:I

    return-void

    :cond_4
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-static {v1}, Lio/intercom/android/sdk/actions/Actions;->conversationOpened(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    if-nez v0, :cond_1

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_fragment_conversation:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v2, Lio/intercom/android/sdk/R$id;->composer_holder:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerHolder:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v2, Lio/intercom/android/sdk/R$id;->conversation_coordinator_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    new-instance v2, Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {v2, v0, v3, v4, v5}, Lio/intercom/android/sdk/profile/ProfilePresenter;-><init>(Landroid/support/design/widget/CoordinatorLayout;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    iput-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/profile/ProfilePresenter;->setConversationId(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v2, Lio/intercom/android/sdk/R$id;->error_layout_conversation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomErrorView;

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonTextColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    new-instance v2, Lio/intercom/android/sdk/conversation/ConversationFragment$1;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$1;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    new-instance v2, Lio/intercom/android/sdk/conversation/ConversationFragment$2;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$2;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/profile/ProfilePresenter;->addListener(Landroid/support/design/widget/AppBarLayout$b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v2, Lio/intercom/android/sdk/R$id;->wallpaper:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v2, v3, v4}, Lio/intercom/android/sdk/imageloader/WallpaperLoader;->create(Landroid/content/Context;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)Lio/intercom/android/sdk/imageloader/WallpaperLoader;

    move-result-object v2

    iput-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->wallpaperLoader:Lio/intercom/android/sdk/imageloader/WallpaperLoader;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->wallpaperLoader:Lio/intercom/android/sdk/imageloader/WallpaperLoader;

    new-instance v3, Lio/intercom/android/sdk/conversation/ConversationFragment$3;

    invoke-direct {v3, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$3;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V

    invoke-virtual {v2, v0, v3}, Lio/intercom/android/sdk/imageloader/WallpaperLoader;->loadWallpaperInto(Landroid/widget/ImageView;Lio/intercom/android/sdk/imageloader/WallpaperLoader$Listener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v2, Lio/intercom/android/sdk/R$id;->reaction_input_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/conversation/ReactionInputView;

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->reactionComposer:Lio/intercom/android/sdk/conversation/ReactionInputView;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v2, Lio/intercom/android/sdk/R$id;->intercom_toolbar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomToolbar;

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->setListener(Lio/intercom/android/sdk/views/IntercomToolbar$Listener;)V

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    iget-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->isTwoPane:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->setInboxButtonVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->listener:Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;->setStatusBarColor()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    return-object v0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->conversationClosed()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    invoke-super {p0}, Landroid/support/v4/app/i;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->cleanup()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->cleanup()V

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->wallpaperLoader:Lio/intercom/android/sdk/imageloader/WallpaperLoader;

    invoke-virtual {v0}, Lio/intercom/android/sdk/imageloader/WallpaperLoader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/i;->onDestroyView()V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t close LongTermImageLoader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lio/intercom/android/sdk/twig/Twig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onInboxClicked()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->cleanup()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->listener:Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/conversation/ConversationFragment$Listener;->onBackToInboxClicked()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setInboxButtonVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_conversations_with_app:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    const-string v2, "name"

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/views/IntercomToolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPartClicked(Lio/intercom/android/sdk/models/Part;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->onPartClicked(Lio/intercom/android/sdk/models/Part;)V

    return-void
.end method

.method public onPostCardClicked(Lio/intercom/android/sdk/models/Part;)V
    .locals 4

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lio/intercom/android/sdk/activities/IntercomPostActivity;->buildPostIntent(Landroid/content/Context;Lio/intercom/android/sdk/models/Part;Ljava/lang/String;Lio/intercom/android/sdk/models/LastParticipatingAdmin;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/i;->onStart()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->networkConnectivityMonitor:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;->startListening(Landroid/content/Context;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->networkConnectivityMonitor:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->connectivityEventListener:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor$ConnectivityEventListener;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;->setListener(Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor$ConnectivityEventListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->UNREAD_COUNT:Lio/intercom/android/sdk/store/Store$Selector;

    sget-object v2, Lio/intercom/android/sdk/store/Selectors;->TEAM_PRESENCE:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1, v2, p0}, Lio/intercom/android/sdk/store/Store;->subscribeToChanges(Lio/intercom/android/sdk/store/Store$Selector;Lio/intercom/android/sdk/store/Store$Selector;Lio/intercom/android/sdk/store/Store$Subscriber2;)Lio/intercom/android/sdk/store/Store$Subscription;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->subscription:Lio/intercom/android/sdk/store/Store$Subscription;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->bus:Lio/intercom/a/c/a/b;

    invoke-virtual {v0, p0}, Lio/intercom/a/c/a/b;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->bus:Lio/intercom/a/c/a/b;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0, v1}, Lio/intercom/a/c/a/b;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->fetchConversation(Ljava/lang/String;)V

    return-void
.end method

.method public onStateChange(Ljava/lang/Integer;Lio/intercom/android/sdk/models/TeamPresence;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setUnreadCount(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->hasNotLoadedLastAdminForExistingConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->setUnknownPresence()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lio/intercom/android/sdk/conversation/ConversationFragment;->updateProfileToolbar(Lio/intercom/android/sdk/models/TeamPresence;)V

    goto :goto_0
.end method

.method public bridge synthetic onStateChange(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lio/intercom/android/sdk/models/TeamPresence;

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/conversation/ConversationFragment;->onStateChange(Ljava/lang/Integer;Lio/intercom/android/sdk/models/TeamPresence;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->subscription:Lio/intercom/android/sdk/store/Store$Subscription;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/StoreUtils;->safeUnsubscribe(Lio/intercom/android/sdk/store/Store$Subscription;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->bus:Lio/intercom/a/c/a/b;

    invoke-virtual {v0, p0}, Lio/intercom/a/c/a/b;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->bus:Lio/intercom/a/c/a/b;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0, v1}, Lio/intercom/a/c/a/b;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->networkConnectivityMonitor:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;->setListener(Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor$ConnectivityEventListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->networkConnectivityMonitor:Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor;->stopListening(Landroid/content/Context;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->opsMetricTracker:Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    invoke-virtual {v0}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->clear()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->onStop()V

    invoke-super {p0}, Landroid/support/v4/app/i;->onStop()V

    return-void
.end method

.method public onToolbarClicked()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->toggleProfile()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 14

    invoke-super/range {p0 .. p2}, Landroid/support/v4/app/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationFragment;->createContentPresenter(Landroid/view/View;)Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$id;->composer_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v0, Lio/intercom/android/sdk/conversation/ConversationFragment$5;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$5;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerListener:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iget-object v7, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v8, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v9, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    iget-object v10, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->initialMessage:Ljava/lang/String;

    iget-object v11, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v12

    iget-object v13, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v13}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v13}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v13

    invoke-direct/range {v0 .. v13}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;-><init>(Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;Landroid/widget/FrameLayout;Landroid/support/v4/app/n;Landroid/view/LayoutInflater;Lio/intercom/android/sdk/nexus/NexusClient;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/store/Store;Landroid/content/Context;I)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->setup()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->requestFocus()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->configureInputView(Lio/intercom/android/sdk/models/Conversation;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerHolder:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->displayConversation()V

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->canOpenProfile:Z

    new-instance v0, Lio/intercom/android/sdk/conversation/ConversationFragment$6;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$6;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->setConversationId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->displayLoadingView()V

    goto :goto_0
.end method

.method public replySuccess(Lio/intercom/android/sdk/models/events/ReplyEvent;)V
    .locals 10
    .annotation runtime Lio/intercom/a/c/a/h;
    .end annotation

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ReplyEvent;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->nexusClient:Lio/intercom/android/sdk/nexus/NexusClient;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/UserIdentity;->getIntercomId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/intercom/android/sdk/nexus/NexusEvent;->getNewCommentEvent(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/nexus/NexusEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/nexus/NexusClient;->fire(Lio/intercom/android/sdk/nexus/NexusEvent;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/events/ReplyEvent;->getResponse()Lio/intercom/android/sdk/models/Part;

    move-result-object v3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Conversation;->getParticipant(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/models/Participant;->NULL:Lio/intercom/android/sdk/models/Participant;

    if-ne v0, v1, :cond_0

    new-instance v0, Lio/intercom/android/sdk/models/Participant$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/Participant$Builder;-><init>()V

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/models/Participant$Builder;->withId(Ljava/lang/String;)Lio/intercom/android/sdk/models/Participant$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant$Builder;->build()Lio/intercom/android/sdk/models/Participant;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Conversation;->getParticipants()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v0}, Lio/intercom/android/sdk/models/Part;->setParticipant(Lio/intercom/android/sdk/models/Participant;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->onReplyDelivered(Lio/intercom/android/sdk/models/events/ReplyEvent;)V

    new-instance v7, Lio/intercom/android/sdk/utilities/TimeFormatter;

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/Injector;->getTimeProvider()Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lio/intercom/android/sdk/utilities/TimeFormatter;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/commons/utilities/TimeProvider;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->hasAttachments()Z

    move-result v1

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->isGifOnlyPart()Z

    move-result v2

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    iget-object v5, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v6, Lio/intercom/android/sdk/store/Selectors;->TEAM_PRESENCE:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v5, v6}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/intercom/android/sdk/models/TeamPresence;

    invoke-virtual {v5}, Lio/intercom/android/sdk/models/TeamPresence;->getOfficeHours()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    iget-object v6, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-virtual {v6}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive()Z

    move-result v6

    iget-object v8, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->lastParticipant:Lio/intercom/android/sdk/models/LastParticipatingAdmin;

    invoke-virtual {v8}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getLastActiveAt()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lio/intercom/android/sdk/utilities/TimeFormatter;->getLastActiveMinutes(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lio/intercom/android/sdk/metrics/MetricTracker;->sentInConversation(ZZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sdkWindowFinishedAnimating()V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profileExpansionLogic:Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;->shouldExpandProfile(Lio/intercom/android/sdk/models/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->profileAutoOpened()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->smoothScrollToTop()V

    :cond_0
    return-void
.end method

.method public shouldHandleOnBackPressed()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
