.class Lio/intercom/android/sdk/conversation/ConversationContentPresenter$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->onConversationFetched(Lio/intercom/android/sdk/models/events/ConversationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$500(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    move-result-object v0

    const-string v1, "finish"

    const-string v2, "time-to-render-result-load-conversation-ms"

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$600(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0, p0}, Lio/intercom/android/sdk/utilities/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
