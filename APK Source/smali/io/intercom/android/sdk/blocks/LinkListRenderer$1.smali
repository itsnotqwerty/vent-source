.class Lio/intercom/android/sdk/blocks/LinkListRenderer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/LinkListRenderer;->addLinkToLayout(Landroid/widget/LinearLayout;Lio/intercom/android/sdk/blocks/models/Link;ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/LinkListRenderer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layout:Landroid/widget/LinearLayout;

.field final synthetic val$link:Lio/intercom/android/sdk/blocks/models/Link;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/LinkListRenderer;Lio/intercom/android/sdk/blocks/models/Link;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->this$0:Lio/intercom/android/sdk/blocks/LinkListRenderer;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    iput-object p3, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x10

    const-string v0, "educate.article"

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Link;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "educate.suggestion"

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Link;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Link;->getArticleId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->this$0:Lio/intercom/android/sdk/blocks/LinkListRenderer;

    invoke-static {v2}, Lio/intercom/android/sdk/blocks/LinkListRenderer;->access$000(Lio/intercom/android/sdk/blocks/LinkListRenderer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->buildIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$layout:Landroid/widget/LinearLayout;

    const-string v3, "link_background"

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/b;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/b;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/b;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "educate.help_center"

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Link;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v1}, Lio/intercom/android/sdk/blocks/models/Link;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->this$0:Lio/intercom/android/sdk/blocks/LinkListRenderer;

    invoke-static {v3}, Lio/intercom/android/sdk/blocks/LinkListRenderer;->access$000(Lio/intercom/android/sdk/blocks/LinkListRenderer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/intercom/android/sdk/activities/IntercomHelpCenterActivity;->buildIntent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$layout:Landroid/widget/LinearLayout;

    const-string v3, "link_background"

    invoke-static {v0, v2, v3}, Landroid/support/v4/app/b;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/b;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/b;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$link:Lio/intercom/android/sdk/blocks/models/Link;

    invoke-virtual {v0}, Lio/intercom/android/sdk/blocks/models/Link;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lio/intercom/android/sdk/blocks/LinkListRenderer$1;->this$0:Lio/intercom/android/sdk/blocks/LinkListRenderer;

    invoke-static {v2}, Lio/intercom/android/sdk/blocks/LinkListRenderer;->access$100(Lio/intercom/android/sdk/blocks/LinkListRenderer;)Lio/intercom/android/sdk/api/Api;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/intercom/android/sdk/utilities/LinkOpener;->handleUrl(Ljava/lang/String;Landroid/content/Context;Lio/intercom/android/sdk/api/Api;)V

    goto :goto_0
.end method
