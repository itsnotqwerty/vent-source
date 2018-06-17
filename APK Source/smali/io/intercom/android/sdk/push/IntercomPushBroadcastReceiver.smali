.class public Lio/intercom/android/sdk/push/IntercomPushBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final INTERCOM_PUSH_DISMISSED:Ljava/lang/String; = "io.intercom.android.sdk.INTERCOM_PUSH_DISMISSED"

.field static final INTERCOM_PUSH_OPENED:Ljava/lang/String; = "io.intercom.android.sdk.INTERCOM_PUSH_OPENED"

.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;


# instance fields
.field private final pushReceiverDelegate:Lio/intercom/android/sdk/push/PushReceiverDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/push/IntercomPushBroadcastReceiver;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/push/PushReceiverDelegate;

    invoke-direct {v0}, Lio/intercom/android/sdk/push/PushReceiverDelegate;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/push/IntercomPushBroadcastReceiver;->pushReceiverDelegate:Lio/intercom/android/sdk/push/PushReceiverDelegate;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lio/intercom/android/sdk/Injector;->initIfCachedCredentials(Landroid/app/Application;)V

    invoke-static {}, Lio/intercom/android/sdk/Injector;->isNotInitialised()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/android/sdk/push/IntercomPushBroadcastReceiver;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    const-string v2, "Push not handled because Intercom is not initialised"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lio/intercom/android/sdk/twig/Twig;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getUserIdentity()Lio/intercom/android/sdk/identity/UserIdentity;

    move-result-object v4

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getMetricTracker()Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual {v2}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v3

    iget-object v0, p0, Lio/intercom/android/sdk/push/IntercomPushBroadcastReceiver;->pushReceiverDelegate:Lio/intercom/android/sdk/push/PushReceiverDelegate;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->handlePushTap(Landroid/content/Context;Landroid/content/Intent;Lio/intercom/android/sdk/api/Api;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    goto :goto_0

    :sswitch_0
    const-string v6, "io.intercom.android.sdk.INTERCOM_PUSH_DISMISSED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v1, "io.intercom.android.sdk.INTERCOM_PUSH_OPENED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lio/intercom/android/sdk/push/IntercomPushBroadcastReceiver;->pushReceiverDelegate:Lio/intercom/android/sdk/push/PushReceiverDelegate;

    invoke-virtual {v0, p2, v4, v5}, Lio/intercom/android/sdk/push/PushReceiverDelegate;->trackDismiss(Landroid/content/Intent;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/metrics/MetricTracker;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57682238 -> :sswitch_1
        0xde3c2ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
