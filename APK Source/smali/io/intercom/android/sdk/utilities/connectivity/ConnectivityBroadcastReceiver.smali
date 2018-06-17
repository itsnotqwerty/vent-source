.class Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver$ConnectivityUpdateListener;
    }
.end annotation


# instance fields
.field private final connectivityUpdateListener:Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver$ConnectivityUpdateListener;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver$ConnectivityUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver;->connectivityUpdateListener:Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver$ConnectivityUpdateListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->NOT_CONNECTED:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    :goto_1
    iget-object v1, p0, Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver;->connectivityUpdateListener:Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver$ConnectivityUpdateListener;

    invoke-interface {v1, v0}, Lio/intercom/android/sdk/utilities/connectivity/ConnectivityBroadcastReceiver$ConnectivityUpdateListener;->onUpdate(Lio/intercom/android/sdk/utilities/connectivity/NetworkState;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lio/intercom/android/sdk/utilities/connectivity/NetworkState;->CONNECTED:Lio/intercom/android/sdk/utilities/connectivity/NetworkState;

    goto :goto_1
.end method
