.class Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/conversation/ReactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomArticleActivity;->updateContent(Lio/intercom/android/sdk/models/Link;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

.field final synthetic val$link:Lio/intercom/android/sdk/models/Link;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;Lio/intercom/android/sdk/models/Link;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iput-object p2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;->val$link:Lio/intercom/android/sdk/models/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactionSelected(Lio/intercom/android/sdk/models/Reaction;)V
    .locals 5

    invoke-static {}, Lio/intercom/android/sdk/Injector;->get()Lio/intercom/android/sdk/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/android/sdk/Injector;->getApi()Lio/intercom/android/sdk/api/Api;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;->val$link:Lio/intercom/android/sdk/models/Link;

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/Link;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Reaction;->getIndex()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/intercom/android/sdk/api/Api;->reactToLink(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v1, v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    invoke-static {v2}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->access$300(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/Reaction;->getIndex()I

    move-result v3

    sget-object v4, Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;->LINK:Lio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/intercom/android/sdk/metrics/MetricTracker;->sentReaction(Ljava/lang/String;Ljava/lang/String;ILio/intercom/android/sdk/metrics/MetricTracker$ReactionLocation;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$5;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    sget v1, Lio/intercom/android/sdk/R$id;->reaction_text:I

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lio/intercom/android/sdk/R$string;->intercom_article_response:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
