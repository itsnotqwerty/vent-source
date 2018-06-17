.class Lio/intercom/android/sdk/store/ChangeSubscriber;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Subscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Subscriber",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private last:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final selector:Lio/intercom/android/sdk/store/Store$Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Selector",
            "<TS;TT;>;"
        }
    .end annotation
.end field

.field final subscriber:Lio/intercom/android/sdk/store/Store$Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store$Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/store/Store$Selector;Lio/intercom/android/sdk/store/Store$Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/store/Store$Selector",
            "<TS;TT;>;",
            "Lio/intercom/android/sdk/store/Store$Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/android/sdk/store/ChangeSubscriber;-><init>(Lio/intercom/android/sdk/store/Store$Selector;Lio/intercom/android/sdk/store/Store$Subscriber;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/android/sdk/store/Store$Selector;Lio/intercom/android/sdk/store/Store$Subscriber;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/store/Store$Selector",
            "<TS;TT;>;",
            "Lio/intercom/android/sdk/store/Store$Subscriber",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/android/sdk/store/ChangeSubscriber;->last:Ljava/lang/Object;

    iput-object p1, p0, Lio/intercom/android/sdk/store/ChangeSubscriber;->selector:Lio/intercom/android/sdk/store/Store$Selector;

    iput-object p2, p0, Lio/intercom/android/sdk/store/ChangeSubscriber;->subscriber:Lio/intercom/android/sdk/store/Store$Subscriber;

    iput-object p3, p0, Lio/intercom/android/sdk/store/ChangeSubscriber;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static runOnMainThread(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onStateChange(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/store/ChangeSubscriber;->selector:Lio/intercom/android/sdk/store/Store$Selector;

    invoke-interface {v0, p1}, Lio/intercom/android/sdk/store/Store$Selector;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/store/ChangeSubscriber;->last:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Lio/intercom/android/sdk/store/ChangeSubscriber;->last:Ljava/lang/Object;

    new-instance v1, Lio/intercom/android/sdk/store/ChangeSubscriber$1;

    invoke-direct {v1, p0, v0}, Lio/intercom/android/sdk/store/ChangeSubscriber$1;-><init>(Lio/intercom/android/sdk/store/ChangeSubscriber;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/android/sdk/store/ChangeSubscriber;->mainHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lio/intercom/android/sdk/store/ChangeSubscriber;->runOnMainThread(Ljava/lang/Runnable;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method
