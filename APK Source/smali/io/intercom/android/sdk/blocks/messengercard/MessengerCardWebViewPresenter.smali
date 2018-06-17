.class Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;
.super Ljava/lang/Object;


# instance fields
.field private final baseColor:I

.field private final bus:Lio/intercom/a/c/a/b;

.field private final conversationId:Ljava/lang/String;

.field private final fallbackUrl:Ljava/lang/String;

.field private final gson:Lio/intercom/a/b/a/e;

.field private final loadingView:Landroid/view/View;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/messengercard/CardWebView;Landroid/view/View;Ljava/lang/String;Lio/intercom/a/c/a/b;ILio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->loadingView:Landroid/view/View;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->fallbackUrl:Ljava/lang/String;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->bus:Lio/intercom/a/c/a/b;

    iput p5, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->baseColor:I

    iput-object p6, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->gson:Lio/intercom/a/b/a/e;

    iput-object p7, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p8, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->conversationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method setUpWebView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->bus:Lio/intercom/a/c/a/b;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->setUp(Lio/intercom/a/c/a/b;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    invoke-virtual {v0, v4}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    new-instance v1, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewClient;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->fallbackUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->loadingView:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewClient;-><init>(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {v5}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    invoke-virtual {v0, v4}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    invoke-virtual {v0, v4}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->gson:Lio/intercom/a/b/a/e;

    iget v3, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->baseColor:I

    iget-object v4, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v5, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->conversationId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;-><init>(Landroid/webkit/WebView;Lio/intercom/a/b/a/e;ILio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewPresenter;->webView:Lio/intercom/android/sdk/blocks/messengercard/CardWebView;

    const-string v2, "AndroidHost"

    invoke-virtual {v1, v0, v2}, Lio/intercom/android/sdk/blocks/messengercard/CardWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
