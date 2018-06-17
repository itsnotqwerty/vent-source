.class Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->handleAction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;

.field final synthetic val$actionValue:Ljava/util/Map;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$2;->this$0:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;

    iput-object p2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$2;->val$actionValue:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$2;->val$actionValue:Ljava/util/Map;

    const-string v1, "article_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iget-object v1, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$2;->val$actionValue:Ljava/util/Map;

    const-string v2, "reaction_index"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface$2;->this$0:Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;

    invoke-static {v2}, Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;->access$100(Lio/intercom/android/sdk/helpcenter/HelpCenterWebViewInterface;)Lio/intercom/android/sdk/api/Api;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lio/intercom/android/sdk/api/Api;->reactToLink(Ljava/lang/String;IZ)V

    goto :goto_0
.end method
