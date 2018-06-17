.class Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;
.super Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;


# static fields
.field private static final CHANGE_IN_SCALE:F = 0.3f


# instance fields
.field private avatarMini1:Landroid/widget/ImageView;

.field private avatarMini2:Landroid/widget/ImageView;

.field private avatarMini3:Landroid/widget/ImageView;

.field private bio:Landroid/widget/TextView;

.field private officeHours:Landroid/widget/TextView;

.field private officeHoursBanner:Landroid/view/View;

.field private final rootLayout:Landroid/view/ViewGroup;

.field private separator:Landroid/view/View;

.field private teamProfiles:Landroid/widget/LinearLayout;

.field private final translate16dp:F


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->translate16dp:F

    return-void
.end method

.method private updateCollapsedAvatars(Landroid/view/ViewGroup;F)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini1:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_avatar1:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini1:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini2:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_avatar2:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini2:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini3:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_avatar3:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini3:Landroid/widget/ImageView;

    :cond_2
    const v0, 0x3f333333    # 0.7f

    const v1, 0x3b449ba6    # 0.003f

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini2:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->avatarMini3:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private updateCollapsedBio(Landroid/view/ViewGroup;Landroid/view/View;F)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->bio:Landroid/widget/TextView;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_team_bio:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->bio:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->bio:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    iget v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->translate16dp:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->bio:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private updateOfficeHours(Landroid/view/ViewGroup;Landroid/view/View;F)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->officeHours:Landroid/widget/TextView;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_office_hours:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->officeHours:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->separator:Landroid/view/View;

    if-nez v0, :cond_1

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_team_profile_separator:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->separator:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->officeHoursBanner:Landroid/view/View;

    if-nez v0, :cond_2

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_office_hours_banner:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->officeHoursBanner:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->officeHours:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->separator:Landroid/view/View;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->officeHoursBanner:Landroid/view/View;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    iget v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->translate16dp:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->officeHours:Landroid/widget/TextView;

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->separator:Landroid/view/View;

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->officeHoursBanner:Landroid/view/View;

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateTeamProfile(Landroid/view/ViewGroup;Landroid/view/View;F)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->teamProfiles:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_team_profiles_layout:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->teamProfiles:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->teamProfiles:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    iget v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->translate16dp:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->teamProfiles:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->toolbarHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->getScrollPercentage(Landroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->updateCollapsedAvatars(Landroid/view/ViewGroup;F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1, v0}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->updateTeamProfile(Landroid/view/ViewGroup;Landroid/view/View;F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1, v0}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->updateCollapsedBio(Landroid/view/ViewGroup;Landroid/view/View;F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1, v0}, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->updateOfficeHours(Landroid/view/ViewGroup;Landroid/view/View;F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeamProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ViewUtils;->requestLayoutIfPossible(Landroid/view/View;)V

    goto :goto_0
.end method
