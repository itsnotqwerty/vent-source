.class Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->updateNotifications(Ljava/util/List;Ljava/util/Map;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;

.field final synthetic val$conversations:Ljava/util/List;

.field final synthetic val$notifications:Ljava/util/Map;

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;Ljava/util/List;Ljava/util/Map;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;->this$0:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;->val$conversations:Ljava/util/List;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;->val$notifications:Ljava/util/Map;

    iput-object p4, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;->val$root:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;->this$0:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;->val$conversations:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;->val$notifications:Ljava/util/Map;

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$2;->val$root:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->syncUpdates(Ljava/util/List;Ljava/util/Map;Landroid/view/ViewGroup;)V

    return-void
.end method
