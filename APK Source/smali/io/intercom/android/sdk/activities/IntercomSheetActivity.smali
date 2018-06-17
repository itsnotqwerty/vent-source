.class public Lio/intercom/android/sdk/activities/IntercomSheetActivity;
.super Lio/intercom/android/sdk/activities/IntercomBaseActivity;

# interfaces
.implements Lio/intercom/android/sdk/sheets/SheetListener;
.implements Lio/intercom/android/sdk/views/IntercomToolbar$Listener;


# static fields
.field private static final ENTRANCE_ANIMATION_TIME_MS:I = 0xfa

.field private static final EXIT_ANIMATION_TIME_MS:I = 0xc8

.field private static final PARCEL_CARD_URI:Ljava/lang/String; = "parcel_card_uri"

.field private static final PARCEL_CONVERSATION_ID:Ljava/lang/String; = "parcel_conversation_id"

.field private static final PARCEL_PARAMS:Ljava/lang/String; = "parcel_params"

.field private static final PARCEL_SHEET_URL:Ljava/lang/String; = "parcel_sheet_url"

.field private static final WEBVIEW_FADE_IN_TIME_MS:I = 0x12c


# instance fields
.field private baseColor:I

.field private cardUri:Ljava/lang/String;

.field private containerView:Landroid/view/View;

.field private conversationId:Ljava/lang/String;

.field private intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

.field private intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

.field private jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

.field loadingBar:Landroid/widget/ProgressBar;

.field private metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private params:Ljava/util/HashMap;

.field private presenter:Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;

.field private sheetUrl:Ljava/lang/String;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->sheetUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->conversationId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->params:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->animateWindowIn()V

    return-void
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/activities/IntercomSheetActivity;Lio/intercom/android/sdk/api/Api;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->loadSheet(Lio/intercom/android/sdk/api/Api;)V

    return-void
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Lio/intercom/android/sdk/views/IntercomErrorView;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    return-object v0
.end method

.method static synthetic access$300(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->presenter:Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;

    return-object v0
.end method

.method static synthetic access$400(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->sheetUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Lio/intercom/android/sdk/metrics/MetricTracker;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    return-object v0
.end method

.method static synthetic access$700(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->showErrorView()V

    return-void
.end method

.method static synthetic access$800(Lio/intercom/android/sdk/activities/IntercomSheetActivity;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->showSubmitActionError(Ljava/util/Map;)V

    return-void
.end method

.method private animateWindowIn()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->containerView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private animateWindowOut()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomSheetActivity$5;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity$5;-><init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "parcel_sheet_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "parcel_params"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "parcel_card_uri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "parcel_conversation_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private loadSheet(Lio/intercom/android/sdk/api/Api;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->loadingBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->params:Ljava/util/HashMap;

    new-instance v1, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;-><init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V

    invoke-virtual {p1, v0, v1}, Lio/intercom/android/sdk/api/Api;->fetchSheet(Ljava/util/HashMap;Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method private setUpToolbar()V
    .locals 9

    const/16 v2, 0x8

    const/4 v5, 0x0

    sget v0, Lio/intercom/android/sdk/R$id;->intercom_toolbar:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomToolbar;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, p0}, Lio/intercom/android/sdk/views/IntercomToolbar;->setListener(Lio/intercom/android/sdk/views/IntercomToolbar$Listener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/IntercomToolbar;->setSubtitleVisibility(I)V

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->baseColor:I

    invoke-static {v1}, Lio/intercom/android/sdk/utilities/ColorUtils;->darkenColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/views/StatusBarThemer;->setStatusBarColor(Landroid/view/Window;I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    iget v1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->baseColor:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v5}, Lio/intercom/android/sdk/views/IntercomToolbar;->setInboxButtonVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/IntercomToolbar;->setCloseButtonVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    sget v1, Lio/intercom/android/sdk/R$id;->toolbar_progress_bar:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->loadingBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->loadingBar:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->baseColor:I

    invoke-static {v4}, Lio/intercom/android/sdk/utilities/ColorUtils;->darkenColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    new-instance v4, Landroid/graphics/drawable/ScaleDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showErrorView()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->loadingBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    return-void
.end method

.method private showSubmitActionError(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/support/v7/app/c$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_inbox_error_state_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_try_again_minute:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_retry:I

    new-instance v2, Lio/intercom/android/sdk/activities/IntercomSheetActivity$7;

    invoke-direct {v2, p0, p1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity$7;-><init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->baseColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method closeSheet()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->sheetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->closedMessengerSheet(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->hideKeyboard()V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->animateWindowOut()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->closeSheet()V

    goto :goto_0
.end method

.method public onCloseClicked()V
    .locals 0

    return-void
.end method

.method public onCloseSheetAction()V
    .locals 0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->closeSheet()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lio/intercom/android/sdk/activities/IntercomBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    invoke-virtual {v1}, Lio/intercom/android/sdk/Injector;->getAppConfigProvider()Lio/intercom/android/sdk/Provider;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->baseColor:I

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "parcel_sheet_url"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->sheetUrl:Ljava/lang/String;

    const-string v0, "parcel_conversation_id"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->conversationId:Ljava/lang/String;

    const-string v0, "parcel_params"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->params:Ljava/util/HashMap;

    const-string v0, "parcel_card_uri"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->cardUri:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->sheetUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->params:Ljava/util/HashMap;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->closeSheet()V

    :cond_2
    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_activity_sheet:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->setContentView(I)V

    invoke-direct {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->setUpToolbar()V

    sget v0, Lio/intercom/android/sdk/R$id;->sheet_root:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->containerView:Landroid/view/View;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->containerView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->containerView:Landroid/view/View;

    new-instance v2, Lio/intercom/android/sdk/activities/IntercomSheetActivity$1;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity$1;-><init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget v0, Lio/intercom/android/sdk/R$id;->sheet_web_view:I

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lio/intercom/android/sdk/activities/IntercomSheetActivity$2;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity$2;-><init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lio/intercom/android/sdk/conversation/JavascriptRunner;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, v2}, Lio/intercom/android/sdk/conversation/JavascriptRunner;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    new-instance v0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    iget-object v4, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->sheetUrl:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, p0}, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;-><init>(Landroid/webkit/WebView;Lio/intercom/android/sdk/conversation/JavascriptRunner;Ljava/lang/String;Lio/intercom/android/sdk/sheets/SheetListener;)V

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->presenter:Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->presenter:Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->setUpWebView()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->containerView:Landroid/view/View;

    sget v2, Lio/intercom/android/sdk/R$id;->error_layout_sheet:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/views/IntercomErrorView;

    iput-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    iget v2, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->baseColor:I

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonTextColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomErrorView:Lio/intercom/android/sdk/views/IntercomErrorView;

    new-instance v2, Lio/intercom/android/sdk/activities/IntercomSheetActivity$3;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity$3;-><init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/IntercomErrorView;->setActionButtonClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->loadSheet(Lio/intercom/android/sdk/api/Api;)V

    return-void
.end method

.method public onInboxClicked()V
    .locals 0

    invoke-virtual {p0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->closeSheet()V

    return-void
.end method

.method public onSheetTitleAction(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->intercomToolbar:Lio/intercom/android/sdk/views/IntercomToolbar;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/views/IntercomToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSubmitSheetAction(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->cardUri:Ljava/lang/String;

    new-instance v2, Lio/intercom/android/sdk/activities/IntercomSheetActivity$6;

    invoke-direct {v2, p0, p1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity$6;-><init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;Ljava/util/Map;)V

    invoke-virtual {v0, v1, p1, v2}, Lio/intercom/android/sdk/api/Api;->submitSheet(Ljava/lang/String;Ljava/util/Map;Lio/intercom/retrofit2/Callback;)V

    return-void
.end method

.method public onToolbarClicked()V
    .locals 0

    return-void
.end method

.method public onWebViewFinishedLoad()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/JavascriptRunner;->runPendingScripts()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->loadingBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
