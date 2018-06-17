.class Lio/intercom/android/sdk/store/TwoParamChangeSubscriber$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/store/TwoParamChangeSubscriber;->onStateChange(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/store/TwoParamChangeSubscriber;

.field final synthetic val$current1:Ljava/lang/Object;

.field final synthetic val$current2:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/store/TwoParamChangeSubscriber;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/store/TwoParamChangeSubscriber$1;->this$0:Lio/intercom/android/sdk/store/TwoParamChangeSubscriber;

    iput-object p2, p0, Lio/intercom/android/sdk/store/TwoParamChangeSubscriber$1;->val$current1:Ljava/lang/Object;

    iput-object p3, p0, Lio/intercom/android/sdk/store/TwoParamChangeSubscriber$1;->val$current2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/store/TwoParamChangeSubscriber$1;->this$0:Lio/intercom/android/sdk/store/TwoParamChangeSubscriber;

    iget-object v0, v0, Lio/intercom/android/sdk/store/TwoParamChangeSubscriber;->subscriber:Lio/intercom/android/sdk/store/Store$Subscriber2;

    iget-object v1, p0, Lio/intercom/android/sdk/store/TwoParamChangeSubscriber$1;->val$current1:Ljava/lang/Object;

    iget-object v2, p0, Lio/intercom/android/sdk/store/TwoParamChangeSubscriber$1;->val$current2:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/intercom/android/sdk/store/Store$Subscriber2;->onStateChange(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
