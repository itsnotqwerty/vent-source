.class Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/ws/RealWebSocket;->connect(Lio/intercom/okhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

.field final synthetic val$pingIntervalMillis:I

.field final synthetic val$request:Lio/intercom/okhttp3/Request;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/ws/RealWebSocket;Lio/intercom/okhttp3/Request;I)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->val$request:Lio/intercom/okhttp3/Request;

    iput p3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->val$pingIntervalMillis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lio/intercom/okhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V

    return-void
.end method

.method public onResponse(Lio/intercom/okhttp3/Call;Lio/intercom/okhttp3/Response;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p2}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->checkResponse(Lio/intercom/okhttp3/Response;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lio/intercom/okhttp3/internal/Internal;->instance:Lio/intercom/okhttp3/internal/Internal;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/internal/Internal;->streamAllocation(Lio/intercom/okhttp3/Call;)Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection()Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    iget-object v2, v2, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->listener:Lio/intercom/okhttp3/WebSocketListener;

    iget-object v3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v2, v3, p2}, Lio/intercom/okhttp3/WebSocketListener;->onOpen(Lio/intercom/okhttp3/WebSocket;Lio/intercom/okhttp3/Response;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OkHttp WebSocket "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->val$request:Lio/intercom/okhttp3/Request;

    invoke-virtual {v3}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    iget v4, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->val$pingIntervalMillis:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5, v1}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;JLio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;)V

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->connection()Lio/intercom/okhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, v0, p2}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V

    invoke-static {p2}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lio/intercom/okhttp3/internal/ws/RealWebSocket$2;->this$0:Lio/intercom/okhttp3/internal/ws/RealWebSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/intercom/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lio/intercom/okhttp3/Response;)V

    goto :goto_0
.end method
