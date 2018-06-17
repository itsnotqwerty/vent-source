.class public Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

.field pushObserver:Lio/intercom/okhttp3/internal/http2/PushObserver;

.field sink:Lio/intercom/b/d;

.field socket:Ljava/net/Socket;

.field source:Lio/intercom/b/e;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

    sget-object v0, Lio/intercom/okhttp3/internal/http2/PushObserver;->CANCEL:Lio/intercom/okhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lio/intercom/okhttp3/internal/http2/PushObserver;

    iput-boolean p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    return-void
.end method


# virtual methods
.method public build()Lio/intercom/okhttp3/internal/http2/Http2Connection;
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/internal/http2/Http2Connection;-><init>(Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;)Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

    return-object p0
.end method

.method public pushObserver(Lio/intercom/okhttp3/internal/http2/PushObserver;)Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lio/intercom/okhttp3/internal/http2/PushObserver;

    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lio/intercom/b/l;->d(Ljava/net/Socket;)Lio/intercom/b/s;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v1

    invoke-static {p1}, Lio/intercom/b/l;->c(Ljava/net/Socket;)Lio/intercom/b/r;

    move-result-object v2

    invoke-static {v2}, Lio/intercom/b/l;->b(Lio/intercom/b/r;)Lio/intercom/b/d;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lio/intercom/b/e;Lio/intercom/b/d;)Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lio/intercom/b/e;Lio/intercom/b/d;)Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->source:Lio/intercom/b/e;

    iput-object p4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lio/intercom/b/d;

    return-object p0
.end method
