.class public Lio/intercom/android/sdk/views/AuthorAvatarView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final activeStatePresenter:Lio/intercom/android/sdk/views/ActiveStatePresenter;

.field private final activeStateSize:I

.field private final activeStateView:Landroid/view/View;

.field private final imageViewSize:I

.field private final leftImageView:Landroid/widget/ImageView;

.field private final rightImageView:Landroid/widget/ImageView;

.field private final teamAvatarPadding:I

.field private final topImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lio/intercom/android/sdk/views/ActiveStatePresenter;

    invoke-direct {v0}, Lio/intercom/android/sdk/views/ActiveStatePresenter;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStatePresenter:Lio/intercom/android/sdk/views/ActiveStatePresenter;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->topImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->topImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_solid_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_solid_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->topImageView:Landroid/widget/ImageView;

    sget v1, Lio/intercom/android/sdk/R$drawable;->intercom_solid_circle:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v4, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v4, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->topImageView:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v4, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lio/intercom/android/sdk/R$styleable;->AuthorAvatarView:[I

    invoke-virtual {v0, p2, v1, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Lio/intercom/android/sdk/R$styleable;->AuthorAvatarView_avatarSize:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    sget v0, Lio/intercom/android/sdk/R$styleable;->AuthorAvatarView_activeStateSize:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateSize:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateSize:I

    const/16 v4, 0x55

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private loadDefaultDrawable(Lio/intercom/android/sdk/identity/AppConfig;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->setNumberOfVisibleAvatars(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->requestLayout()V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lio/intercom/android/sdk/utilities/AvatarUtils;->getDefaultDrawable(Landroid/content/Context;Lio/intercom/android/sdk/identity/AppConfig;)Lio/intercom/android/sdk/views/AvatarDefaultDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private loadThreeAvatars(Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    const/16 v4, 0x53

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v4, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    const/16 v4, 0x55

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->topImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    const/16 v4, 0x31

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->setNumberOfVisibleAvatars(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->requestLayout()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, p4, p5}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, p4, p5}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    invoke-virtual {p3}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->topImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, p4, p5}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method private loadTwoAvatars(Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    iget v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    iget v4, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->teamAvatarPadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    iget v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->imageViewSize:I

    const/16 v4, 0x15

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->setNumberOfVisibleAvatars(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->requestLayout()V

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, p3, p4}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    invoke-virtual {p2}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    invoke-static {v0, v1, p3, p4}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method private setNumberOfVisibleAvatars(I)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->rightImageView:Landroid/widget/ImageView;

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->topImageView:Landroid/widget/ImageView;

    const/4 v3, 0x3

    if-lt p1, v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public loadAvatar(Lio/intercom/android/sdk/models/Avatar;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->setNumberOfVisibleAvatars(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->requestLayout()V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-static {p1, v0, p2, p3}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method public loadAvatarWithActiveState(Lio/intercom/android/sdk/models/Avatar;ZLio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->setNumberOfVisibleAvatars(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStatePresenter:Lio/intercom/android/sdk/views/ActiveStatePresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    invoke-virtual {v0, p2, v1, p3}, Lio/intercom/android/sdk/views/ActiveStatePresenter;->presentStateDot(ZLandroid/view/View;Lio/intercom/android/sdk/identity/AppConfig;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->activeStateView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/views/AuthorAvatarView;->requestLayout()V

    iget-object v0, p0, Lio/intercom/android/sdk/views/AuthorAvatarView;->leftImageView:Landroid/widget/ImageView;

    invoke-static {p1, v0, p3, p4}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    return-void
.end method

.method public loadAvatars(Ljava/util/List;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/models/Participant;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/models/Participant;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/intercom/android/sdk/models/Participant;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/views/AuthorAvatarView;->loadThreeAvatars(Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lio/intercom/android/sdk/views/AuthorAvatarView;->loadDefaultDrawable(Lio/intercom/android/sdk/identity/AppConfig;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lio/intercom/android/sdk/views/AuthorAvatarView;->loadAvatar(Lio/intercom/android/sdk/models/Avatar;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Participant;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/models/Participant;

    invoke-direct {p0, v0, v1, p2, p3}, Lio/intercom/android/sdk/views/AuthorAvatarView;->loadTwoAvatars(Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/models/Participant;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
