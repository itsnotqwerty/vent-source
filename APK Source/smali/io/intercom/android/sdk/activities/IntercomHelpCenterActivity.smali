.class public Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;
.super Lio/intercom/android/sdk/activities/IntercomBaseActivity;

# interfaces
.implements Lio/intercom/android/sdk/helpcenter/HelpCenterListener;
.implements Lio/intercom/android/sdk/views/IntercomToolbar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$DisplayMode;
    }
.end annotation


# static fields
.field private static final ENTRANCE_ANIMATION_TIME_MS:I = 0x12c

.field private static final EXIT_ANIMATION_TIME_MS:I = 0x96

.field public static final LINK_TRANSITION_KEY:Ljava/lang/String; = "link_background"

.field private static final PARCEL_CONVERSATION_ID:Ljava/lang/String; = "parcel_conversation_id"

.field public static final PARCEL_DISPLAY_MODE:Ljava/lang/String; = "parcel_display_mode"

.field private static final PARCEL_HELP_CENTER_URL:Ljava/lang/String; = "parcel_help_center_url"


# instance fields
.field private containerView:Landroid/view/View;

.field conversationId:Ljava/lang/String;

.field displayMode:I
    .annotation build Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$DisplayMode;
    .end annotation
.end field

.field private gson:Lio/intercom/a/b/a/e;

.field private intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

.field private jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

.field loadingView:Landroid/widget/ProgressBar;

.field metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private presenter:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->displayMode:I

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->conversationId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->animateWindowIn()V

    return-void
.end method

.method private animateWindowIn()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->containerView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateWindowOut()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$3;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$3;-><init>(Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p2    # I
        .annotation build Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$DisplayMode;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "parcel_help_center_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "parcel_display_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "parcel_conversation_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private enterTransition()Landroid/transition/Transition;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    new-instance v1, Landroid/support/v4/view/b/b;

    invoke-direct {v1}, Landroid/support/v4/view/b/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    return-object v0
.end method

.method private fadeOutView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private hideKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private insertWebView()V
    .locals 3

    const/4 v2, -0x1

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    sget v1, Lio/intercom/android/sdk/R$id;->intercom_help_center_web_view:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lio/intercom/android/sdk/R$id;->link_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method private isFullScreenWithExperimentalMessenger()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->displayMode:I

    if-ne v1, v0, :cond_0

    invoke-static {}, Lio/intercom/android/sdk/experimental/Intercom;->isBooted()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private returnTransition()Landroid/transition/Transition;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    new-instance v1, Landroid/support/v4/view/b/b;

    invoke-direct {v1}, Landroid/support/v4/view/b/b;-><init>()V

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    return-object v0
.end method


# virtual methods
.method closeHelpCenter()V
    .locals 2

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->hideKeyboard()V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->isFullScreenWithExperimentalMessenger()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->presenter:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;

    invoke-static {}, Lio/intercom/android/sdk/experimental/Intercom;->client()Lio/intercom/android/sdk/experimental/Intercom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->resetMessengerToHostState(Lio/intercom/android/sdk/experimental/Intercom;)V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->animateWindowOut()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->fadeOutView(Landroid/view/View;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->conversationId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedHelpCenter(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->closeHelpCenter()V

    goto :goto_0
.end method

.method public onCloseClicked()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->conversationId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedHelpCenter(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->closeHelpCenter()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v6, 0x8

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v8

    invoke-virtual {v8}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v8}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getHelpCenterBaseColor()I

    move-result v1

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, ""

    if-eqz v0, :cond_0

    const-string v2, "parcel_help_center_url"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "parcel_conversation_id"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->conversationId:Ljava/lang/String;

    const-string v2, "parcel_display_mode"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->displayMode:I

    :cond_0
    iget v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->displayMode:I

    if-ne v0, v5, :cond_4

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_activity_help_center_fullscreen:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->setContentView(I)V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->insertWebView()V

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomToolbar;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    const-string v2, "Help"

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/IntercomToolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->setListener(Lio/intercom/android/sdk/views/IntercomToolbar$Listener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v6}, Lio/intercom/android/sdk/views/IntercomToolbar;->setSubtitleVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/ColorUtils;->darkenColor(I)I

    move-result v2

    invoke-static {v0, v2}, Lio/intercom/android/sdk/views/StatusBarThemer;->setStatusBarColor(Landroid/view/Window;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setBackgroundColor(I)V

    sget v0, Lio/intercom/android/sdk/R$id;->link_root:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->containerView:Landroid/view/View;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->containerView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->containerView:Landroid/view/View;

    new-instance v2, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$1;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$1;-><init>(Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->closeHelpCenter()V

    :cond_1
    sget v0, Lio/intercom/android/sdk/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->loadingView:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->loadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Lio/intercom/android/sdk/conversation/JavascriptRunner;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/conversation/JavascriptRunner;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    invoke-virtual {v8}, Lio/intercom/android/sdk/Injector;->getGson()Lio/intercom/a/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->gson:Lio/intercom/a/b/a/e;

    new-instance v0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->gson:Lio/intercom/a/b/a/e;

    iget-object v5, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v8}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v6

    invoke-virtual {v8}, Lio/intercom/android/sdk/Injector;->getStore()Lio/intercom/android/sdk/store/Store;

    move-result-object v7

    invoke-virtual {v8}, Lio/intercom/android/sdk/Injector;->getApiProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v8

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;-><init>(Landroid/webkit/WebView;Lio/intercom/android/sdk/conversation/JavascriptRunner;Ljava/lang/String;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/helpcenter/HelpCenterListener;)V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->presenter:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->isFullScreenWithExperimentalMessenger()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->presenter:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;

    invoke-static {}, Lio/intercom/android/sdk/experimental/Intercom;->client()Lio/intercom/android/sdk/experimental/Intercom;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->setUpMessenger(Lio/intercom/android/sdk/experimental/Intercom;)V

    :cond_2
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->presenter:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->setUpWebView()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->enterTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->returnTransition()Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    sget v0, Lio/intercom/android/sdk/R$id;->link_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "link_background"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->presenter:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->loadBundle()V

    return-void

    :cond_4
    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_activity_help_center:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->setContentView(I)V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->insertWebView()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    sget v2, Lio/intercom/android/sdk/R$drawable;->intercom_conversation_card_background:I

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    sget v0, Lio/intercom/android/sdk/R$id;->dismiss:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$2;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity$2;-><init>(Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onInboxClicked()V
    .locals 0

    return-void
.end method

.method public onToolbarClicked()V
    .locals 0

    return-void
.end method

.method public onWebViewFinishedLoad()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/JavascriptRunner;->runPendingScripts()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->loadingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/metrics/MetricTracker;->viewedHelpCenter(Ljava/lang/String;)V

    return-void
.end method
