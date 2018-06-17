.class final Lio/intercom/okhttp3/OkHttpClient$1;
.super Lio/intercom/okhttp3/internal/Internal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public final addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lio/intercom/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    return-void
.end method

.method public final addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lio/intercom/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    return-void
.end method

.method public final apply(Lio/intercom/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lio/intercom/okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public final code(Lio/intercom/okhttp3/Response$Builder;)I
    .locals 1

    iget v0, p1, Lio/intercom/okhttp3/Response$Builder;->code:I

    return v0
.end method

.method public final connectionBecameIdle(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/internal/connection/RealConnection;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lio/intercom/okhttp3/ConnectionPool;->connectionBecameIdle(Lio/intercom/okhttp3/internal/connection/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public final deduplicate(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lio/intercom/okhttp3/ConnectionPool;->deduplicate(Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final equalsNonHost(Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/Address;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lio/intercom/okhttp3/Address;->equalsNonHost(Lio/intercom/okhttp3/Address;)Z

    move-result v0

    return v0
.end method

.method public final get(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/Route;)Lio/intercom/okhttp3/internal/connection/RealConnection;
    .locals 1

    invoke-virtual {p1, p2, p3, p4}, Lio/intercom/okhttp3/ConnectionPool;->get(Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/Route;)Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public final getHttpUrlChecked(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/okhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public final newWebSocketCall(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Call;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lio/intercom/okhttp3/RealCall;->newRealCall(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;Z)Lio/intercom/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public final put(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/internal/connection/RealConnection;)V
    .locals 0

    invoke-virtual {p1, p2}, Lio/intercom/okhttp3/ConnectionPool;->put(Lio/intercom/okhttp3/internal/connection/RealConnection;)V

    return-void
.end method

.method public final routeDatabase(Lio/intercom/okhttp3/ConnectionPool;)Lio/intercom/okhttp3/internal/connection/RouteDatabase;
    .locals 1

    iget-object v0, p1, Lio/intercom/okhttp3/ConnectionPool;->routeDatabase:Lio/intercom/okhttp3/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public final setCache(Lio/intercom/okhttp3/OkHttpClient$Builder;Lio/intercom/okhttp3/internal/cache/InternalCache;)V
    .locals 0

    invoke-virtual {p1, p2}, Lio/intercom/okhttp3/OkHttpClient$Builder;->setInternalCache(Lio/intercom/okhttp3/internal/cache/InternalCache;)V

    return-void
.end method

.method public final streamAllocation(Lio/intercom/okhttp3/Call;)Lio/intercom/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    check-cast p1, Lio/intercom/okhttp3/RealCall;

    invoke-virtual {p1}, Lio/intercom/okhttp3/RealCall;->streamAllocation()Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method
