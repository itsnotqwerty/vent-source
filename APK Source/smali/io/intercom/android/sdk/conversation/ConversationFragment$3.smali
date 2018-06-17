.class Lio/intercom/android/sdk/conversation/ConversationFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/imageloader/WallpaperLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/conversation/ConversationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/conversation/ConversationFragment;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$3;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/conversation/ConversationFragment$3;->this$0:Lio/intercom/android/sdk/conversation/ConversationFragment;

    iget-object v0, v0, Lio/intercom/android/sdk/conversation/ConversationFragment;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/intercom/android/sdk/utilities/BackgroundUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
