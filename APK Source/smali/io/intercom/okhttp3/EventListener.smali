.class public abstract Lio/intercom/okhttp3/EventListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lio/intercom/okhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/EventListener$1;

    invoke-direct {v0}, Lio/intercom/okhttp3/EventListener$1;-><init>()V

    sput-object v0, Lio/intercom/okhttp3/EventListener;->NONE:Lio/intercom/okhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lio/intercom/okhttp3/EventListener;)Lio/intercom/okhttp3/EventListener$Factory;
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/EventListener$2;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/EventListener$2;-><init>(Lio/intercom/okhttp3/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lio/intercom/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public callFailed(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public callStart(Lio/intercom/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public connectEnd(Lio/intercom/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lio/intercom/okhttp3/Protocol;)V
    .locals 0
    .param p3    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/intercom/okhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectFailed(Lio/intercom/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lio/intercom/okhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p3    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/intercom/okhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectStart(Lio/intercom/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    return-void
.end method

.method public connectionAcquired(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public connectionReleased(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public dnsEnd(Lio/intercom/okhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dnsStart(Lio/intercom/okhttp3/Call;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestBodyEnd(Lio/intercom/okhttp3/Call;J)V
    .locals 0

    return-void
.end method

.method public requestBodyStart(Lio/intercom/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public requestHeadersEnd(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Request;)V
    .locals 0

    return-void
.end method

.method public requestHeadersStart(Lio/intercom/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public responseBodyEnd(Lio/intercom/okhttp3/Call;J)V
    .locals 0

    return-void
.end method

.method public responseBodyStart(Lio/intercom/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public responseHeadersEnd(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V
    .locals 0

    return-void
.end method

.method public responseHeadersStart(Lio/intercom/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public secureConnectEnd(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Handshake;)V
    .locals 0
    .param p2    # Lio/intercom/okhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public secureConnectStart(Lio/intercom/okhttp3/Call;)V
    .locals 0

    return-void
.end method
