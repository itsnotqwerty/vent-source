.class public Lio/intercom/android/sdk/errorreporting/ExceptionReport;
.super Ljava/lang/Object;


# instance fields
.field private final className:Ljava/lang/String;
    .annotation runtime Lio/intercom/a/b/a/a/c;
        value = "class_name"
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final stacktrace:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/errorreporting/ExceptionReport;->className:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/android/sdk/errorreporting/ExceptionReport;->message:Ljava/lang/String;

    iput-object p3, p0, Lio/intercom/android/sdk/errorreporting/ExceptionReport;->stacktrace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ExceptionReport;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ExceptionReport;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStacktrace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/errorreporting/ExceptionReport;->stacktrace:Ljava/lang/String;

    return-object v0
.end method
