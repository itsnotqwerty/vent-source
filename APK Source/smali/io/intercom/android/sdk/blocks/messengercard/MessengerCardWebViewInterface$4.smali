.class Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->handleAction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;

.field final synthetic val$action:Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$4;->this$0:Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$4;->val$action:Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$4;->val$action:Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewAction;->getPayload()Ljava/util/Map;

    move-result-object v4

    const-string v0, "action"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "object"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "place"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "metadata"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_0

    const-string v3, "metadata"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    :cond_0
    iget-object v4, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface$4;->this$0:Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;

    invoke-static {v4}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;->access$400(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardWebViewInterface;)Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Lio/intercom/android/sdk/metrics/MetricTracker;->messengerCardWebViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
