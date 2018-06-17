.class Lio/intercom/android/sdk/store/ChangeSubscriber$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/store/ChangeSubscriber;->onStateChange(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/store/ChangeSubscriber;

.field final synthetic val$current:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/store/ChangeSubscriber;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/store/ChangeSubscriber$1;->this$0:Lio/intercom/android/sdk/store/ChangeSubscriber;

    iput-object p2, p0, Lio/intercom/android/sdk/store/ChangeSubscriber$1;->val$current:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/store/ChangeSubscriber$1;->this$0:Lio/intercom/android/sdk/store/ChangeSubscriber;

    iget-object v0, v0, Lio/intercom/android/sdk/store/ChangeSubscriber;->subscriber:Lio/intercom/android/sdk/store/Store$Subscriber;

    iget-object v1, p0, Lio/intercom/android/sdk/store/ChangeSubscriber$1;->val$current:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/store/Store$Subscriber;->onStateChange(Ljava/lang/Object;)V

    return-void
.end method
