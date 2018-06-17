.class Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;
.super Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;


# static fields
.field private static final CHANGE_IN_AVATAR_SCALE:F = 0.5f

.field private static final CHANGE_IN_TITLE_SCALE:F = 0.1f


# instance fields
.field private activeStateCircle:Landroid/view/View;

.field private avatar1:Landroid/view/View;

.field private avatar2:Landroid/view/View;

.field private avatar3:Landroid/view/View;

.field private backgroundView:Landroid/widget/ImageView;

.field private bio:Landroid/view/View;

.field private location:Landroid/view/View;

.field private final maxAlpha:F

.field private final profileTranslationY:F

.field private role:Landroid/view/View;

.field private final rootLayout:Landroid/view/ViewGroup;

.field private socialLayout:Landroid/widget/LinearLayout;

.field private subtitle:Landroid/view/View;

.field private title:Landroid/view/View;

.field private titleNameOnly:Landroid/view/View;

.field private final translate18dp:F

.field private final translate8dp:F


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/profile/ProfileToolbarBehavior;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v0}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->translate8dp:F

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_team_profile_translation_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->profileTranslationY:F

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1, v0}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->translate18dp:F

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_toolbar_image_background_alpha:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->maxAlpha:F

    return-void
.end method

.method private translateY(Landroid/view/View;Landroid/view/View;F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p3, v0

    invoke-virtual {p0, p2}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->getScrollPercentage(Landroid/view/View;)F

    move-result v1

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateAvatar(Landroid/view/ViewGroup;Landroid/view/View;F)V
    .locals 9

    const/4 v8, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar1:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_teammate_avatar1:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar1:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar2:Landroid/view/View;

    if-nez v0, :cond_1

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_teammate_avatar2:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar2:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar3:Landroid/view/View;

    if-nez v0, :cond_2

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_teammate_avatar3:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar3:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->activeStateCircle:Landroid/view/View;

    if-nez v0, :cond_3

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_teammate_active_state:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->activeStateCircle:Landroid/view/View;

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_teammate_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_teammate_active_state_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v1

    sub-float v2, v5, v2

    add-float/2addr v2, v5

    div-float/2addr v0, v1

    add-float/2addr v0, v5

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->translate8dp:F

    div-float/2addr v1, v7

    mul-float/2addr v1, p3

    iget-object v3, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar1:Landroid/view/View;

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->activeStateCircle:Landroid/view/View;

    mul-float/2addr v1, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->profileTranslationY:F

    div-float/2addr v1, v7

    mul-float/2addr v1, p3

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar1:Landroid/view/View;

    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->activeStateCircle:Landroid/view/View;

    mul-float/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    const v0, 0x3ba3d70a    # 0.005f

    mul-float/2addr v0, p3

    add-float/2addr v0, v5

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->activeStateCircle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->activeStateCircle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar2:Landroid/view/View;

    invoke-virtual {p0, v0, p2, v5, v8}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->avatar3:Landroid/view/View;

    invoke-virtual {p0, v0, p2, v5, v8}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    return-void
.end method

.method private updateBackgroundImage(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->backgroundView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->collapsing_background_image:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->backgroundView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->backgroundView:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->maxAlpha:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    return-void
.end method

.method private updateBio(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->bio:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_bio:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->bio:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->bio:Landroid/view/View;

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->profileTranslationY:F

    invoke-direct {p0, v0, p2, v1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->translateY(Landroid/view/View;Landroid/view/View;F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->bio:Landroid/view/View;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    return-void
.end method

.method private updateLocation(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->location:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_location:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->location:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->location:Landroid/view/View;

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->profileTranslationY:F

    invoke-direct {p0, v0, p2, v1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->translateY(Landroid/view/View;Landroid/view/View;F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->location:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    return-void
.end method

.method private updateRole(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->role:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_role:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->role:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->role:Landroid/view/View;

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->profileTranslationY:F

    invoke-direct {p0, v0, p2, v1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->translateY(Landroid/view/View;Landroid/view/View;F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->role:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    return-void
.end method

.method private updateSocialButtons(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->socialLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->social_button_layout:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->socialLayout:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->socialLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->profileTranslationY:F

    invoke-direct {p0, v0, p2, v1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->translateY(Landroid/view/View;Landroid/view/View;F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->socialLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    return-void
.end method

.method private updateTitle(Landroid/view/ViewGroup;Landroid/view/View;F)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->title:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->title:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->titleNameOnly:Landroid/view/View;

    if-nez v0, :cond_1

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_title_name_only:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->titleNameOnly:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->subtitle:Landroid/view/View;

    if-nez v0, :cond_2

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_collapsing_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->subtitle:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->subtitle:Landroid/view/View;

    invoke-virtual {p0, v0, p2, v3, v4}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->title:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->titleNameOnly:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->translate18dp:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->subtitle:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr v0, p3

    add-float/2addr v0, v3

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->title:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->title:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->title:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->title:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->titleNameOnly:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->titleNameOnly:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->titleNameOnly:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->titleNameOnly:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->title:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v3, v1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->titleNameOnly:Landroid/view/View;

    invoke-virtual {p0, v0, p2, v3, v4}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->setAlphaAsPercentageOfScroll(Landroid/view/View;Landroid/view/View;FZ)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->toolbarHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->getScrollPercentage(Landroid/view/View;)F

    move-result v0

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1, v0}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->updateAvatar(Landroid/view/ViewGroup;Landroid/view/View;F)V

    iget-object v1, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p1, v0}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->updateTitle(Landroid/view/ViewGroup;Landroid/view/View;F)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->updateRole(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->updateLocation(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->updateBio(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->updateSocialButtons(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->updateBackgroundImage(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/profile/TeammateProfileToolbarBehavior;->rootLayout:Landroid/view/ViewGroup;

    invoke-static {v0}, Lio/intercom/android/sdk/utilities/ViewUtils;->requestLayoutIfPossible(Landroid/view/View;)V

    goto :goto_0
.end method
