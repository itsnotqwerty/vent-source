.class Lio/intercom/android/sdk/errorreporting/ErrorReportStore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->sendSavedReport(Lio/intercom/android/sdk/Provider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

.field final synthetic val$apiProvider:Lio/intercom/android/sdk/Provider;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;Lio/intercom/android/sdk/Provider;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$1;->this$0:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    iput-object p2, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$1;->val$apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$1;->this$0:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    invoke-static {v0}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->access$000(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$1;->this$0:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$1;->val$apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-interface {v0}, Lio/intercom/android/sdk/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/api/Api;

    invoke-static {v1, v0}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->access$100(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;Lio/intercom/android/sdk/api/Api;)V

    :cond_0
    return-void
.end method
