.class Lio/intercom/android/sdk/profile/TeamProfilePresenter;
.super Ljava/lang/Object;


# instance fields
.field private final adminNameViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

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

.field private final avatarLayout:Landroid/widget/LinearLayout;

.field private final avatarViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final bioView:Landroid/widget/TextView;

.field private final collapsedOfficeHours:Landroid/widget/TextView;

.field private final collapsedToolbarTitle:Landroid/widget/TextView;

.field private final profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

.field private final rootLayout:Landroid/view/ViewGroup;

.field private final toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;ILio/intercom/android/sdk/profile/ProfilePresenter;Lio/intercom/android/sdk/Provider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "I",
            "Lio/intercom/android/sdk/profile/ProfilePresenter;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_team_profile:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    iput-object p4, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedToolbarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_office_hours:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedOfficeHours:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_team_profiles_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->avatarLayout:Landroid/widget/LinearLayout;

    new-array v1, v6, [Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_avatar1:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_avatar2:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_avatar3:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->avatarViews:Ljava/util/List;

    new-array v1, v6, [Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_name_1:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_name_2:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_name_3:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->adminNameViews:Ljava/util/List;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_bio:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->bioView:Landroid/widget/TextView;

    new-instance v0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    return-void
.end method

.method private setAvatar(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/a/a/a/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-static {p1, p2, v0, p3}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method private setProfileTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getRootLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getToolbarBehavior()Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    return-object v0
.end method

.method setPresence(Lio/intercom/android/sdk/models/TeamPresence;ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;Lio/intercom/a/a/a/j;)V
    .locals 8

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    invoke-virtual {p3, v0}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->avatarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->isDidShowUnknown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p3, v5, v5, v5}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0, v4}, Lio/intercom/android/sdk/profile/ProfilePresenter;->setDidShowUnknown(Z)V

    :cond_1
    invoke-virtual {p1}, Lio/intercom/android/sdk/models/TeamPresence;->getActiveAdmins()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->avatarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->bioView:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getTeamProfileBio()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->setProfileTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_3

    invoke-static {v1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget p2, v0, Landroid/graphics/Point;->x:I

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedOfficeHours:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sget v4, Lio/intercom/android/sdk/R$dimen;->intercom_team_profile_translation_y:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_toolbar_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p5}, Landroid/view/View;->requestLayout()V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedOfficeHours:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/profile/ProfilePresenter;->applyOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$b;)V

    return-void

    :cond_4
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->avatarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/TeamPresence;->getOfficeHours()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_office_hours_banner:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedOfficeHours:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/TeamPresence;->getExpectedResponseDelay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move v3, v4

    :goto_2
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->avatarViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->avatarViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->adminNameViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/models/Participant;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v7

    invoke-direct {p0, v7, v2, p6}, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->setAvatar(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/a/a/a/j;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Participant;->getForename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_team_profile_separator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedOfficeHours:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/TeamPresence;->getOfficeHours()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedOfficeHours:Landroid/widget/TextView;

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_snooze:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedOfficeHours:Landroid/widget/TextView;

    const/high16 v1, 0x40c00000    # 6.0f

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_1

    :cond_6
    move v0, v5

    goto/16 :goto_0
.end method

.method setTeamCollapsingTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfilePresenter;->collapsedToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
