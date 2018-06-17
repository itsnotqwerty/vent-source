.class Lio/intercom/android/sdk/views/AdminIsTypingView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/views/AdminIsTypingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/views/AdminIsTypingView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    iput-boolean v0, v1, Lio/intercom/android/sdk/views/AdminIsTypingView;->animating:Z

    iget-object v1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    iget-object v2, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    iget-object v2, v2, Lio/intercom/android/sdk/views/AdminIsTypingView;->animateDots:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/views/AdminIsTypingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    iget-object v2, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    iget-object v2, v2, Lio/intercom/android/sdk/views/AdminIsTypingView;->endAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/views/AdminIsTypingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    invoke-static {v1}, Lio/intercom/android/sdk/views/AdminIsTypingView;->access$000(Lio/intercom/android/sdk/views/AdminIsTypingView;)Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    invoke-static {v1}, Lio/intercom/android/sdk/views/AdminIsTypingView;->access$000(Lio/intercom/android/sdk/views/AdminIsTypingView;)Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    invoke-interface {v1, v2}, Lio/intercom/android/sdk/views/AdminIsTypingView$Listener;->onAdminTypingAnimationEnded(Lio/intercom/android/sdk/views/AdminIsTypingView;)V

    :cond_0
    iget-object v1, p0, Lio/intercom/android/sdk/views/AdminIsTypingView$2;->this$0:Lio/intercom/android/sdk/views/AdminIsTypingView;

    iget-object v1, v1, Lio/intercom/android/sdk/views/AdminIsTypingView;->dotsAnimations:[Landroid/animation/Animator;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
