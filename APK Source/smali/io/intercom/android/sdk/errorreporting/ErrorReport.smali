.class public Lio/intercom/android/sdk/errorreporting/ErrorReport;
.super Ljava/lang/Object;


# instance fields
.field private final exceptionReports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/errorreporting/ExceptionReport;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/intercom/a/b/a/a/c;
        value = "exception_reports"
    .end annotation
.end field

.field private final timestamp:J


# direct methods
.method constructor <init>(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/errorreporting/ExceptionReport;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/errorreporting/ErrorReport;->exceptionReports:Ljava/util/List;

    iput-wide p2, p0, Lio/intercom/android/sdk/errorreporting/ErrorReport;->timestamp:J

    return-void
.end method


# virtual methods
.method public getExceptionReports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/errorreporting/ExceptionReport;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReport;->exceptionReports:Ljava/util/List;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/errorreporting/ErrorReport;->timestamp:J

    return-wide v0
.end method
