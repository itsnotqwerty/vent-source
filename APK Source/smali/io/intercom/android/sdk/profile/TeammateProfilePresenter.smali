.class Lio/intercom/android/sdk/profile/TeammateProfilePresenter;
.super Ljava/lang/Object;


# static fields
.field private static final FADE_DURATION_MS:I = 0x96


# instance fields
.field private final activeStatePresenter:Lio/intercom/android/sdk/views/ActiveStatePresenter;

.field private final activeStateView:Landroid/view/View;

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

.field private final avatarHolder:Landroid/widget/LinearLayout;

.field private final avatarStroke:Landroid/graphics/drawable/Drawable;

.field private final avatarView1:Landroid/widget/ImageView;

.field private final avatarView2:Landroid/widget/ImageView;

.field private final avatarView3:Landroid/widget/ImageView;

.field private final backgroundImageView:Landroid/widget/ImageView;

.field private final bioView:Landroid/widget/TextView;

.field private final borderSize:I

.field private final bottomSpacer:Landroid/widget/Space;

.field private final groupConversationBanner:Landroid/widget/LinearLayout;

.field lastAdminLocation:Lio/intercom/android/sdk/models/Location;

.field private final linkedInButton:Landroid/widget/ImageButton;

.field final locationView:Landroid/widget/TextView;

.field private final profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

.field private final requestManager:Lio/intercom/a/a/a/j;

.field private final roleView:Landroid/widget/TextView;

.field private final rootLayout:Landroid/view/ViewGroup;

.field private final socialLayout:Landroid/widget/LinearLayout;

.field private final subtitleView:Landroid/widget/TextView;

.field private final timeUpdate:Ljava/lang/Runnable;

.field private final titleView:Landroid/widget/TextView;

.field private final titleViewNameOnly:Landroid/widget/TextView;

.field private final toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

.field private final topSpacer:Landroid/widget/Space;

.field private final twitterButton:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;ILio/intercom/android/sdk/profile/ProfilePresenter;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "I",
            "Lio/intercom/android/sdk/profile/ProfilePresenter;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$3;-><init>(Lio/intercom/android/sdk/profile/TeammateProfilePresenter;)V

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->timeUpdate:Ljava/lang/Runnable;

    iput-object p3, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iput-object p4, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p5, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->requestManager:Lio/intercom/a/a/a/j;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_teammate_profile_container_view:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_avatar_spacer:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->topSpacer:Landroid/widget/Space;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_bottom_spacer:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->bottomSpacer:Landroid/widget/Space;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_title_name_only:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->titleViewNameOnly:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->subtitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_role:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->roleView:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_location:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->locationView:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_bio:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->bioView:Landroid/widget/TextView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_teammate_avatar1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView1:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_teammate_avatar2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView2:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_teammate_avatar3:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView3:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_collapsing_teammate_active_state:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->activeStateView:Landroid/view/View;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->twitter_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->twitterButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->linkedin_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->linkedInButton:Landroid/widget/ImageButton;

    sget v0, Lio/intercom/android/sdk/R$id;->collapsing_background_image:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->backgroundImageView:Landroid/widget/ImageView;

    sget v0, Lio/intercom/android/sdk/R$id;->social_button_layout:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->socialLayout:Landroid/widget/LinearLayout;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_group_conversations_banner:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->groupConversationBanner:Landroid/widget/LinearLayout;

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_group_avatar_holder:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarHolder:Landroid/widget/LinearLayout;

    new-instance v0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    new-instance v0, Lio/intercom/android/sdk/views/ActiveStatePresenter;

    invoke-direct {v0}, Lio/intercom/android/sdk/views/ActiveStatePresenter;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->activeStatePresenter:Lio/intercom/android/sdk/views/ActiveStatePresenter;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_solid_circle:I

    invoke-static {v0, v1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarStroke:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarStroke:Landroid/graphics/drawable/Drawable;

    invoke-interface {p4}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView1:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarStroke:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView2:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarStroke:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView3:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarStroke:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView1:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v3, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v4, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView2:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v3, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v4, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView3:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v3, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    iget v4, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->borderSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method private setGroupConversationParticipants(Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->groupConversationBanner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0, v4}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_group_conversations_banner_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_teammate_avatar_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    add-int v1, v6, v5

    div-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_1
    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    if-ne v2, v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, -0x1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "+"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->groupConversationBanner:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant;

    sget-object v7, Lio/intercom/android/sdk/models/Participant;->NULL:Lio/intercom/android/sdk/models/Participant;

    if-eq v0, v7, :cond_0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v8

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v9, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v8, v7, v0, v9}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto/16 :goto_1
.end method

.method private setSocialAccounts(Lio/intercom/android/sdk/models/SocialAccount;Lio/intercom/android/sdk/models/SocialAccount;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    sget-object v0, Lio/intercom/android/sdk/models/SocialAccount;->NULL:Lio/intercom/android/sdk/models/SocialAccount;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->twitterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    sget-object v0, Lio/intercom/android/sdk/models/SocialAccount;->NULL:Lio/intercom/android/sdk/models/SocialAccount;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->linkedInButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->linkedInButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->twitterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->socialLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->twitterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->twitterButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$1;

    invoke-direct {v1, p0, p1, p3}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$1;-><init>(Lio/intercom/android/sdk/profile/TeammateProfilePresenter;Lio/intercom/android/sdk/models/SocialAccount;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->linkedInButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->linkedInButton:Landroid/widget/ImageButton;

    new-instance v1, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$2;

    invoke-direct {v1, p0, p2, p3}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter$2;-><init>(Lio/intercom/android/sdk/profile/TeammateProfilePresenter;Lio/intercom/android/sdk/models/SocialAccount;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->socialLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private setToolbarBackground(Lio/intercom/android/sdk/models/Avatar;I)V
    .locals 3

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Avatar;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/j;->eT(Ljava/lang/String;)Lio/intercom/a/a/a/i;

    move-result-object v1

    invoke-static {}, Lio/intercom/a/a/a/c/d/c/c;->Ji()Lio/intercom/a/a/a/c/d/c/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/k;)Lio/intercom/a/a/a/i;

    move-result-object v1

    new-instance v2, Lio/intercom/a/a/a/g/g;

    invoke-direct {v2}, Lio/intercom/a/a/a/g/g;-><init>()V

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ImageUtils;->getDiskCacheStrategy(Ljava/lang/String;)Lio/intercom/a/a/a/c/b/i;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Lio/intercom/a/a/a/g/g;->aO(II)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->backgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->c(Landroid/widget/ImageView;)Lio/intercom/a/a/a/g/a/i;

    :cond_0
    return-void
.end method


# virtual methods
.method getRootLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getToolbarBehavior()Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    return-object v0
.end method

.method setPresence(Lio/intercom/android/sdk/models/LastParticipatingAdmin;Ljava/util/List;Ljava/lang/CharSequence;ILandroid/support/design/widget/AppBarLayout;Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/LastParticipatingAdmin;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/support/design/widget/AppBarLayout;",
            "Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    invoke-virtual {p5, v0}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/profile/ProfilePresenter;->isDidShowUnknown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p7, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;->EXPANDED:Lio/intercom/android/sdk/profile/ProfilePresenter$ProfileState;

    if-ne p6, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p5, v0, v1, v2}, Landroid/support/design/widget/AppBarLayout;->a(ZZZ)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/profile/ProfilePresenter;->setDidShowUnknown(Z)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3, v1}, Lio/intercom/android/sdk/utilities/GroupConversationTextFormatter;->groupConversationTitle(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->titleViewNameOnly:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setTeammateSubtitle(Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView1:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v5, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v3, v4, v0, v5}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    if-lez v2, :cond_1

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView2:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v5, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v3, v4, v0, v5}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    :cond_1
    const/4 v0, 0x1

    if-le v2, v0, :cond_2

    add-int/lit8 v0, v2, -0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->avatarView3:Landroid/widget/ImageView;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v4, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v2, v3, v0, v4}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->activeStateView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->activeStatePresenter:Lio/intercom/android/sdk/views/ActiveStatePresenter;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->isActive()Z

    move-result v3

    iget-object v4, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->activeStateView:Landroid/view/View;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v2, v3, v4, v0}, Lio/intercom/android/sdk/views/ActiveStatePresenter;->presentStateDot(ZLandroid/view/View;Lio/intercom/android/sdk/identity/AppConfig;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->roleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getJobTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getLocation()Lio/intercom/android/sdk/models/Location;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->lastAdminLocation:Lio/intercom/android/sdk/models/Location;

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->timeUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->bioView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getIntro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getTwitter()Lio/intercom/android/sdk/models/SocialAccount;

    move-result-object v0

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getLinkedIn()Lio/intercom/android/sdk/models/SocialAccount;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setSocialAccounts(Lio/intercom/android/sdk/models/SocialAccount;Lio/intercom/android/sdk/models/SocialAccount;Landroid/content/Context;)V

    if-nez p4, :cond_3

    invoke-static {v1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget p4, v0, Landroid/graphics/Point;->x:I

    :cond_3
    invoke-direct {p0, p2, p4}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setGroupConversationParticipants(Ljava/util/List;I)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p8}, Landroid/view/View;->requestLayout()V

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->backgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_toolbar_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->profilePresenter:Lio/intercom/android/sdk/profile/ProfilePresenter;

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->toolbarBehavior:Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/profile/ProfilePresenter;->applyOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$b;)V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LastParticipatingAdmin;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->setToolbarBackground(Lio/intercom/android/sdk/models/Avatar;I)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1
.end method

.method setTeammateSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setTextAndVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->topSpacer:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0
.end method

.method stopUpdatingTime()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->locationView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfilePresenter;->timeUpdate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
