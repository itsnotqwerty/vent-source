.class Lio/intercom/android/sdk/store/UnreadCountTracker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/store/UnreadCountTracker;->addListener(Lio/intercom/android/sdk/UnreadConversationCountListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Subscriber",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/store/UnreadCountTracker;

.field final synthetic val$listener:Lio/intercom/android/sdk/UnreadConversationCountListener;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/store/UnreadCountTracker;Lio/intercom/android/sdk/UnreadConversationCountListener;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/store/UnreadCountTracker$1;->this$0:Lio/intercom/android/sdk/store/UnreadCountTracker;

    iput-object p2, p0, Lio/intercom/android/sdk/store/UnreadCountTracker$1;->val$listener:Lio/intercom/android/sdk/UnreadConversationCountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/store/UnreadCountTracker$1;->val$listener:Lio/intercom/android/sdk/UnreadConversationCountListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lio/intercom/android/sdk/UnreadConversationCountListener;->onCountUpdate(I)V

    return-void
.end method

.method public bridge synthetic onStateChange(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/store/UnreadCountTracker$1;->onStateChange(Ljava/lang/Integer;)V

    return-void
.end method
