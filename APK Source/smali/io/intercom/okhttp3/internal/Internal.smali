.class public abstract Lio/intercom/okhttp3/internal/Internal;
.super Ljava/lang/Object;


# static fields
.field public static instance:Lio/intercom/okhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/OkHttpClient;

    invoke-direct {v0}, Lio/intercom/okhttp3/OkHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lio/intercom/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lio/intercom/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Lio/intercom/okhttp3/Response$Builder;)I
.end method

.method public abstract connectionBecameIdle(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/internal/connection/RealConnection;)Z
.end method

.method public abstract deduplicate(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
.end method

.method public abstract equalsNonHost(Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/Address;)Z
.end method

.method public abstract get(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/Address;Lio/intercom/okhttp3/internal/connection/StreamAllocation;Lio/intercom/okhttp3/Route;)Lio/intercom/okhttp3/internal/connection/RealConnection;
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract newWebSocketCall(Lio/intercom/okhttp3/OkHttpClient;Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Call;
.end method

.method public abstract put(Lio/intercom/okhttp3/ConnectionPool;Lio/intercom/okhttp3/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Lio/intercom/okhttp3/ConnectionPool;)Lio/intercom/okhttp3/internal/connection/RouteDatabase;
.end method

.method public abstract setCache(Lio/intercom/okhttp3/OkHttpClient$Builder;Lio/intercom/okhttp3/internal/cache/InternalCache;)V
.end method

.method public abstract streamAllocation(Lio/intercom/okhttp3/Call;)Lio/intercom/okhttp3/internal/connection/StreamAllocation;
.end method
