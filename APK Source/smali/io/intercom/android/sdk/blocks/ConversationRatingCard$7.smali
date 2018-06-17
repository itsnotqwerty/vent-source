.class Lio/intercom/android/sdk/blocks/ConversationRatingCard$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$alert:Landroid/support/v7/app/c;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$7;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$7;->val$alert:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$7;->val$alert:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$7;->val$alert:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/support/v7/app/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
