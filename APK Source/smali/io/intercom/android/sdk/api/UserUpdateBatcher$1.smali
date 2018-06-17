.class Lio/intercom/android/sdk/api/UserUpdateBatcher$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/api/UserUpdateBatcher;->submitPendingUpdateWithDelay(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/api/UserUpdateBatcher;

.field final synthetic val$updateIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/api/UserUpdateBatcher;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/api/UserUpdateBatcher$1;->this$0:Lio/intercom/android/sdk/api/UserUpdateBatcher;

    iput-object p2, p0, Lio/intercom/android/sdk/api/UserUpdateBatcher$1;->val$updateIdentifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/api/UserUpdateBatcher$1;->this$0:Lio/intercom/android/sdk/api/UserUpdateBatcher;

    iget-object v1, p0, Lio/intercom/android/sdk/api/UserUpdateBatcher$1;->val$updateIdentifier:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/intercom/android/sdk/api/UserUpdateBatcher;->access$000(Lio/intercom/android/sdk/api/UserUpdateBatcher;Ljava/lang/String;)V

    return-void
.end method
