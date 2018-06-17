.class Lio/intercom/android/sdk/conversation/ConversationContentPresenter$1;
.super Landroid/support/v7/widget/RecyclerView$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->setup()V
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

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->isAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$000(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$100(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$1;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/IntercomLinkPresenter;->updateIntercomLink(Lio/intercom/android/sdk/conversation/IntercomLinkPresenter$IntercomLinkHost;)V

    return-void
.end method
