.class public final Lio/intercom/okhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Interceptor;


# instance fields
.field public final client:Lio/intercom/okhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lio/intercom/okhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/connection/ConnectInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/intercom/okhttp3/Interceptor$Chain;)Lio/intercom/okhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->request()Lio/intercom/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    move-result-object v3

    invoke-virtual {v2}, Lio/intercom/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lio/intercom/okhttp3/internal/connection/ConnectInterceptor;->client:Lio/intercom/okhttp3/OkHttpClient;

    invoke-virtual {v3, v4, p1, v1}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->newStream(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Interceptor$Chain;Z)Lio/intercom/okhttp3/internal/http/HttpCodec;

    move-result-object v1

    invoke-virtual {v3}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection()Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lio/intercom/okhttp3/internal/http/RealInterceptorChain;->proceed(Lio/intercom/okhttp3/Request;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/internal/http/HttpCodec;Lio/intercom/okhttp3/internal/connection/RealConnection;)Lio/intercom/okhttp3/Response;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
