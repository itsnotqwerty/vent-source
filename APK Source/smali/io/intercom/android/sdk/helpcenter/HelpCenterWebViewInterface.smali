.class public Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;
.super Ljava/lang/Object;


# static fields
.field public static final METRIC_EVENT:Ljava/lang/String; = "METRIC_EVENT"

.field public static final TRACK_REACTION:Ljava/lang/String; = "TRACK_REACTION"


# instance fields
.field private final api:Lio/intercom/android/sdk/api/Api;

.field private final gson:Lio/intercom/a/b/a/e;

.field private final metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/metrics/MetricTracker;Lio/intercom/android/sdk/api/Api;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->webView:Landroid/webkit/WebView;

    iput-object p2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->gson:Lio/intercom/a/b/a/e;

    iput-object p3, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iput-object p4, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->api:Lio/intercom/android/sdk/api/Api;

    return-void
.end method

.method static synthetic access$000(Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;)Lio/intercom/android/sdk/metrics/MetricTracker;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    return-object v0
.end method

.method static synthetic access$100(Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;)Lio/intercom/android/sdk/api/Api;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->api:Lio/intercom/android/sdk/api/Api;

    return-object v0
.end method


# virtual methods
.method public handleAction(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->gson:Lio/intercom/a/b/a/e;

    const-class v1, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;

    invoke-virtual {v0, p1, v1}, Lio/intercom/a/b/a/e;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;

    invoke-virtual {v0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewAction;->getValue()Ljava/util/Map;

    move-result-object v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$1;

    invoke-direct {v1, p0, v2}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$1;-><init>(Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_0
    const-string v3, "METRIC_EVENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "TRACK_REACTION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->webView:Landroid/webkit/WebView;

    new-instance v1, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$2;

    invoke-direct {v1, p0, v2}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$2;-><init>(Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8e22bd -> :sswitch_1
        0x359fc32b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
