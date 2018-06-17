.class Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
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

.field private final helpCenterHost:Ljava/lang/String;

.field private final helpCenterListener:Lio/intercom/android/sdk/helpcenter/HelpCenterListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lio/intercom/android/sdk/helpcenter/HelpCenterListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/intercom/android/sdk/helpcenter/HelpCenterListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;->helpCenterHost:Ljava/lang/String;

    iput-object p3, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;->helpCenterListener:Lio/intercom/android/sdk/helpcenter/HelpCenterListener;

    iput-object p2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;->helpCenterListener:Lio/intercom/android/sdk/helpcenter/HelpCenterListener;

    invoke-interface {v0}, Lio/intercom/android/sdk/helpcenter/HelpCenterListener;->onWebViewFinishedLoad()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;->helpCenterHost:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;->helpCenterHost:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewClient;->headers:Ljava/util/Map;

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
