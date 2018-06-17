.class interface abstract Lio/intercom/android/sdk/overlay/InAppNotificationPresenter$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/overlay/InAppNotificationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listener"
.end annotation


# virtual methods
.method public abstract getRootView()Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract markAsDismissed(Lio/intercom/android/sdk/models/Conversation;)V
.end method

.method public abstract openNotification(Lio/intercom/android/sdk/models/Conversation;)V
.end method
