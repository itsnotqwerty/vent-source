.class Lio/intercom/android/sdk/errorreporting/ExceptionParser;
.super Ljava/lang/Object;


# static fields
.field private static final ALLOWED_PACKAGES:[Ljava/lang/String;

.field private static final INTERCOM_SDK_PACKAGE:Ljava/lang/String; = "io.intercom.android.sdk."

.field private static final REDACTION_LINE:Ljava/lang/String; = "[Non Intercom/OS method]"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "io.intercom.android.sdk."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "java."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google."

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/android/sdk/errorreporting/ExceptionParser;->ALLOWED_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createExceptionReports(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/errorreporting/ExceptionReport;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    new-instance v1, Lio/intercom/android/sdk/errorreporting/ExceptionReport;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/intercom/android/sdk/errorreporting/ExceptionParser;->getStacktraceString([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/intercom/android/sdk/errorreporting/ExceptionReport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getStacktraceString([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lio/intercom/android/sdk/errorreporting/ExceptionParser;->isFromAllowedPackage(Ljava/lang/StackTraceElement;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "[Non Intercom/OS method]"

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isFromAllowedPackage(Ljava/lang/StackTraceElement;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/intercom/android/sdk/errorreporting/ExceptionParser;->ALLOWED_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method containsIntercomMethod(Ljava/lang/Throwable;)Z
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "io.intercom.android.sdk."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method createReportFrom(Ljava/lang/Throwable;)Lio/intercom/android/sdk/errorreporting/ErrorReport;
    .locals 4

    new-instance v0, Lio/intercom/android/sdk/errorreporting/ErrorReport;

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/errorreporting/ExceptionParser;->createExceptionReports(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->SYSTEM:Lio/intercom/android/sdk/commons/utilities/TimeProvider;

    invoke-interface {v2}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/android/sdk/errorreporting/ErrorReport;-><init>(Ljava/util/List;J)V

    return-object v0
.end method
