.class Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;
.super Landroid/support/v7/app/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;ILandroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;->setUp(Landroid/content/Context;Ljava/util/Map;ILandroid/webkit/WebView;)V

    return-void
.end method

.method private setUp(Landroid/content/Context;Ljava/util/Map;ILandroid/webkit/WebView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_webview_card_input:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const-string v0, "label"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    sget v0, Lio/intercom/android/sdk/R$id;->input:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    const-string v1, "currentValue"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "placeholder"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, v2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;->setView(Landroid/view/View;)Landroid/support/v7/app/c$a;

    const v1, 0x104000a

    new-instance v2, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$1;

    invoke-direct {v2, p0, v0, p2, p4}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$1;-><init>(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;Landroid/widget/AutoCompleteTextView;Ljava/util/Map;Landroid/webkit/WebView;)V

    invoke-virtual {p0, v1, v2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    const/high16 v1, 0x1040000

    new-instance v2, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$2;

    invoke-direct {v2, p0, v0}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder$2;-><init>(Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p0, v1, v2}, Lio/intercom/android/sdk/blocks/messengercard/MessengerCardAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    return-void
.end method
