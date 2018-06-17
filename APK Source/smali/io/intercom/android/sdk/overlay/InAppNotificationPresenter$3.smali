.class Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;
.super Landroid/animation/AnimatorListenerAdapter;


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

.field final synthetic val$conversation:Lio/intercom/android/sdk/models/Conversation;

.field final synthetic val$conversations:Ljava/util/List;

.field final synthetic val$notifications:Ljava/util/Map;

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;Lio/intercom/android/sdk/models/Conversation;Landroid/view/ViewGroup;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->this$0:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->val$conversation:Lio/intercom/android/sdk/models/Conversation;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->val$root:Landroid/view/ViewGroup;

    iput-object p4, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->val$notifications:Ljava/util/Map;

    iput-object p5, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->val$conversations:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->this$0:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->val$conversation:Lio/intercom/android/sdk/models/Conversation;

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->val$root:Landroid/view/ViewGroup;

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->val$notifications:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->addNewView(Lio/intercom/android/sdk/models/Conversation;Landroid/view/ViewGroup;Ljava/util/Map;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;->this$0:Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;

    iget-object v0, v0, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;->handler:Landroid/os/Handler;

    new-instance v1, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3$1;

    invoke-direct {v1, p0}, Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3$1;-><init>(Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$3;)V

    const-wide/16 v2, 0xdc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
