.class public Lio/intercom/android/sdk/metrics/MetricTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;,
        Lio/intercom/android/sdk/metrics/MetricTracker$InAppMessageViewContext;,
        Lio/intercom/android/sdk/metrics/MetricTracker$CloseActionContext;,
        Lio/intercom/android/sdk/metrics/MetricTracker$Owner;,
        Lio/intercom/android/sdk/metrics/MetricTracker$Context;,
        Lio/intercom/android/sdk/metrics/MetricTracker$Place;,
        Lio/intercom/android/sdk/metrics/MetricTracker$Object;,
        Lio/intercom/android/sdk/metrics/MetricTracker$Action;,
        Lio/intercom/android/sdk/metrics/MetricTracker$Name;
    }
.end annotation


# static fields
.field static final METADATA_BADGE_VALUE:Ljava/lang/String; = "badge_value"

.field static final METADATA_COMMENT_ID:Ljava/lang/String; = "comment_id"

.field static final METADATA_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field static final METADATA_HAS_ARTICLE_CARD:Ljava/lang/String; = "has_article_card"

.field static final METADATA_IS_ATTACHMENT:Ljava/lang/String; = "is_attachment"

.field static final METADATA_IS_GIF:Ljava/lang/String; = "is_gif"

.field static final METADATA_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field static final METADATA_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field static final METADATA_PUSH_TYPE:Ljava/lang/String; = "push_type"

.field static final METADATA_REACTION_INDEX:Ljava/lang/String; = "reaction_index"

.field static final METADATA_SEARCH_QUERY:Ljava/lang/String; = "search_query"

.field static final METADATA_TEAMMATE_STATUS:Ljava/lang/String; = "teammate_status"

.field static final METADATA_TIME_SINCE_LAST_ACTIVE:Ljava/lang/String; = "time_since_last_active"

.field static final METADATA_URL:Ljava/lang/String; = "url"

.field static final METADATA_WITHIN_OFFICE_HOURS:Ljava/lang/String; = "within_office_hours"

.field static final VALUE_ACTIVE:Ljava/lang/String; = "active"

.field static final VALUE_AWAY:Ljava/lang/String; = "away"

.field static final VALUE_MESSAGE:Ljava/lang/String; = "message"

.field static final VALUE_NOTIFICATION:Ljava/lang/String; = "notification"


# instance fields
.field private final appVersion:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/String;

.field private final store:Lio/intercom/android/sdk/metrics/MetricsStore;

.field private final timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

.field private final userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/MetricsStore;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-direct {p0, p1, p2, v0, p3}, Lio/intercom/android/sdk/metrics/MetricTracker;-><init>(Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/MetricsStore;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    iput-object p3, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    iput-object p2, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->store:Lio/intercom/android/sdk/metrics/MetricsStore;

    const-string v0, "4.1.9"

    iput-object v0, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->sdkVersion:Ljava/lang/String;

    invoke-static {p4}, Lio/intercom/android/sdk/commons/utilities/DeviceUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->appVersion:Ljava/lang/String;

    return-void
.end method

.method private static contextForInApp(I)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Lio/intercom/android/sdk/metrics/MetricTracker$InAppMessageViewContext;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const-string v0, "from_snippet"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "from_full"

    goto :goto_0
.end method

.method private static contextFrom(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->DEFAULT:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    if-ne v0, p0, :cond_0

    const-string v0, "from_launcher"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "from_custom_launcher"

    goto :goto_0
.end method

.method private createMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;
    .locals 12

    new-instance v0, Lio/intercom/android/sdk/metrics/MetricObject;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->userIdentity:Lio/intercom/android/sdk/identity/UserIdentity;

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/UserIdentity;->getIntercomId()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->timeProvider:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    iget-object v10, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->appVersion:Ljava/lang/String;

    iget-object v11, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->sdkVersion:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lio/intercom/android/sdk/metrics/MetricObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;
    .locals 7

    const-string v1, "educate_event"

    const-string v2, "educate"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/metrics/MetricTracker;->createMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    return-object v0
.end method

.method private newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;
    .locals 7

    const-string v1, "mv3_metric"

    const-string v2, "messenger"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/metrics/MetricTracker;->createMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    return-object v0
.end method

.method private static objectFrom(Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->TEAMMATE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    if-ne v0, p0, :cond_0

    const-string v0, "teammate_profile"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "team_profile"

    goto :goto_0
.end method

.method private track(Lio/intercom/android/sdk/metrics/MetricObject;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricTracker;->store:Lio/intercom/android/sdk/metrics/MetricsStore;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/metrics/MetricsStore;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method


# virtual methods
.method public clickedInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "clicked"

    const-string v1, "messenger"

    const-string v2, "in_conversation"

    invoke-direct {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public closedArticle(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    if-nez p3, :cond_0

    const-string v0, "from_close_button"

    :goto_0
    const-string v1, "closed"

    const-string v2, "article"

    const-string v3, "messenger"

    invoke-direct {p0, v1, v2, v3, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void

    :cond_0
    const-string v0, "from_android_back_button"

    goto :goto_0
.end method

.method public closedHelpCenter(Ljava/lang/String;I)V
    .locals 4

    if-nez p2, :cond_0

    const-string v0, "from_close_button"

    :goto_0
    const-string v1, "closed"

    const-string v2, "help_center"

    const-string v3, "messenger"

    invoke-direct {p0, v1, v2, v3, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void

    :cond_0
    const-string v0, "from_android_back_button"

    goto :goto_0
.end method

.method public closedInAppFromFull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "closed"

    const-string v1, "message"

    const-string v2, "in_app"

    const-string v3, "from_full"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public closedMessengerBackButton()V
    .locals 4

    const-string v0, "closed"

    const-string v1, "messenger"

    const-string v2, "messenger"

    const-string v3, "from_android_back_button"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public closedMessengerCloseButton()V
    .locals 4

    const-string v0, "closed"

    const-string v1, "messenger"

    const-string v2, "messenger"

    const-string v3, "from_close_button"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public closedMessengerSheet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "closed"

    const-string v1, "messenger_sheet"

    const-string v2, "messenger"

    const-string v3, "in_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public dismissInAppCommentSnippet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "dismissed"

    const-string v1, "reply"

    const-string v2, "in_app"

    const-string v3, "from_snippet"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public dismissInAppMessageSnippet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "dismissed"

    const-string v1, "message"

    const-string v2, "in_app"

    const-string v3, "from_snippet"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public dismissedPushNotification(Ljava/lang/String;Z)V
    .locals 5

    if-eqz p2, :cond_0

    const-string v0, "message"

    :goto_0
    const-string v1, "dismissed"

    const-string v2, "message"

    const-string v3, "in_app"

    const-string v4, "from_push"

    invoke-direct {p0, v1, v2, v3, v4}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v1

    const-string v2, "conversation_id"

    invoke-virtual {v1, v2, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v1

    const-string v2, "push_type"

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void

    :cond_0
    const-string v0, "notification"

    goto :goto_0
.end method

.method public educateWebviewMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "from_help_center_webview"

    invoke-direct {p0, p1, p2, p3, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public expandedInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "expanded_gif_input"

    const-string v2, "messenger"

    const-string v3, "in_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public messengerCardWebViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "from_messenger_card_webview"

    invoke-direct {p0, p1, p2, p3, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public newConversationFromComposeButton(Z)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "new_conversation"

    const-string v2, "messenger"

    const-string v3, "from_conversation_list"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "within_office_hours"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public openConversationFromConversationList(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "conversation"

    const-string v2, "messenger"

    const-string v3, "from_conversation_list"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "within_office_hours"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v1

    const-string v2, "teammate_status"

    if-eqz p3, :cond_0

    const-string v0, "active"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "time_since_last_active"

    invoke-virtual {v0, v1, p4}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void

    :cond_0
    const-string v0, "away"

    goto :goto_0
.end method

.method public openConversationsListFromConversation(Ljava/lang/String;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "conversation_list"

    const-string v2, "messenger"

    const-string v3, "from_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public openConversationsListFromNewConversation()V
    .locals 4

    const-string v0, "opened"

    const-string v1, "conversation_list"

    const-string v2, "messenger"

    const-string v3, "from_new_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public openedConversationFromFull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "conversation"

    const-string v2, "messenger"

    const-string v3, "from_full"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public openedConversationFromSnippet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "conversation"

    const-string v2, "messenger"

    const-string v3, "from_snippet"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public openedMessengerConversation(Ljava/lang/String;Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "conversation"

    const-string v2, "messenger"

    invoke-static {p2}, Lio/intercom/android/sdk/metrics/MetricTracker;->contextFrom(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public openedMessengerConversationList(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "conversation_list"

    const-string v2, "messenger"

    invoke-static {p1}, Lio/intercom/android/sdk/metrics/MetricTracker;->contextFrom(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public openedMessengerNewConversation(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "new_conversation"

    const-string v2, "messenger"

    invoke-static {p1}, Lio/intercom/android/sdk/metrics/MetricTracker;->contextFrom(Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public openedPushOnlyNotification(Ljava/lang/String;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "message"

    const-string v2, "in_app"

    const-string v3, "from_push"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "push_type"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public profileAutoOpen(Ljava/lang/String;Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)V
    .locals 4

    const-string v0, "opened"

    invoke-static {p2}, Lio/intercom/android/sdk/metrics/MetricTracker;->objectFrom(Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messenger"

    const-string v3, "from_auto"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public profileClickedOpen(Ljava/lang/String;Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)V
    .locals 4

    const-string v0, "opened"

    invoke-static {p2}, Lio/intercom/android/sdk/metrics/MetricTracker;->objectFrom(Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messenger"

    const-string v3, "from_clicking"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public profileScrolledOpen(Ljava/lang/String;Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)V
    .locals 4

    const-string v0, "opened"

    invoke-static {p2}, Lio/intercom/android/sdk/metrics/MetricTracker;->objectFrom(Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messenger"

    const-string v3, "from_scrolling"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public receivedMessageFromFullWhenClosed(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "received"

    const-string v1, "message"

    const-string v2, "in_app"

    const-string v3, "from_full"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p4}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_type"

    invoke-virtual {v0, v1, p5}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_attachment"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "has_article_card"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public receivedMessageFromSnippetWhenClosed(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "received"

    const-string v1, "message"

    const-string v2, "in_app"

    const-string v3, "from_snippet"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p4}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_type"

    invoke-virtual {v0, v1, p5}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_attachment"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "has_article_card"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public receivedNotificationFromBadgeWhenMessengerClosed(Ljava/lang/String;)V
    .locals 4

    const-string v0, "received"

    const-string v1, "badge"

    const-string v2, "in_app"

    const-string v3, "from_launcher"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "badge_value"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public receivedOperatorReply(Ljava/lang/String;)V
    .locals 4

    const-string v0, "received"

    const-string v1, "operator_reply"

    const-string v2, "messenger"

    const-string v3, "from_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public receivedPushNotification(Ljava/lang/String;)V
    .locals 4

    const-string v0, "received"

    const-string v1, "message"

    const-string v2, "push"

    const-string v3, "from_push"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "push_type"

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public receivedPushOnlyNotification(Ljava/lang/String;)V
    .locals 4

    const-string v0, "received"

    const-string v1, "message"

    const-string v2, "push"

    const-string v3, "from_push"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "push_type"

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public receivedReply(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "received"

    const-string v1, "reply"

    const-string v2, "messenger"

    const-string v3, "in_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_attachment"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "has_article_card"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p4}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public receivedReplyFromSnippetWhenClosed(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "received"

    const-string v1, "reply"

    const-string v2, "in_app"

    const-string v3, "from_snippet"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p4}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_attachment"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "has_article_card"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public searchedGifInput(Ljava/lang/String;)V
    .locals 4

    const-string v0, "searched"

    const-string v1, "expanded_gif_input"

    const-string v2, "messenger"

    const-string v3, "in_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "search_query"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public sentInConversation(ZZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 4

    const-string v0, "sent"

    const-string v1, "reply"

    const-string v2, "messenger"

    const-string v3, "in_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_attachment"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_gif"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p4}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "within_office_hours"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v1

    const-string v2, "teammate_status"

    if-eqz p6, :cond_0

    const-string v0, "active"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "time_since_last_active"

    invoke-virtual {v0, v1, p7}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void

    :cond_0
    const-string v0, "away"

    goto :goto_0
.end method

.method public sentInNewConversation(ZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "sent"

    const-string v1, "message"

    const-string v2, "messenger"

    const-string v3, "in_new_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_attachment"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_gif"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p4}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "within_office_hours"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public sentReaction(Ljava/lang/String;Ljava/lang/String;ILio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;)V
    .locals 4

    sget-object v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->CONVERSATION:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    if-ne v0, p4, :cond_0

    const-string v0, "sent"

    const-string v1, "reaction"

    const-string v2, "messenger"

    const-string v3, "in_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "reaction_index"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->LINK:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    if-ne v0, p4, :cond_1

    const-string v0, "sent"

    const-string v1, "reaction"

    const-string v2, "messenger"

    const-string v3, "on_article"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    goto :goto_0

    :cond_1
    const-string v0, "sent"

    const-string v1, "reaction"

    const-string v2, "in_app"

    const-string v3, "from_full"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    goto :goto_0
.end method

.method public startConversation(Ljava/lang/String;)V
    .locals 4

    const-string v0, "opened"

    const-string v1, "conversation"

    const-string v2, "messenger"

    const-string v3, "from_new_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method typeInConversation(Ljava/lang/String;)V
    .locals 4

    const-string v0, "typed"

    const-string v1, "reply"

    const-string v2, "messenger"

    const-string v3, "in_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method typeInNewConversation()V
    .locals 4

    const-string v0, "typed"

    const-string v1, "message"

    const-string v2, "messenger"

    const-string v3, "in_new_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public viewedArticle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "viewed"

    const-string v1, "article"

    const-string v2, "messenger"

    const-string v3, "from_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public viewedHelpCenter(Ljava/lang/String;)V
    .locals 4

    const-string v0, "viewed"

    const-string v1, "help_center"

    const-string v2, "messenger"

    const-string v3, "from_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newEducateMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public viewedInApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p3    # I
        .annotation build Lio/intercom/android/sdk/metrics/MetricTracker$InAppMessageViewContext;
        .end annotation
    .end param

    const-string v0, "viewed"

    const-string v1, "message"

    const-string v2, "in_app"

    invoke-static {p3}, Lio/intercom/android/sdk/metrics/MetricTracker;->contextForInApp(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public viewedInAppFromMessenger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "viewed"

    const-string v1, "message"

    const-string v2, "messenger"

    const-string v3, "from_full"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_type"

    invoke-virtual {v0, v1, p3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public viewedMessengerSheet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "viewed"

    const-string v1, "messenger_sheet"

    const-string v2, "messenger"

    const-string v3, "in_conversation"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public viewedPushNotification(Ljava/lang/String;)V
    .locals 4

    const-string v0, "viewed"

    const-string v1, "message"

    const-string v2, "in_app"

    const-string v3, "from_push"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "push_type"

    const-string v2, "notification"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method

.method public viewedReply(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "viewed"

    const-string v1, "reply"

    const-string v2, "messenger"

    const-string v3, "from_snippet"

    invoke-direct {p0, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->newMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "is_attachment"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "has_article_card"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p3}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p4}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->track(Lio/intercom/android/sdk/metrics/MetricObject;)V

    return-void
.end method
