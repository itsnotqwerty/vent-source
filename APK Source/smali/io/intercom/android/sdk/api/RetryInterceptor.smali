.class Lio/intercom/android/sdk/api/RetryInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;
    }
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field private final sleeper:Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/api/RetryInterceptor;->sleeper:Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;

    return-void
.end method

.method static getRetryTimer(I)I
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public intercept(Lio/intercom/okhttp3/Interceptor$Chain;)Lio/intercom/okhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v1, v3, :cond_1

    :try_start_0
    invoke-interface {p1}, Lio/intercom/okhttp3/Interceptor$Chain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/intercom/okhttp3/Interceptor$Chain;->proceed(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    if-ne v1, v3, :cond_0

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/api/RetryInterceptor;->sleeper:Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Lio/intercom/android/sdk/api/RetryInterceptor;->getRetryTimer(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lio/intercom/android/sdk/api/RetryInterceptor$Sleeper;->sleep(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "request failed due to network errors"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
