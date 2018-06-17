.class Lio/intercom/okhttp3/internal/http2/Http2Connection$3;
.super Lio/intercom/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/http2/Http2Connection;->writePingLater(ZIILio/intercom/okhttp3/internal/http2/Ping;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

.field final synthetic val$payload1:I

.field final synthetic val$payload2:I

.field final synthetic val$ping:Lio/intercom/okhttp3/internal/http2/Ping;

.field final synthetic val$reply:Z


# direct methods
.method varargs constructor <init>(Lio/intercom/okhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ZIILio/intercom/okhttp3/internal/http2/Ping;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iput-boolean p4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->val$reply:Z

    iput p5, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->val$payload1:I

    iput p6, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->val$payload2:I

    iput-object p7, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->val$ping:Lio/intercom/okhttp3/internal/http2/Ping;

    invoke-direct {p0, p2, p3}, Lio/intercom/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-boolean v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->val$reply:Z

    iget v2, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->val$payload1:I

    iget v3, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->val$payload2:I

    iget-object v4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$3;->val$ping:Lio/intercom/okhttp3/internal/http2/Ping;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writePing(ZIILio/intercom/okhttp3/internal/http2/Ping;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
