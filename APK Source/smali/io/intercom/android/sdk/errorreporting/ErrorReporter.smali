.class public Lio/intercom/android/sdk/errorreporting/ErrorReporter;
.super Ljava/lang/Object;


# instance fields
.field private final apiProvider:Lio/intercom/android/sdk/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionParser:Lio/intercom/android/sdk/errorreporting/ExceptionParser;

.field private final reportStore:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/errorreporting/ExceptionParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/errorreporting/ErrorReportStore;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;",
            "Lio/intercom/android/sdk/errorreporting/ExceptionParser;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->reportStore:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    iput-object p2, p0, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->apiProvider:Lio/intercom/android/sdk/Provider;

    iput-object p3, p0, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->exceptionParser:Lio/intercom/android/sdk/errorreporting/ExceptionParser;

    return-void
.end method

.method public static create(Landroid/content/Context;Lio/intercom/a/b/a/e;Lio/intercom/android/sdk/Provider;)Lio/intercom/android/sdk/errorreporting/ErrorReporter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/android/sdk/Provider",
            "<",
            "Lio/intercom/android/sdk/api/Api;",
            ">;)",
            "Lio/intercom/android/sdk/errorreporting/ErrorReporter;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->create(Landroid/content/Context;Lio/intercom/a/b/a/e;)Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    move-result-object v0

    new-instance v1, Lio/intercom/android/sdk/errorreporting/ErrorReporter;

    new-instance v2, Lio/intercom/android/sdk/errorreporting/ExceptionParser;

    invoke-direct {v2}, Lio/intercom/android/sdk/errorreporting/ExceptionParser;-><init>()V

    invoke-direct {v1, v0, p2, v2}, Lio/intercom/android/sdk/errorreporting/ErrorReporter;-><init>(Lio/intercom/android/sdk/errorreporting/ErrorReportStore;Lio/intercom/android/sdk/Provider;Lio/intercom/android/sdk/errorreporting/ExceptionParser;)V

    return-object v1
.end method


# virtual methods
.method public disableExceptionHandler()V
    .locals 0

    invoke-static {}, Lio/intercom/android/sdk/errorreporting/IntercomExceptionHandler;->disable()V

    return-void
.end method

.method public enableExceptionHandler()V
    .locals 0

    invoke-static {p0}, Lio/intercom/android/sdk/errorreporting/IntercomExceptionHandler;->enable(Lio/intercom/android/sdk/errorreporting/ErrorReporter;)V

    return-void
.end method

.method saveReport(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->exceptionParser:Lio/intercom/android/sdk/errorreporting/ExceptionParser;

    invoke-virtual {v0, p1}, Lio/intercom/android/sdk/errorreporting/ExceptionParser;->containsIntercomMethod(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->reportStore:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    iget-object v1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->exceptionParser:Lio/intercom/android/sdk/errorreporting/ExceptionParser;

    invoke-virtual {v1, p1}, Lio/intercom/android/sdk/errorreporting/ExceptionParser;->createReportFrom(Ljava/lang/Throwable;)Lio/intercom/android/sdk/errorreporting/ErrorReport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->saveToDisk(Lio/intercom/android/sdk/errorreporting/ErrorReport;)V

    :cond_0
    return-void
.end method

.method public sendSavedReport()V
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->reportStore:Lio/intercom/android/sdk/errorreporting/ErrorReportStore;

    iget-object v1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReporter;->apiProvider:Lio/intercom/android/sdk/Provider;

    invoke-virtual {v0, v1}, Lio/intercom/android/sdk/errorreporting/ErrorReportStore;->sendSavedReport(Lio/intercom/android/sdk/Provider;)V

    return-void
.end method
