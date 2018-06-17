.class Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;
.super Ljava/lang/Object;


# static fields
.field private static final INPUT_TEXT:Ljava/lang/String; = "INPUT_TEXT"

.field private static final METRIC_EVENT:Ljava/lang/String; = "METRIC_EVENT"

.field private static final OPEN_SHEET:Ljava/lang/String; = "OPEN_SHEET"

.field private static final OPEN_URL:Ljava/lang/String; = "OPEN_URL"


# instance fields
.field private final baseColor:I

.field private final conversationId:Ljava/lang/String;

.field private final gson:Lio/intercom/a/b/a/e;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lio/intercom/a/b/a/e;ILio/intercom/android/sdk/metrics/MetricTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->gson:Lio/intercom/a/b/a/e;

    iput p3, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->baseColor:I

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p5, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->conversationId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->openUrl(Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->openSheet(Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->showTextInputDialog(Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;)Lio/intercom/android/sdk/metrics/MetricTracker;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    return-object v0
.end method

.method private openSheet(Ljava/util/Map;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "params"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "params"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :goto_0
    const-string v2, "uri"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "uri"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->conversationId:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2, v3}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private openUrl(Ljava/util/Map;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showTextInputDialog(Ljava/util/Map;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;

    iget v1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->baseColor:I

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, p2, p1, v1, v2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;-><init>(Landroid/content/Context;Ljava/util/Map;ILandroid/webkit/WebView;)V

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;->create()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->show()V

    invoke-virtual {v0}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget v2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->baseColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget v1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->baseColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public handleAction(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->gson:Lio/intercom/a/b/a/e;

    const-class v1, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;

    invoke-virtual {v0, p1, v1}, Lio/intercom/a/b/a/e;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;->getPayload()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$1;

    invoke-direct {v1, p0, v2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$1;-><init>(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_0
    const-string v4, "OPEN_URL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "OPEN_SHEET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "INPUT_TEXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "METRIC_EVENT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$2;

    invoke-direct {v1, p0, v2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$2;-><init>(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$3;

    invoke-direct {v1, p0, v2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$3;-><init>(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v2, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$4;

    invoke-direct {v2, p0, v0}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$4;-><init>(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10a561da -> :sswitch_0
        0x359fc32b -> :sswitch_3
        0x7153d0a2 -> :sswitch_2
        0x7cb3870a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
