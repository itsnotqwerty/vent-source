.class Lio/intercom/android/sdk/conversation/ConversationFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/utilities/connectivity/NetworkConnectivityMonitor$ConnectivityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/conversation/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$7;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnect()V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$7;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_no_network_connection:I

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->c(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public onReconnect()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$7;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_connected:I

    invoke-static {v0, v1, v5}, Landroid/support/design/widget/Snackbar;->c(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$7;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/AppConfig;

    invoke-virtual {v0}, Lio/intercom/android/sdk/identity/AppConfig;->getBaseColor()I

    move-result v2

    iget-object v0, v1, Landroid/support/design/widget/Snackbar;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/b$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    invoke-virtual {v0}, Landroid/support/design/internal/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget v0, Lio/intercom/android/sdk/R$string;->intercom_dismiss:I

    new-instance v2, Lio/intercom/android/sdk/conversation/ConversationFragment$7$1;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$7$1;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment$7;)V

    iget-object v3, v1, Landroid/support/design/widget/b;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, v1, Landroid/support/design/widget/Snackbar;->jh:Landroid/support/design/widget/b$e;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/b$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    invoke-virtual {v0}, Landroid/support/design/internal/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void

    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/support/design/widget/Snackbar$1;

    invoke-direct {v3, v1, v2}, Landroid/support/design/widget/Snackbar$1;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
