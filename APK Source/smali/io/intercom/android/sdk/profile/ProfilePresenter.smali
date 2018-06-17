.class public Lio/intercom/android/sdk/profile/ProfilePresenter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;,
        Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;
    }
.end annotation


# instance fields
.field final appBarLayout:Landroid/support/design/widget/AppBarLayout;

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

.field private autoOpened:Z

.field private conversationId:Ljava/lang/String;

.field currentState:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

.field private didShowUnknown:Z

.field isAnimating:Z

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final offsetListener:Landroid/support/design/widget/AppBarLayout$b;

.field private final teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

.field private final teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

.field private final titleLayoutCoordinator:Landroid/view/ViewGroup;

.field private final toolbar:Landroid/view/View;

.field private wasClicked:Z


# direct methods
.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->conversationId:Ljava/lang/String;

    sget-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->IDLE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->currentState:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    iput-boolean v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->isAnimating:Z

    iput-boolean v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->didShowUnknown:Z

    iput-boolean v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->wasClicked:Z

    iput-boolean v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->autoOpened:Z

    new-instance v0, Lio/intercom/android/sdk/profile/ProfilePresenter$2;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/profile/ProfilePresenter$2;-><init>(Lio/intercom/android/sdk/profile/ProfilePresenter;)V

    iput-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->offsetListener:Landroid/support/design/widget/AppBarLayout$b;

    iput-object p3, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p2, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    sget v0, Lio/intercom/android/sdk/R$id;->app_bar_layout:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    sget v0, Lio/intercom/android/sdk/R$id;->profile_toolbar:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->toolbar:Landroid/view/View;

    sget v0, Lio/intercom/android/sdk/R$id;->profile_toolbar_coordinator:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->titleLayoutCoordinator:Landroid/view/ViewGroup;

    invoke-interface {p3}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v2

    new-instance v0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    move-object v1, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;-><init>(Landroid/support/design/widget/CoordinatorLayout;ILio/intercom/android/sdk/profile/ProfilePresenter;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    iput-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    new-instance v0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    invoke-direct {v0, p1, v2, p0, p3}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;-><init>(Landroid/support/design/widget/CoordinatorLayout;ILio/intercom/android/sdk/profile/ProfilePresenter;Lio/intercom/android/sdk/Provider;)V

    iput-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    return-void
.end method

.method private openProfile()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, v1, v1, v1}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/design/widget/AppBarLayout$b;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    return-void
.end method

.method applyOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$b;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/profile/ProfilePresenter$1;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/profile/ProfilePresenter$1;-><init>(Lio/intercom/android/sdk/profile/ProfilePresenter;Landroid/support/design/widget/AppBarLayout$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public closeProfile()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    return-void
.end method

.method isDidShowUnknown()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->didShowUnknown:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->currentState:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    sget-object v1, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->EXPANDED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->stopUpdatingTime()V

    return-void
.end method

.method public profileAutoOpened()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->autoOpened:Z

    invoke-direct {p0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->openProfile()V

    return-void
.end method

.method public profileClicked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->wasClicked:Z

    invoke-direct {p0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->openProfile()V

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->conversationId:Ljava/lang/String;

    return-void
.end method

.method setDidShowUnknown(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->didShowUnknown:Z

    return-void
.end method

.method public setTeamPresence(Lio/intercom/android/sdk/models/TeamPresence;ILio/intercom/a/a/a/j;)V
    .locals 7

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->setTeamCollapsingTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/TeamPresence;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setTeammateSubtitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->toolbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->getToolbarBehavior()Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    iget-object v3, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->getRootLayout()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->titleLayoutCoordinator:Landroid/view/ViewGroup;

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->setPresence(Lio/intercom/android/sdk/models/TeamPresence;ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;Lio/intercom/a/a/a/j;)V

    goto :goto_0
.end method

.method public setTeammatePresence(Lio/intercom/android/sdk/models/LastParticipatingAdmin;Ljava/util/List;Ljava/lang/CharSequence;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/LastParticipatingAdmin;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->toolbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->getToolbarBehavior()Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    iget-object v5, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v6, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->currentState:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->getRootLayout()Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->titleLayoutCoordinator:Landroid/view/ViewGroup;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setPresence(Lio/intercom/android/sdk/models/LastParticipatingAdmin;Ljava/util/List;Ljava/lang/CharSequence;ILandroid/support/design/widget/AppBarLayout;Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setUnknownPresence()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->didShowUnknown:Z

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->getRootLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->getRootLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->toolbar:Landroid/view/View;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->getToolbarBehavior()Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teammateProfilePresenter:Lio/intercom/android/sdk/profile/TeammateProfilePresenter;

    invoke-virtual {v1}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->getToolbarBehavior()Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$b;)V

    return-void
.end method

.method public startOffsetListener()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->offsetListener:Landroid/support/design/widget/AppBarLayout$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    return-void
.end method

.method trackOpenMetric()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->teamProfilePresenter:Lio/intercom/android/sdk/profile/TeamProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->getRootLayout()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->TEAMMATE:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    :goto_0
    iget-boolean v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->wasClicked:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v2, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->profileClickedOpen(Ljava/lang/String;Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)V

    :goto_1
    iput-boolean v3, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->wasClicked:Z

    iput-boolean v3, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->autoOpened:Z

    return-void

    :cond_0
    sget-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;->TEAM:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->autoOpened:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v2, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->profileAutoOpen(Ljava/lang/String;Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v2, p0, Lio/intercom/android/sdk/profile/ProfilePresenter;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/metrics/MetricTracker;->profileScrolledOpen(Ljava/lang/String;Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileType;)V

    goto :goto_1
.end method
