.class public abstract Lio/intercom/okhttp3/WebSocketListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lio/intercom/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClosing(Lio/intercom/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailure(Lio/intercom/okhttp3/WebSocket;Ljava/lang/Throwable;Lio/intercom/okhttp3/Response;)V
    .locals 0
    .param p3    # Lio/intercom/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onMessage(Lio/intercom/okhttp3/WebSocket;Lio/intercom/b/f;)V
    .locals 0

    return-void
.end method

.method public onMessage(Lio/intercom/okhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOpen(Lio/intercom/okhttp3/WebSocket;Lio/intercom/okhttp3/Response;)V
    .locals 0

    return-void
.end method
