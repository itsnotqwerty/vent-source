.class Lio/intercom/android/sdk/store/Store$4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/store/Store;->subscribe(Lio/intercom/android/sdk/store/Store$Subscriber;)Lio/intercom/android/sdk/store/Store$Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/store/Store;

.field final synthetic val$subscriber:Lio/intercom/android/sdk/store/Store$Subscriber;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/store/Store$Subscriber;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/store/Store$4;->this$0:Lio/intercom/android/sdk/store/Store;

    iput-object p2, p0, Lio/intercom/android/sdk/store/Store$4;->val$subscriber:Lio/intercom/android/sdk/store/Store$Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unsubscribe()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/store/Store$4;->this$0:Lio/intercom/android/sdk/store/Store;

    iget-object v0, v0, Lio/intercom/android/sdk/store/Store;->subscribers:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/android/sdk/store/Store$4;->val$subscriber:Lio/intercom/android/sdk/store/Store$Subscriber;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
