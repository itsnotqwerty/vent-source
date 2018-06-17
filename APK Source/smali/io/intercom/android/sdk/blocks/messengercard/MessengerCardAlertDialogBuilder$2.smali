.class Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;->setUp(Landroid/content/Context;Ljava/util/Map;ILandroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;

.field final synthetic val$inputView:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$2;->this$0:Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$2;->val$inputView:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$2;->val$inputView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$2;->val$inputView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
