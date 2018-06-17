.class abstract Lio/intercom/android/sdk/overlay/ChatNotification;
.super Lio/intercom/android/sdk/overlay/InAppNotification;


# static fields
.field private static final ANIMATION_DURATION:I = 0xaa

.field private static final GROWTH_WIDTH:I = 0x163


# instance fields
.field private final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/models/Conversation;",
            "II",
            "Lio/intercom/android/sdk/overlay/InAppNotification$Listener;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lio/intercom/android/sdk/overlay/InAppNotification;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;)V

    iput-object p7, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method private expandChat(Landroid/view/ViewGroup;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 13

    sget v0, Lio/intercom/android/sdk/R$id;->chathead_text_container:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v1, Lio/intercom/android/sdk/R$id;->chathead_text_header:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/ChatNotification;->getContentContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v4, Lio/intercom/android/sdk/R$id;->chat_avatar_container:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v6

    const/4 v7, 0x5

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "translationX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x42c80000    # 100.0f

    add-float/2addr v5, v12

    aput v5, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v5, 0x2

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    const/high16 v11, 0x42200000    # 40.0f

    sub-float/2addr v6, v11

    aput v6, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x3

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x4

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-static {v4, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0xaa

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0xaa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_4

    invoke-static {v3, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0xaa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    invoke-direct {p0, v0, p2}, Lio/intercom/android/sdk/overlay/ChatNotification;->getWidthAnimator(Landroid/view/ViewGroup;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/overlay/ChatNotification;->getWidthAnimator(Landroid/view/ViewGroup;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0, v0, v2}, Lio/intercom/android/sdk/overlay/ChatNotification;->getMarginAnimator(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getMarginAnimator(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;)Landroid/animation/Animator;
    .locals 4

    const/4 v2, 0x0

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/overlay/ChatNotification$3;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/overlay/ChatNotification$3;-><init>(Lio/intercom/android/sdk/overlay/ChatNotification;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0xaa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private getWidthAnimator(Landroid/view/ViewGroup;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const v1, 0x43b18000    # 355.0f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/ChatNotification;->getWidthAnimator(Landroid/view/ViewGroup;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lio/intercom/android/sdk/overlay/ChatNotification$4;

    invoke-direct {v2, p0, v0, p2}, Lio/intercom/android/sdk/overlay/ChatNotification$4;-><init>(Lio/intercom/android/sdk/overlay/ChatNotification;ILandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1
.end method

.method private getWidthAnimator(Landroid/view/ViewGroup;)Landroid/animation/ValueAnimator;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const v1, 0x43b18000    # 355.0f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/overlay/ChatNotification$5;

    invoke-direct {v1, p0, p1}, Lio/intercom/android/sdk/overlay/ChatNotification$5;-><init>(Lio/intercom/android/sdk/overlay/ChatNotification;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0xaa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private performEntranceAnimation()V
    .locals 5

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->chat_avatar_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->chat_full_body:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lio/intercom/android/sdk/overlay/ChatNotification$1;

    invoke-direct {v2, p0, v0}, Lio/intercom/android/sdk/overlay/ChatNotification$1;-><init>(Lio/intercom/android/sdk/overlay/ChatNotification;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private populateViewsWithData(Lio/intercom/a/a/a/j;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->chathead_root:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v0, Lio/intercom/android/sdk/R$id;->chathead_avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v2, Lio/intercom/android/sdk/R$id;->chathead_text_header:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v2}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v2}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/FontUtils;->setRobotoMediumTypeface(Landroid/widget/TextView;)V

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getLastAdmin()Lio/intercom/android/sdk/models/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v3

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v2}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-static {v3, v0, v2, p1}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/ChatNotification;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/ChatNotification;->updateContentContainer(Lio/intercom/android/sdk/models/Part;)V

    return-void
.end method


# virtual methods
.method animateTextContainer(Landroid/view/ViewGroup;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit16 v0, v0, -0x96

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setX(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/overlay/ChatNotification$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/overlay/ChatNotification$2;-><init>(Lio/intercom/android/sdk/overlay/ChatNotification;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public display(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ZI)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/intercom/android/sdk/overlay/ChatNotification;->inflateChatRootView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/ChatNotification;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->requestManager:Lio/intercom/a/a/a/j;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/overlay/ChatNotification;->populateViewsWithData(Lio/intercom/a/a/a/j;)V

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lio/intercom/android/sdk/overlay/ChatNotification;->performEntranceAnimation()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/ChatNotification;->beginListeningForTouchEvents()V

    goto :goto_0
.end method

.method protected abstract getContentContainer()Landroid/view/View;
.end method

.method protected abstract inflateChatRootView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
.end method

.method public moveBackward(Landroid/view/ViewGroup;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/android/sdk/overlay/ChatNotification;->position:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/ChatNotification;->animateToPosition(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/overlay/ChatNotification;->expandChat(Landroid/view/ViewGroup;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method protected onNotificationPressed(Landroid/view/View;)V
    .locals 4

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

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

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected abstract updateContentContainer(Lio/intercom/android/sdk/models/Part;)V
.end method

.method protected abstract updateViewDataDuringReplyPulse(I)V
.end method
