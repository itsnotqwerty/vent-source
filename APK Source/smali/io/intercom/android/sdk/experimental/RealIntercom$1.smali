.class Lio/intercom/android/sdk/experimental/RealIntercom$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/experimental/RealIntercom;-><init>(Lio/intercom/android/sdk/api/DeDuper;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/nexus/NexusClient;Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/store/UnreadCountTracker;Lio/intercom/android/sdk/metrics/MetricTracker;Landroid/content/Context;Lio/intercom/android/sdk/overlay/OverlayPresenter;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/identity/UserIdentity;Lio/intercom/android/sdk/push/SystemNotificationManager;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/ResetManager;Lio/intercom/android/sdk/twig/Twig;Lio/intercom/android/sdk/utilities/ActivityFinisher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/experimental/RealIntercom;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/experimental/RealIntercom;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/experimental/RealIntercom$1;->this$0:Lio/intercom/android/sdk/experimental/RealIntercom;

    iput-object p2, p0, Lio/intercom/android/sdk/experimental/RealIntercom$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/experimental/RealIntercom$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lio/intercom/android/sdk/IntercomPushManager;->registerGcmToken(Landroid/content/Context;)V

    return-void
.end method
