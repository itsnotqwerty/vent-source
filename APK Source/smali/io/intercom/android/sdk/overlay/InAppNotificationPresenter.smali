.class Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lio/intercom/android/sdk/overlay/InAppNotification$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;
    }
.end annotation


# static fields
.field private static final MAX_DISPLAYED_NOTIFICATIONS:I = 0x3

.field private static final PILL_START_OFFSET_DP:I = 0x42


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

.field private bottomPadding:I

.field private final contextLocaliser:Lio/intercom/android/sdk/utilities/ContextLocaliser;

.field final handler:Landroid/os/Handler;

.field private hasAnimated:Z

.field private final inflater:Landroid/view/LayoutInflater;

.field private final lastDisplayedConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final notifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/overlay/InAppNotification;",
            ">;"
        }
    .end annotation
.end field

.field private pillPosition:F

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/os/Handler;Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/utilities/ContextLocaliser;Lio/intercom/a/a/a/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/os/Handler;",
            "Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/utilities/ContextLocaliser;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->lastDisplayedConversations:Ljava/util/List;

    iput-boolean v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->hasAnimated:Z

    iput v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->bottomPadding:I

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->listener:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p5, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p6, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->contextLocaliser:Lio/intercom/android/sdk/utilities/ContextLocaliser;

    iput-object p7, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;)F
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->pillPosition:F

    return v0
.end method

.method private addNewNotifications(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    move v3, v9

    :goto_0
    if-ge v3, v10, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/models/Conversation;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->contextLocaliser:Lio/intercom/android/sdk/utilities/ContextLocaliser;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/utilities/ContextLocaliser;->createLocalisedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    const/4 v4, 0x2

    if-ge v10, v4, :cond_0

    const-string v4, "chat"

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    new-instance v0, Lio/intercom/android/sdk/overlay/StackableSnippet;

    iget-object v4, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget-object v7, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v8, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->requestManager:Lio/intercom/a/a/a/j;

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/overlay/StackableSnippet;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;ILandroid/os/Handler;ILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    :goto_1
    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    if-ge v3, v1, :cond_1

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->inflater:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->hasAnimated:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iget v4, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->bottomPadding:I

    invoke-virtual {v0, p2, v2, v1, v4}, Lio/intercom/android/sdk/overlay/InAppNotification;->display(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ZI)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getDeliveryOption()Lio/intercom/android/sdk/models/Part$DeliveryOption;

    move-result-object v0

    sget-object v4, Lio/intercom/android/sdk/models/Part$DeliveryOption;->SUMMARY:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    if-ne v0, v4, :cond_3

    new-instance v0, Lio/intercom/android/sdk/overlay/ChatSnippet;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v6, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v7, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->requestManager:Lio/intercom/a/a/a/j;

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lio/intercom/android/sdk/overlay/ChatSnippet;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lio/intercom/android/sdk/overlay/ChatFull;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v6, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v7, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v8, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->requestManager:Lio/intercom/a/a/a/j;

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/overlay/ChatFull;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    goto :goto_1

    :cond_4
    move v1, v9

    goto :goto_2

    :cond_5
    return-void
.end method

.method private animatePill(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$4;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$4;-><init>(Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;Landroid/view/View;)V

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/intercom/android/sdk/utilities/SystemSettings;->getTransitionScale(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayPill(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    const v3, 0x3ecccccd    # 0.4f

    sget v0, Lio/intercom/android/sdk/R$id;->notification_pill:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_notification_pill:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lio/intercom/android/sdk/R$id;->notification_pill:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleX(F)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    iget v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->pillPosition:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->animatePill(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->contextLocaliser:Lio/intercom/android/sdk/utilities/ContextLocaliser;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/utilities/ContextLocaliser;->createLocalisedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$string;->intercom_plus_x_more:I

    invoke-static {v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    const-string v2, "n"

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v1, v2, v3}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/utilities/Phrase;->into(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private isReply(Lio/intercom/android/sdk/models/Conversation;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->lastDisplayedConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->lastDisplayedConversations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateNotifications(Ljava/util/List;Ljava/util/Map;Landroid/view/ViewGroup;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/overlay/InAppNotification;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/models/Conversation;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/InAppNotification;

    move-object v6, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/InAppNotification;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->getPosition()I

    move-result v3

    invoke-virtual {v6}, Lio/intercom/android/sdk/overlay/InAppNotification;->getPosition()I

    move-result v4

    if-ge v3, v4, :cond_5

    :goto_1
    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->isReply(Lio/intercom/android/sdk/models/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;-><init>(Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;Ljava/util/List;Ljava/util/Map;Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v2, v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->update(Lio/intercom/android/sdk/models/Conversation;Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    instance-of v0, v6, Lio/intercom/android/sdk/overlay/ChatSnippet;

    if-eqz v0, :cond_2

    new-instance v0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;-><init>(Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;Lio/intercom/android/sdk/models/Conversation;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v6, p3, v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->moveBackward(Landroid/view/ViewGroup;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/InAppNotification;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->getPosition()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, p3}, Lio/intercom/android/sdk/overlay/InAppNotification;->moveBackward(Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lio/intercom/android/sdk/overlay/InAppNotification;->setPosition(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v2, p3, p2}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->addNewView(Lio/intercom/android/sdk/models/Conversation;Landroid/view/ViewGroup;Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, p3}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->syncUpdates(Ljava/util/List;Ljava/util/Map;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_5
    move-object v0, v6

    goto :goto_1
.end method

.method private updatePillPosition(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "y"

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v1, v3

    iget v2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->pillPosition:F

    aput v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method addNewView(Lio/intercom/android/sdk/models/Conversation;Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/Conversation;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/overlay/InAppNotification;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->contextLocaliser:Lio/intercom/android/sdk/utilities/ContextLocaliser;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/utilities/ContextLocaliser;->createLocalisedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lio/intercom/android/sdk/overlay/StackableSnippet;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget-object v7, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v8, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->requestManager:Lio/intercom/a/a/a/j;

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/overlay/StackableSnippet;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;ILandroid/os/Handler;ILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->inflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x1

    iget v3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->bottomPadding:I

    invoke-virtual {v0, p2, v1, v2, v3}, Lio/intercom/android/sdk/overlay/InAppNotification;->display(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/overlay/InAppNotification;

    invoke-virtual {v1}, Lio/intercom/android/sdk/overlay/InAppNotification;->removeView()V

    :cond_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public displayNotifications(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$1;

    invoke-direct {v0, p0, p2, p1}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$1;-><init>(Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;Ljava/util/List;Landroid/view/ViewGroup;)V

    invoke-static {p1, v0}, Lio/intercom/android/sdk/utilities/ViewUtils;->waitForViewAttachment(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method displayNotificationsAfterAttach(Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->lastDisplayedConversations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v2, p2}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->updateNotifications(Ljava/util/List;Ljava/util/Map;Landroid/view/ViewGroup;)V

    :cond_0
    :goto_1
    iput-boolean v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->hasAnimated:Z

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_overlay_pill_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->bottomPadding:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->pillPosition:F

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v0, p2}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->displayPill(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->lastDisplayedConversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->lastDisplayedConversations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->isDisplaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->addNewNotifications(Ljava/util/List;Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public isDisplaying()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/android/sdk/activities/IntercomMessengerActivity;->openInbox(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onInAppNotificationDismiss(Lio/intercom/android/sdk/overlay/InAppNotification;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->listener:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;

    invoke-interface {v1}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;->getRootView()Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lio/intercom/android/sdk/overlay/InAppNotification;->getConversation()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v2

    if-eqz v1, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->listener:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;

    invoke-interface {v0, v2}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;->markAsDismissed(Lio/intercom/android/sdk/models/Conversation;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/overlay/InAppNotification;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->lastDisplayedConversations:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/InAppNotification;

    iget-object v4, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, v4}, Lio/intercom/android/sdk/overlay/InAppNotification;->moveForward(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t get root view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v0, v1}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->displayPill(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->hasAnimated:Z

    :cond_1
    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getLastAdminPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    const-string v1, "chat"

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getMessageStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lio/intercom/android/sdk/models/Part$DeliveryOption;->FULL:Lio/intercom/android/sdk/models/Part$DeliveryOption;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getDeliveryOption()Lio/intercom/android/sdk/models/Part$DeliveryOption;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedInAppFromFull(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isInitialMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->dismissInAppMessageSnippet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->dismissInAppCommentSnippet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onInAppNotificationTap(Lio/intercom/android/sdk/models/Conversation;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->listener:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;

    invoke-interface {v0, p1}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;->openNotification(Lio/intercom/android/sdk/models/Conversation;)V

    return-void
.end method

.method public reset(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/InAppNotification;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->removeView()V

    goto :goto_0

    :cond_0
    sget v0, Lio/intercom/android/sdk/R$id;->notification_pill:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setBottomPadding(I)V
    .locals 5

    iput p1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->bottomPadding:I

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->isDisplaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/InAppNotification;

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->bottomPadding:I

    invoke-virtual {v0, v2, v3}, Lio/intercom/android/sdk/overlay/InAppNotification;->updateBottomPadding(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->listener:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;

    invoke-interface {v0}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;->getRootView()Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_overlay_pill_bottom_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v1, v2, v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    iput v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->pillPosition:F

    sget v1, Lio/intercom/android/sdk/R$id;->notification_pill:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->updatePillPosition(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t get root view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2
.end method

.method syncUpdates(Ljava/util/List;Ljava/util/Map;Landroid/view/ViewGroup;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/intercom/android/sdk/overlay/InAppNotification;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/InAppNotification;

    instance-of v1, v0, Lio/intercom/android/sdk/overlay/ChatSnippet;

    if-eqz v1, :cond_0

    if-gtz v3, :cond_1

    :cond_0
    if-nez v0, :cond_6

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->removeView()V

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->contextLocaliser:Lio/intercom/android/sdk/utilities/ContextLocaliser;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/utilities/ContextLocaliser;->createLocalisedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lio/intercom/android/sdk/overlay/StackableSnippet;

    iget-object v4, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->handler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget-object v7, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v8, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->requestManager:Lio/intercom/a/a/a/j;

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/overlay/StackableSnippet;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;ILandroid/os/Handler;ILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    move-object v4, v0

    :goto_1
    const/4 v0, 0x3

    if-ge v3, v0, :cond_3

    iget-object v7, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->inflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->bottomPadding:I

    move-object v5, p3

    move-object v6, v2

    move v8, v10

    invoke-virtual/range {v4 .. v9}, Lio/intercom/android/sdk/overlay/InAppNotification;->display(Landroid/view/ViewGroup;Lio/intercom/android/sdk/models/Conversation;Landroid/view/LayoutInflater;ZI)V

    :goto_2
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->notifications:Ljava/util/Map;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lio/intercom/android/sdk/overlay/InAppNotification;->removeView()V

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/InAppNotification;

    invoke-virtual {v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->removeView()V

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    move-object v4, v0

    goto :goto_1
.end method
