.class public Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;
.super Ljava/lang/Object;


# instance fields
.field private final apiProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
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

.field private final gson:Lio/intercom/a/b/a/e;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final helpCenterUrl:Ljava/lang/String;

.field hostInAppsVisibility:Lio/intercom/android/sdk/Intercom$Visibility;

.field hostLauncherVisibility:Lio/intercom/android/sdk/Intercom$Visibility;

.field private final jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

.field private final listener:Lio/intercom/android/sdk/helpcenter/HelpCenterListener;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lio/intercom/android/sdk/conversation/JavascriptRunner;Ljava/lang/String;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/helpcenter/HelpCenterListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Lio/intercom/android/sdk/conversation/JavascriptRunner;",
            "Ljava/lang/String;",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/android/sdk/metrics/MetricTracker;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;",
            "Lio/intercom/android/sdk/helpcenter/HelpCenterListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MobileClient"

    const-string v1, "AndroidIntercomWebView"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->headers:Ljava/util/Map;

    iput-object p1, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    iput-object p3, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->helpCenterUrl:Ljava/lang/String;

    iput-object p4, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->gson:Lio/intercom/a/b/a/e;

    iput-object p5, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p6, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    iput-object p7, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->store:Lio/intercom/android/sdk/store/Store;

    iput-object p8, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->apiProvider:Lio/intercom/android/sdk/Provider;

    iput-object p9, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->listener:Lio/intercom/android/sdk/helpcenter/HelpCenterListener;

    return-void
.end method

.method private shouldForceShowMessengerInHelpCenter()Z
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    const-string v1, "disable-force-show-help-center-messenger"

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/identity/AppConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private storeHostVisibilitySettings()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->store:Lio/intercom/android/sdk/store/Store;

    sget-object v1, Lio/intercom/android/sdk/store/Selectors;->OVERLAY:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->select(Lio/intercom/android/sdk/store/Store$Selector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/state/OverlayState;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState;->launcherVisibility()Lio/intercom/android/sdk/Intercom$Visibility;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->hostLauncherVisibility:Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {v0}, Lio/intercom/android/sdk/state/OverlayState;->notificationVisibility()Lio/intercom/android/sdk/Intercom$Visibility;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->hostInAppsVisibility:Lio/intercom/android/sdk/Intercom$Visibility;

    return-void
.end method


# virtual methods
.method public loadBundle()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/JavascriptRunner;->reset()V

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->helpCenterUrl:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public resetMessengerToHostState(Lio/intercom/android/sdk/experimental/Intercom;)V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->shouldForceShowMessengerInHelpCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->hostLauncherVisibility:Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/experimental/Intercom;->setLauncherVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)V

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->hostInAppsVisibility:Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/experimental/Intercom;->setInAppMessageVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)V

    :cond_0
    return-void
.end method

.method public setUpMessenger(Lio/intercom/android/sdk/experimental/Intercom;)V
    .locals 1

    invoke-direct {p0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->shouldForceShowMessengerInHelpCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->storeHostVisibilitySettings()V

    sget-object v0, Lio/intercom/android/sdk/Intercom;->VISIBLE:Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/experimental/Intercom;->setLauncherVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)V

    sget-object v0, Lio/intercom/android/sdk/Intercom;->VISIBLE:Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {p1, v0}, Lio/intercom/android/sdk/experimental/Intercom;->setInAppMessageVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)V

    :cond_0
    return-void
.end method

.method public setUpWebView()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setClipToOutline(Z)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v1, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;

    iget-object v2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->gson:Lio/intercom/a/b/a/e;

    iget-object v4, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/Api;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;-><init>(Landroid/webkit/WebView;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/api/Api;)V

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->webView:Landroid/webkit/WebView;

    const-string v2, "AndroidHost"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;

    iget-object v2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->helpCenterUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->headers:Ljava/util/Map;

    iget-object v4, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewPresenter;->listener:Lio/intercom/android/sdk/helpcenter/HelpCenterListener;

    invoke-direct {v1, v2, v3, v4}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;-><init>(Ljava/lang/String;Ljava/util/Map;Lio/intercom/android/sdk/helpcenter/HelpCenterListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
