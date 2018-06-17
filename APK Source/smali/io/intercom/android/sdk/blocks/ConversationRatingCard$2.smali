.class Lio/intercom/android/sdk/blocks/ConversationRatingCard$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/ConversationRatingCard;->createConversationRatingBlock(Lio/intercom/android/sdk/blocks/models/ConversationRating;Landroid/view/ViewGroup;)Landroid/view/View;
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

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$2;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$2;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/blocks/ConversationRatingCard;->access$300(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/content/Context;)V

    return-void
.end method
