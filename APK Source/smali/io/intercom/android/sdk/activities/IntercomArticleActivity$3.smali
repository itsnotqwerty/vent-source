.class Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;
.super Lio/intercom/android/sdk/api/BaseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/activities/IntercomArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/android/sdk/api/BaseCallback",
        "<",
        "Lio/intercom/android/sdk/models/LinkResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    invoke-direct {p0}, Lio/intercom/android/sdk/api/BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onError(Lio/intercom/android/sdk/api/ErrorObject;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    invoke-static {v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->access$100(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)Lio/intercom/android/sdk/views/IntercomErrorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->loadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->setVisibility(I)V

    return-void
.end method

.method protected onSuccess(Lio/intercom/android/sdk/models/LinkResponse$Builder;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->scrollView:Lio/intercom/android/sdk/views/ContentAwareScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/ContentAwareScrollView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->loadingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    invoke-static {v0}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->access$100(Lio/intercom/android/sdk/activities/IntercomArticleActivity;)Lio/intercom/android/sdk/views/IntercomErrorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    invoke-virtual {p1}, Lio/intercom/android/sdk/models/LinkResponse$Builder;->build()Lio/intercom/android/sdk/models/LinkResponse;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/android/sdk/models/LinkResponse;->getLink()Lio/intercom/android/sdk/models/Link;

    move-result-object v1

    invoke-static {v0, v1}, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->access$200(Lio/intercom/android/sdk/activities/IntercomArticleActivity;Lio/intercom/android/sdk/models/Link;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v0, v0, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->metricTracker:Lio/intercom/android/sdk/metrics/MetricTracker;

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v1, v1, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->conversationId:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->this$0:Lio/intercom/android/sdk/activities/IntercomArticleActivity;

    iget-object v2, v2, Lio/intercom/android/sdk/activities/IntercomArticleActivity;->linkId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->viewedArticle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/intercom/android/sdk/models/LinkResponse$Builder;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/activities/IntercomArticleActivity$3;->onSuccess(Lio/intercom/android/sdk/models/LinkResponse$Builder;)V

    return-void
.end method
