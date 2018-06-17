.class Lio/intercom/android/sdk/blocks/LinkCard$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/LinkCard;->createLinkBlock(Lio/intercom/android/sdk/blocks/models/Link;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/LinkCard;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$link:Lio/intercom/android/sdk/blocks/models/Link;

.field final synthetic val$rootLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/LinkCard;Landroid/content/Context;Lio/intercom/android/sdk/blocks/models/Link;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->this$0:Lio/intercom/android/sdk/blocks/LinkCard;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->val$rootLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Link;->getArticleId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->this$0:Lio/intercom/android/sdk/blocks/LinkCard;

    invoke-static {v2}, Lio/intercom/android/sdk/blocks/LinkCard;->access$000(Lio/intercom/android/sdk/blocks/LinkCard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/LinkCard$1;->val$rootLayout:Landroid/widget/LinearLayout;

    const-string v3, "link_background"

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/b;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/b;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/b;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
