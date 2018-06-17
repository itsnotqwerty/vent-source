.class abstract Lio/intercom/android/sdk/overlay/InAppNotification;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/overlay/InAppNotification$Listener;
    }
.end annotation


# static fields
.field private static final ANIMATE_OFFSCREEN_OFFSET:I = 0xc8

.field private static final BASE_MARGIN_DP:I = 0x10

.field private static final DISMISS_DISTANCE_DP:I = 0x50

.field protected static final MARGIN_OFFSET_DP:I = 0x8

.field private static final RESISTANCE:F = 2.0f

.field protected static final SCALE_OFFSET:F = 0.05f


# instance fields
.field protected final appConfigProvider:Lio/intercom/android/sdk/Provider;
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

.field protected conversation:Lio/intercom/android/sdk/models/Conversation;

.field private initialTouchX:F

.field private initialViewX:F

.field final listener:Lio/intercom/android/sdk/overlay/InAppNotification$Listener;

.field protected final localisedContext:Landroid/content/Context;

.field protected overlayRoot:Landroid/view/ViewGroup;

.field protected position:I

.field protected final screenHeight:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->bottomPadding:I

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    iput-object p5, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->listener:Lio/intercom/android/sdk/overlay/InAppNotification$Listener;

    iput p3, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    iput p4, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->screenHeight:I

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->localisedContext:Landroid/content/Context;

    iput-object p6, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/overlay/InAppNotification;)I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->bottomPadding:I

    return v0
.end method

.method private animateOffScreen(Landroid/view/View;)V
    .locals 4

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->initialViewX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/InAppNotification;->getParentOrScreenWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/overlay/InAppNotification$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/overlay/InAppNotification$1;-><init>(Lio/intercom/android/sdk/overlay/InAppNotification;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private animateToOriginalPosition(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private getParentOrScreenWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method


# virtual methods
.method protected animateToBackOfStack(Landroid/content/Context;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_notification_preview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    invoke-static {v2, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    iget v3, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->screenHeight:I

    add-int/2addr v1, v2

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->bottomPadding:I

    add-int/2addr v0, v1

    sub-int v0, v3, v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    sget-object v2, Landroid/view/View;->Y:Landroid/util/Property;

    new-array v3, v8, [F

    int-to-float v1, v1

    aput v1, v3, v6

    int-to-float v0, v0

    aput v0, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v8, [F

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    aput v3, v2, v6

    aput v9, v2, v7

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v8, [F

    const v4, 0x3f59999a    # 0.85f

    aput v4, v3, v6

    iget v4, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    int-to-float v4, v4

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    sub-float v4, v9, v4

    aput v4, v3, v7

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected animateToPosition(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$dimen;->intercom_notification_preview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    mul-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    invoke-static {v2, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v2

    iget v3, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->screenHeight:I

    add-int/2addr v1, v2

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->bottomPadding:I

    add-int/2addr v0, v1

    sub-int v0, v3, v0

    const-string v1, "y"

    new-array v2, v7, [F

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    aput v3, v2, v5

    int-to-float v0, v0

    aput v0, v2, v6

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v1, v4, v5

    aput v2, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method protected beginListeningForTouchEvents()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public abstract display(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ZI)V
.end method

.method public display(Landroid/view/ViewGroup;Lio/intercom/android/sdk/models/Conversation;Landroid/view/LayoutInflater;ZI)V
    .locals 0

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {p0, p1, p3, p4, p5}, Lio/intercom/android/sdk/overlay/InAppNotification;->display(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ZI)V

    return-void
.end method

.method public getConversation()Lio/intercom/android/sdk/models/Conversation;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    return-object v0
.end method

.method protected getHeaderText()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->isAdminReply()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->localisedContext:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_reply_from_admin:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getLastAdmin()Lio/intercom/android/sdk/models/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Participant;->getForename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->localisedContext:Landroid/content/Context;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_teammate_from_company:I

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/Phrase;->from(Landroid/content/Context;I)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Conversation;->getLastAdmin()Lio/intercom/android/sdk/models/Participant;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/models/Participant;->getForename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v1

    const-string v2, "company"

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/utilities/Phrase;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lio/intercom/android/sdk/utilities/Phrase;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/utilities/Phrase;->format()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    return v0
.end method

.method protected getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBackward(Landroid/view/ViewGroup;)V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/overlay/InAppNotification$4;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/overlay/InAppNotification$4;-><init>(Lio/intercom/android/sdk/overlay/InAppNotification;)V

    invoke-virtual {p0, p1, v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->moveBackward(Landroid/view/ViewGroup;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public abstract moveBackward(Landroid/view/ViewGroup;Landroid/animation/AnimatorListenerAdapter;)V
.end method

.method public moveForward(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->animateToPosition(Landroid/content/Context;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/InAppNotification;->beginListeningForTouchEvents()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->animateToPosition(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->bottomPadding:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/intercom/android/sdk/overlay/InAppNotification;->display(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->animateToBackOfStack(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected abstract onNotificationPressed(Landroid/view/View;)V
.end method

.method protected abstract onNotificationReleased(Landroid/view/View;)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->initialTouchX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->initialViewX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->initialTouchX:F

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/InAppNotification;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->onNotificationPressed(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->initialViewX:F

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->listener:Lio/intercom/android/sdk/overlay/InAppNotification$Listener;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/overlay/InAppNotification$Listener;->onInAppNotificationTap(Lio/intercom/android/sdk/models/Conversation;)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42a00000    # 80.0f

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->localisedContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/InAppNotification;->stopListeningForTouchEvents()V

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/InAppNotification;->animateOffScreen(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/InAppNotification;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/overlay/InAppNotification;->onNotificationReleased(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/InAppNotification;->animateToOriginalPosition(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected performReplyPulse(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_2

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/overlay/InAppNotification$3;

    invoke-direct {v1, p0, p2, p3}, Lio/intercom/android/sdk/overlay/InAppNotification$3;-><init>(Lio/intercom/android/sdk/overlay/InAppNotification;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public removeView()V
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/InAppNotification;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    return-void
.end method

.method protected stopListeningForTouchEvents()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public abstract update(Lio/intercom/android/sdk/models/Conversation;Ljava/lang/Runnable;)V
.end method

.method public updateBottomPadding(Landroid/content/Context;I)V
    .locals 5

    iget v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->bottomPadding:I

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iput p2, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->bottomPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->position:I

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    invoke-static {v1, p1}, Lio/intercom/android/sdk/commons/utilities/ScreenUtils;->dpToPx(FLandroid/content/Context;)I

    move-result v1

    sget v2, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    add-int v1, v0, p2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotification;->overlayRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lio/intercom/android/sdk/overlay/InAppNotification$2;

    invoke-direct {v2, p0, v0}, Lio/intercom/android/sdk/overlay/InAppNotification$2;-><init>(Lio/intercom/android/sdk/overlay/InAppNotification;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected abstract updateViewDataDuringReplyPulse(I)V
.end method
