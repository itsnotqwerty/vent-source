.class Lio/intercom/android/sdk/conversation/ConversationContentPresenter$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$2;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$2;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$000(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$2;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-static {v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->access$200(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;)V

    return-void
.end method
