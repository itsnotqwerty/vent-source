.class Lio/intercom/android/sdk/store/Store$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Middleware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/store/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Middleware",
        "<TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/store/Store;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/store/Store;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/store/Store$1;->this$0:Lio/intercom/android/sdk/store/Store;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/store/Store$NextDispatcher;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/store/Store",
            "<TS;>;",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;",
            "Lio/intercom/android/sdk/store/Store$NextDispatcher;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/store/Store$1;->this$0:Lio/intercom/android/sdk/store/Store;

    iget-object v1, p1, Lio/intercom/android/sdk/store/Store;->reducer:Lio/intercom/android/sdk/store/Store$Reducer;

    iget-object v2, p0, Lio/intercom/android/sdk/store/Store$1;->this$0:Lio/intercom/android/sdk/store/Store;

    iget-object v2, v2, Lio/intercom/android/sdk/store/Store;->currentState:Ljava/lang/Object;

    invoke-interface {v1, p2, v2}, Lio/intercom/android/sdk/store/Store$Reducer;->reduce(Lio/intercom/android/sdk/actions/Action;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lio/intercom/android/sdk/store/Store;->currentState:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lio/intercom/android/sdk/store/Store$1;->this$0:Lio/intercom/android/sdk/store/Store;

    iget-object v0, v0, Lio/intercom/android/sdk/store/Store;->subscribers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Lio/intercom/android/sdk/store/Store;->subscribers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/store/Store$Subscriber;

    iget-object v2, p0, Lio/intercom/android/sdk/store/Store$1;->this$0:Lio/intercom/android/sdk/store/Store;

    iget-object v2, v2, Lio/intercom/android/sdk/store/Store;->currentState:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lio/intercom/android/sdk/store/Store$Subscriber;->onStateChange(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
