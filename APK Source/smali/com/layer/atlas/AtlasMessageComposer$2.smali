.class public final Lcom/layer/atlas/AtlasMessageComposer$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/AtlasMessageComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnl:Lcom/layer/atlas/AtlasMessageComposer;


# direct methods
.method public constructor <init>(Lcom/layer/atlas/AtlasMessageComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/AtlasMessageComposer$2;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer$2;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessageComposer;->bmV:Lcom/layer/sdk/messaging/Conversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer$2;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessageComposer;->bmV:Lcom/layer/sdk/messaging/Conversation;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer$2;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessageComposer;->bmZ:Landroid/widget/Button;

    iget-object v1, p0, Lcom/layer/atlas/AtlasMessageComposer$2;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    invoke-virtual {v1}, Lcom/layer/atlas/AtlasMessageComposer;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer$2;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessageComposer;->bmV:Lcom/layer/sdk/messaging/Conversation;

    sget-object v1, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->STARTED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/messaging/Conversation;->send(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer$2;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessageComposer;->bmZ:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer$2;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    iget-object v0, v0, Lcom/layer/atlas/AtlasMessageComposer;->bmV:Lcom/layer/sdk/messaging/Conversation;

    sget-object v1, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->FINISHED:Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/messaging/Conversation;->send(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
