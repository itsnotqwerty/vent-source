.class Lio/intercom/android/sdk/conversation/ConversationContentPresenter$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/conversation/ConversationContentPresenter;
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

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$10;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$10;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$400(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Lio/intercom/android/sdk/conversation/ConversationPartAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationPartAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$10;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$600(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    sget-wide v2, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->TIMESTAMP_UPDATE_PERIOD:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
