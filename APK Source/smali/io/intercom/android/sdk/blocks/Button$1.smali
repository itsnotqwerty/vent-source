.class Lio/intercom/android/sdk/blocks/Button$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/Button;->setButtonDefaults(Landroid/view/View;Ljava/lang/String;Lio/intercom/android/sdk/blocks/BlockAlignment;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/Button;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/Button;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/Button$1;->this$0:Lio/intercom/android/sdk/blocks/Button;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/Button$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/Button$1;->this$0:Lio/intercom/android/sdk/blocks/Button;

    invoke-static {v0}, Lio/intercom/android/sdk/blocks/Button;->access$000(Lio/intercom/android/sdk/blocks/Button;)Lio/intercom/android/sdk/blocks/ButtonClickListener;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/Button$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lio/intercom/android/sdk/blocks/ButtonClickListener;->onButtonClicked(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
