.class Lio/intercom/okhttp3/internal/connection/RealConnection$1;
.super Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lio/intercom/okhttp3/internal/connection/StreamAllocation;)Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/okhttp3/internal/connection/RealConnection;

.field final synthetic val$streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/connection/RealConnection;ZLio/intercom/b/e;Lio/intercom/b/d;Lio/intercom/okhttp3/internal/connection/StreamAllocation;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection$1;->this$0:Lio/intercom/okhttp3/internal/connection/RealConnection;

    iput-object p5, p0, Lio/intercom/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-direct {p0, p2, p3, p4}, Lio/intercom/okhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLio/intercom/b/e;Lio/intercom/b/d;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    const/4 v2, 0x1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/connection/RealConnection$1;->val$streamAllocation:Lio/intercom/okhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->codec()Lio/intercom/okhttp3/internal/http/HttpCodec;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lio/intercom/okhttp3/internal/connection/StreamAllocation;->streamFinished(ZLio/intercom/okhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    return-void
.end method
