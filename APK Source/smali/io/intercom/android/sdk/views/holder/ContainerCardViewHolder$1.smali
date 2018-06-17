.class Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;-><init>(Landroid/view/View;ILio/intercom/android/sdk/views/holder/ConversationListener;Landroid/content/ClipboardManager;ZLio/intercom/android/sdk/Provider;Lio/intercom/a/a/a/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;

.field final synthetic val$blocksView:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$1;->this$0:Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;

    iput-object p2, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$1;->val$blocksView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$1;->val$blocksView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder$1;->this$0:Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/views/holder/ContainerCardViewHolder;->setupViews()V

    const/4 v0, 0x0

    return v0
.end method
