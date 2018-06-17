.class Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/blocks/ConversationRatingCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->access$000(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-static {v1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->access$000(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-static {v2}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->access$100(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)Lio/intercom/android/sdk/blocks/models/ConversationRating;

    move-result-object v2

    invoke-virtual {v2}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-static {v2}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->access$100(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)Lio/intercom/android/sdk/blocks/models/ConversationRating;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-static {v3}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->access$100(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)Lio/intercom/android/sdk/blocks/models/ConversationRating;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/android/sdk/blocks/models/ConversationRating;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;

    invoke-virtual {v1, v2, v0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->rateConversation(Lio/intercom/android/sdk/blocks/models/ConversationRating;Lio/intercom/android/sdk/blocks/models/ConversationRatingOption;)V

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$1;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->access$200(Lio/intercom/android/sdk/blocks/ConversationRatingCard;)V

    goto :goto_0
.end method
