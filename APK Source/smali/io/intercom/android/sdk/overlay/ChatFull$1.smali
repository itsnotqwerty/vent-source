.class Lio/intercom/android/sdk/overlay/ChatFull$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/overlay/ChatFull;->inflateChatRootView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/overlay/ChatFull;

.field final synthetic val$blockContainer:Landroid/view/ViewGroup;

.field final synthetic val$root:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/overlay/ChatFull;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->this$0:Lio/intercom/android/sdk/overlay/ChatFull;

    iput-object p2, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->val$blockContainer:Landroid/view/ViewGroup;

    iput-object p3, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->val$root:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->val$blockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->val$blockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->val$blockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v3, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->this$0:Lio/intercom/android/sdk/overlay/ChatFull;

    iget-object v3, v3, Lio/intercom/android/sdk/overlay/ChatFull;->localisedContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/intercom/android/sdk/R$dimen;->intercom_chat_full_top_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lio/intercom/android/sdk/R$dimen;->intercom_bottom_padding:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->this$0:Lio/intercom/android/sdk/overlay/ChatFull;

    iget v5, v5, Lio/intercom/android/sdk/overlay/ChatFull;->screenHeight:I

    sub-int v4, v5, v4

    sub-int v0, v4, v0

    sub-int/2addr v0, v3

    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/overlay/ChatFull$1;->val$root:Landroid/view/ViewGroup;

    sget v2, Lio/intercom/android/sdk/R$id;->chat_overlay_overflow_fade:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
