.class public Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;
.super Ljava/lang/Object;


# instance fields
.field private final jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

.field private final listener:Lio/intercom/android/sdk/sheets/SheetListener;

.field private final sheetUrl:Ljava/lang/String;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lio/intercom/android/sdk/conversation/JavascriptRunner;Ljava/lang/String;Lio/intercom/android/sdk/sheets/SheetListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    iput-object p3, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->sheetUrl:Ljava/lang/String;

    iput-object p4, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->listener:Lio/intercom/android/sdk/sheets/SheetListener;

    return-void
.end method


# virtual methods
.method public loadBundle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->jsRunner:Lio/intercom/android/sdk/conversation/JavascriptRunner;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/JavascriptRunner;->reset()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "intercom_data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->sheetUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUpWebView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v1, "IntercomMobileWebView"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v4

    new-instance v0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;

    iget-object v1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getGson()Lio/intercom/a/b/a/e;

    move-result-object v2

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v3

    invoke-virtual {v4}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->listener:Lio/intercom/android/sdk/sheets/SheetListener;

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;-><init>(Landroid/webkit/WebView;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/sheets/SheetListener;)V

    iget-object v1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    const-string v2, "AndroidHost"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/sheets/SheetWebViewClient;

    iget-object v2, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->sheetUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->listener:Lio/intercom/android/sdk/sheets/SheetListener;

    invoke-direct {v1, v2, v3}, Lio/intercom/android/sdk/sheets/SheetWebViewClient;-><init>(Ljava/lang/String;Lio/intercom/android/sdk/sheets/SheetListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
