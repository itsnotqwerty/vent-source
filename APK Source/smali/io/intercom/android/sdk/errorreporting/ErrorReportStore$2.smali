.class Lio/intercom/android/sdk/errorreporting/ErrorReportStore$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->readAndSendReport(Lio/intercom/android/sdk/api/Api;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/persistence/JsonStorage$LoadHandler",
        "<",
        "Lio/intercom/android/sdk/errorreporting/ErrorReport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

.field final synthetic val$api:Lio/intercom/android/sdk/api/Api;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;Lio/intercom/android/sdk/api/Api;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$2;->this$0:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    iput-object p2, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$2;->val$api:Lio/intercom/android/sdk/api/Api;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoad(Lio/intercom/android/sdk/errorreporting/ErrorReport;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$2;->val$api:Lio/intercom/android/sdk/api/Api;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/api/Api;->sendErrorReport(Lio/intercom/android/sdk/errorreporting/ErrorReport;)V

    return-void
.end method

.method public bridge synthetic onLoad(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/intercom/android/sdk/errorreporting/ErrorReport;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore$2;->onLoad(Lio/intercom/android/sdk/errorreporting/ErrorReport;)V

    return-void
.end method
