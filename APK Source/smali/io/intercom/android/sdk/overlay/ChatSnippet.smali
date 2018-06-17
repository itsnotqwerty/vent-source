.class Lio/intercom/android/sdk/overlay/ChatSnippet;
.super Lio/intercom/android/sdk/overlay/ChatNotification;


# instance fields
.field private contentBody:Landroid/widget/TextView;

.field private final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/android/sdk/models/Conversation;",
            "II",
            "Lio/intercom/android/sdk/overlay/InAppNotification$Listener;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/identity/AppConfig;",
            ">;",
            "Lio/intercom/a/a/a/j;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lio/intercom/android/sdk/overlay/ChatNotification;-><init>(Landroid/content/Context;Lio/intercom/android/sdk/models/Conversation;IILio/intercom/android/sdk/overlay/InAppNotification$Listener;Lio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V

    iput-object p7, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->requestManager:Lio/intercom/a/a/a/j;

    return-void
.end method

.method private setBodyText(Lio/intercom/android/sdk/models/Part;)V
    .locals 3

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->contentBody:Landroid/widget/TextView;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->localisedContext:Landroid/content/Context;

    sget v2, Lio/intercom/android/sdk/R$string;->intercom_image_attached:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->contentBody:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Part;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected getContentContainer()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->chathead_text_body:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected inflateChatRootView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v2, 0x0

    sget v0, Lio/intercom/android/sdk/R$layout;->intercom_preview_chat_snippet_overlay:I

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$layout;->intercom_preview_chat_snippet_body:I

    invoke-virtual {p2, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->contentBody:Landroid/widget/TextView;

    sget v1, Lio/intercom/android/sdk/R$id;->chathead_text_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->contentBody:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public update(Lio/intercom/android/sdk/models/Conversation;Ljava/lang/Runnable;)V
    .locals 3

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->conversation:Lio/intercom/android/sdk/models/Conversation;

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->chathead_text_body:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->chathead_text_container:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, v1, v0, p2}, Lio/intercom/android/sdk/overlay/ChatSnippet;->performReplyPulse(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateContentContainer(Lio/intercom/android/sdk/models/Part;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/overlay/ChatSnippet;->setBodyText(Lio/intercom/android/sdk/models/Part;)V

    return-void
.end method

.method protected updateViewDataDuringReplyPulse(I)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->chathead_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Conversation;->getLastAdmin()Lio/intercom/android/sdk/models/Participant;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Participant;->getAvatar()Lio/intercom/android/sdk/models/Avatar;

    move-result-object v2

    iget-object v1, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->appConfigProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v1}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/android/sdk/identity/AppConfig;

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->requestManager:Lio/intercom/a/a/a/j;

    invoke-static {v2, v0, v1, v3}, Lio/intercom/android/sdk/utilities/AvatarUtils;->loadAvatarIntoView(Lio/intercom/android/sdk/models/Avatar;Landroid/widget/ImageView;Lio/intercom/android/sdk/identity/AppConfig;Lio/intercom/a/a/a/j;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->overlayRoot:Landroid/view/ViewGroup;

    sget v1, Lio/intercom/android/sdk/R$id;->chathead_text_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/intercom/android/sdk/overlay/ChatSnippet;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatSnippet;->conversation:Lio/intercom/android/sdk/models/Conversation;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation;->getLastPart()Lio/intercom/android/sdk/models/Part;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/overlay/ChatSnippet;->setBodyText(Lio/intercom/android/sdk/models/Part;)V

    return-void
.end method
