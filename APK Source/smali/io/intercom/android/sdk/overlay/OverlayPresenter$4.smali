.class Lio/intercom/android/sdk/overlay/OverlayPresenter$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/OverlayPresenter;->preloadAvatarThenDisplayNotifications(Ljava/util/List;Lio/intercom/android/sdk/Intercom$Visibility;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$conversations:Ljava/util/List;

.field final synthetic val$fingerprint:Ljava/lang/String;

.field final synthetic val$notificationVisibility:Lio/intercom/android/sdk/Intercom$Visibility;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/OverlayPresenter;Ljava/lang/String;Ljava/util/List;Lio/intercom/android/sdk/Intercom$Visibility;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$fingerprint:Ljava/lang/String;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$conversations:Ljava/util/List;

    iput-object p4, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$notificationVisibility:Lio/intercom/android/sdk/Intercom$Visibility;

    iput-object p5, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$fingerprint:Ljava/lang/String;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    invoke-static {v1}, Lio/intercom/android/sdk/overlay/OverlayPresenter;->access$100(Lio/intercom/android/sdk/overlay/OverlayPresenter;)Lio/intercom/android/sdk/identity/UserIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/identity/UserIdentity;->getFingerprint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$conversations:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$notificationVisibility:Lio/intercom/android/sdk/Intercom$Visibility;

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/overlay/OverlayPresenter;->shouldDisplayNotifications(Ljava/util/List;Lio/intercom/android/sdk/Intercom$Visibility;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->this$0:Lio/intercom/android/sdk/overlay/OverlayPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$conversations:Ljava/util/List;

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/OverlayPresenter$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/overlay/OverlayPresenter;->displayNotifications(Ljava/util/List;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
