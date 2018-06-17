.class Lio/intercom/android/sdk/conversation/ConversationContentPresenter$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->showRetryDialog(Lio/intercom/android/sdk/models/Part;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

.field final synthetic val$part:Lio/intercom/android/sdk/models/Part;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/ConversationContentPresenter;Lio/intercom/android/sdk/models/Part;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$6;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    iput-object p2, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$6;->val$part:Lio/intercom/android/sdk/models/Part;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$6;->this$0:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationContentPresenter$6;->val$part:Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->retryTapped(Lio/intercom/android/sdk/models/Part;)V

    return-void
.end method
