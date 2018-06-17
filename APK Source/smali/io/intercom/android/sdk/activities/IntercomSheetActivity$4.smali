.class Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/retrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/activities/IntercomSheetActivity;->loadSheet(Lio/intercom/android/sdk/api/Api;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/retrofit2/Callback",
        "<",
        "Lio/intercom/android/sdk/models/Sheet$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/intercom/retrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/Sheet$Builder;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-static {v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->access$700(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V

    return-void
.end method

.method public onResponse(Lio/intercom/retrofit2/Call;Lio/intercom/retrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Lio/intercom/android/sdk/models/Sheet$Builder;",
            ">;",
            "Lio/intercom/retrofit2/Response",
            "<",
            "Lio/intercom/android/sdk/models/Sheet$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lio/intercom/retrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/intercom/retrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-static {v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->access$200(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Lio/intercom/android/sdk/views/IntercomErrorView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/views/IntercomErrorView;->setVisibility(I)V

    invoke-virtual {p2}, Lio/intercom/retrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Sheet$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Sheet$Builder;->build()Lio/intercom/android/sdk/models/Sheet;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-static {v1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->access$300(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;

    move-result-object v1

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Sheet;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/sheets/SheetWebViewPresenter;->loadBundle(Ljava/lang/String;)V

    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-static {v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->access$600(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Lio/intercom/android/sdk/metrics/MetricTracker;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-static {v1}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->access$400(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-static {v2}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->access$500(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/android/sdk/metrics/MetricTracker;->viewedMessengerSheet(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/activities/IntercomSheetActivity$4;->this$0:Lio/intercom/android/sdk/activities/IntercomSheetActivity;

    invoke-static {v0}, Lio/intercom/android/sdk/activities/IntercomSheetActivity;->access$700(Lio/intercom/android/sdk/activities/IntercomSheetActivity;)V

    goto :goto_0
.end method
