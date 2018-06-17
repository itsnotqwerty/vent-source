.class public Lio/intercom/android/sdk/sheets/SheetWebViewInterface;
.super Ljava/lang/Object;


# static fields
.field private static final CLOSE_SHEET:Ljava/lang/String; = "close"

.field private static final PAYLOAD_SHEET_TITLE:Ljava/lang/String; = "title"

.field private static final SHEET_TITLE:Ljava/lang/String; = "set-title"

.field private static final SUBMIT_SHEET:Ljava/lang/String; = "submit-sheet"


# instance fields
.field private final api:Lio/intercom/android/sdk/api/Api;

.field private final gson:Lio/intercom/a/b/a/e;

.field private final listener:Lio/intercom/android/sdk/sheets/SheetListener;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/sheets/SheetListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->gson:Lio/intercom/a/b/a/e;

    iput-object p5, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->listener:Lio/intercom/android/sdk/sheets/SheetListener;

    iput-object p3, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p4, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->api:Lio/intercom/android/sdk/api/Api;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;)Lio/intercom/android/sdk/sheets/SheetListener;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->listener:Lio/intercom/android/sdk/sheets/SheetListener;

    return-object v0
.end method

.method private isHelpCenterMetric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "METRIC_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRACK_REACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleAction(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->gson:Lio/intercom/a/b/a/e;

    const-class v1, Lio/intercom/android/sdk/sheets/SheetWebViewAction;

    invoke-virtual {v0, p1, v1}, Lio/intercom/a/b/a/e;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/sheets/SheetWebViewAction;

    invoke-virtual {v0}, Lio/intercom/android/sdk/sheets/SheetWebViewAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/android/sdk/sheets/SheetWebViewAction;->getPayload()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->isHelpCenterMetric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;

    iget-object v1, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->gson:Lio/intercom/a/b/a/e;

    iget-object v3, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v4, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->api:Lio/intercom/android/sdk/api/Api;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;-><init>(Landroid/webkit/WebView;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/api/Api;)V

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->handleAction(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$1;

    invoke-direct {v1, p0, v2}, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$1;-><init>(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_0
    const-string v3, "set-title"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "close"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "submit-sheet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$2;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$2;-><init>(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lio/intercom/android/sdk/sheets/SheetWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$3;

    invoke-direct {v1, p0, v2}, Lio/intercom/android/sdk/sheets/SheetWebViewInterface$3;-><init>(Lio/intercom/android/sdk/sheets/SheetWebViewInterface;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x1dba5ed3 -> :sswitch_0
        0x5a5ddf8 -> :sswitch_1
        0xd913f6a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
