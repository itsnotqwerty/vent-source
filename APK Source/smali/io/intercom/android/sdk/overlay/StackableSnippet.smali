.class Lio/intercom/android/sdk/overlay/StackableSnippet;
.super Lio/intercom/android/sdk/overlay/InAppNotification;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final BASE_ELEVATION:I = 0x12

.field private static final BASE_MARGIN_DP:I = 0x10

.field private static final ELEVATION_STEP:I = 0x3


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;ILandroid/os/Handler;ILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/models/Conversation;",
            "I",
            "Landroid/os/Handler;",
            "I",
            "Lio/intercom/android/sdk/overlay/InAppNotification$Listener;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lio/intercom/android/sdk/overlay/InAppNotification;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;)V

    iput-object p4, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->handler:Landroid/os/Handler;

    iput-object p8, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method private animateOnScreen()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->handler:Landroid/os/Handler;

    new-instance v1, Lio/intercom/android/sdk/overlay/StackableSnippet$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/overlay/StackableSnippet$1;-><init>(Lio/intercom/android/sdk/overlay/StackableSnippet;)V

    iget v2, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->position:I

    mul-int/lit8 v2, v2, 0x46

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setViewData(I)V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v3, Lio/intercom/android/sdk/R$id;->preview_name:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoMediumTypeface(Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/StackableSnippet;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v3, Lio/intercom/android/sdk/R$id;->preview_summary:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Part;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v3, Lio/intercom/android/sdk/R$id;->preview_avatar:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Conversation;->getLastAdmin()Lio/intercom/android/sdk/models/Participant;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v3, v1, v0, v4}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->position:I

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    invoke-static {v1, v2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    iget v1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->position:I

    mul-int/lit8 v1, v1, 0x3

    rsub-int/lit8 v1, v1, 0x12

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->position:I

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->position:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/StackableSnippet;->beginListeningForTouchEvents()V

    :cond_1
    return-void
.end method

.method private setupView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_preview_notification:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/StackableSnippet;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public display(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ZI)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/overlay/StackableSnippet;->setupView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    invoke-direct {p0, p4}, Lio/intercom/android/sdk/overlay/StackableSnippet;->setViewData(I)V

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/overlay/StackableSnippet;->animateOnScreen()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public moveBackward(Landroid/view/ViewGroup;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->position:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/StackableSnippet;->animateToPosition(Landroid/content/Context;)V

    return-void
.end method

.method protected onNotificationPressed(Landroid/view/View;)V
    .locals 4

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onNotificationReleased(Landroid/view/View;)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public update(Lio/intercom/android/sdk/models/Conversation;Ljava/lang/Runnable;)V
    .locals 3

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->conversation:Lio/intercom/android/sdk/models/Conversation;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->notification_root:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/StackableSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->preview_summary:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lio/intercom/android/sdk/overlay/StackableSnippet;->performReplyPulse(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateViewDataDuringReplyPulse(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/StackableSnippet;->setViewData(I)V

    return-void
.end method
