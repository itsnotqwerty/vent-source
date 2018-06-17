.class Lio/intercom/android/sdk/conversation/ConversationFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/conversation/composer/ComposerPresenter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/conversation/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blockFactory:Lio/intercom/android/sdk/blocks/BlockFactory;

.field final synthetic this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V
    .locals 2

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/android/sdk/blocks/BlockFactory;

    new-instance v1, Lio/intercom/android/sdk/blocks/logic/TextSplittingStrategy;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/logic/TextSplittingStrategy;-><init>()V

    invoke-direct {v0, v1}, Lio/intercom/android/sdk/blocks/BlockFactory;-><init>(Lio/intercom/android/sdk/blocks/logic/TextSplittingStrategy;)V

    iput-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->blockFactory:Lio/intercom/android/sdk/blocks/BlockFactory;

    return-void
.end method

.method private createBlocks(Lcom/intercom/input/gallery/b;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/intercom/input/gallery/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block$Builder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/intercom/input/gallery/b;->mimeType:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;-><init>()V

    iget-object v2, p1, Lcom/intercom/input/gallery/b;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->LOCALIMAGE:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v2}, Lio/intercom/android/sdk/blocks/BlockType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    iget v2, p1, Lcom/intercom/input/gallery/b;->imageWidth:I

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withWidth(I)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    iget v2, p1, Lcom/intercom/input/gallery/b;->imageHeight:I

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withHeight(I)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;-><init>()V

    iget-object v2, p1, Lcom/intercom/input/gallery/b;->bmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withName(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/intercom/input/gallery/b;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/intercom/input/gallery/b;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->withContentType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->build()Lio/intercom/android/sdk/blocks/models/BlockAttachment;

    move-result-object v1

    new-instance v2, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-direct {v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withAttachments(Ljava/util/List;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    sget-object v2, Lio/intercom/android/sdk/blocks/BlockType;->LOCAL_ATTACHMENT:Lio/intercom/android/sdk/blocks/BlockType;

    invoke-virtual {v2}, Lio/intercom/android/sdk/blocks/BlockType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showUploadError()V
    .locals 3

    new-instance v0, Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    invoke-virtual {v1}, Lio/intercom/android/sdk/conversation/ConversationFragment;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/c$a;-><init>(Landroid/content/Context;)V

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_failed_to_send:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setTitle(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_file_too_big:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->setMessage(I)Landroid/support/v7/app/c$a;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lio/intercom/android/sdk/conversation/ConversationFragment$9$1;

    invoke-direct {v2, p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$9$1;-><init>(Lio/intercom/android/sdk/conversation/ConversationFragment$9;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->show()Landroid/support/v7/app/c;

    return-void
.end method


# virtual methods
.method public onRemoteImageSelected(Lcom/intercom/input/gallery/b;)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    new-instance v1, Lio/intercom/android/sdk/blocks/models/Block$Builder;

    invoke-direct {v1}, Lio/intercom/android/sdk/blocks/models/Block$Builder;-><init>()V

    const-string v2, "image"

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/intercom/input/gallery/b;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/intercom/input/gallery/b;->attribution:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withAttribution(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    iget v2, p1, Lcom/intercom/input/gallery/b;->imageHeight:I

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withHeight(I)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    iget v2, p1, Lcom/intercom/input/gallery/b;->imageWidth:I

    invoke-virtual {v1, v2}, Lio/intercom/android/sdk/blocks/models/Block$Builder;->withWidth(I)Lio/intercom/android/sdk/blocks/models/Block$Builder;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->sendPart(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->composerPresenter:Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;

    invoke-virtual {v0}, Lio/intercom/android/sdk/conversation/composer/ComposerPresenter;->returnToDefaultInput()V

    return-void
.end method

.method public onSendButtonPressed(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    invoke-static {v1}, Lio/intercom/android/sdk/conversation/ConversationFragment;->access$000(Lio/intercom/android/sdk/conversation/ConversationFragment;)Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;

    move-result-object v1

    const-string v2, "start"

    const-string v3, "time-to-process-action-send-part-ms"

    invoke-virtual {v1, v2, v3}, Lio/intercom/android/sdk/metrics/ops/OpsMetricTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v1, v1, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    iget-object v2, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->blockFactory:Lio/intercom/android/sdk/blocks/BlockFactory;

    invoke-virtual {v2, v0}, Lio/intercom/android/sdk/blocks/BlockFactory;->getBlocksForText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->sendPart(Ljava/util/List;)V

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    sget v1, Lio/intercom/android/sdk/R$id;->disabled_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onUploadImageSelected(Lcom/intercom/input/gallery/b;)V
    .locals 2

    iget v0, p1, Lcom/intercom/input/gallery/b;->bmf:I

    const/high16 v1, 0x2800000

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->showUploadError()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->contentPresenter:Lio/intercom/android/sdk/conversation/ConversationContentPresenter;

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/conversation/ConversationFragment$9;->createBlocks(Lcom/intercom/input/gallery/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/intercom/android/sdk/conversation/ConversationContentPresenter;->uploadImage(Ljava/util/List;Lcom/intercom/input/gallery/b;)V

    goto :goto_0
.end method
