.class Lio/intercom/android/sdk/inbox/InboxFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/inbox/InboxFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/inbox/InboxFragment;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/inbox/InboxFragment;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/inbox/InboxFragment$1;->this$0:Lio/intercom/android/sdk/inbox/InboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/inbox/InboxFragment$1;->this$0:Lio/intercom/android/sdk/inbox/InboxFragment;

    invoke-static {v0}, Lio/intercom/android/sdk/inbox/InboxFragment;->access$000(Lio/intercom/android/sdk/inbox/InboxFragment;)Lio/intercom/android/sdk/store/Store;

    move-result-object v0

    invoke-static {}, Lio/intercom/android/sdk/actions/Actions;->fetchInboxRequest()Lio/intercom/android/sdk/actions/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/store/Store;->dispatch(Lio/intercom/android/sdk/actions/Action;)Ljava/lang/Object;

    return-void
.end method
