.class Lio/intercom/android/sdk/store/Store$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$NextDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/store/Store;-><init>(Lio/intercom/android/sdk/store/Store$Reducer;Ljava/lang/Object;[Lio/intercom/android/sdk/store/Store$Middleware;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/store/Store;

.field final synthetic val$mw:Lio/intercom/android/sdk/store/Store$Middleware;

.field final synthetic val$n:Lio/intercom/android/sdk/store/Store$NextDispatcher;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/store/Store$Middleware;Lio/intercom/android/sdk/store/Store$NextDispatcher;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/store/Store$3;->this$0:Lio/intercom/android/sdk/store/Store;

    iput-object p2, p0, Lio/intercom/android/sdk/store/Store$3;->val$mw:Lio/intercom/android/sdk/store/Store$Middleware;

    iput-object p3, p0, Lio/intercom/android/sdk/store/Store$3;->val$n:Lio/intercom/android/sdk/store/Store$NextDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lio/intercom/android/sdk/actions/Action;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/store/Store$3;->val$mw:Lio/intercom/android/sdk/store/Store$Middleware;

    iget-object v1, p0, Lio/intercom/android/sdk/store/Store$3;->this$0:Lio/intercom/android/sdk/store/Store;

    iget-object v2, p0, Lio/intercom/android/sdk/store/Store$3;->val$n:Lio/intercom/android/sdk/store/Store$NextDispatcher;

    invoke-interface {v0, v1, p1, v2}, Lio/intercom/android/sdk/store/Store$Middleware;->dispatch(Lio/intercom/android/sdk/store/Store;Lio/intercom/android/sdk/actions/Action;Lio/intercom/android/sdk/store/Store$NextDispatcher;)V

    return-void
.end method
