.class Lio/intercom/android/sdk/blocks/ConversationRatingCard$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/ConversationRatingCard;->showRemarkDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$5;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$5;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$5;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$5;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-static {v2}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->access$100(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)Lio/intercom/android/sdk/blocks/models/ConversationRating;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->addRemarkToConversation(Lio/intercom/android/sdk/blocks/models/ConversationRating;Ljava/lang/String;)V

    return-void
.end method
