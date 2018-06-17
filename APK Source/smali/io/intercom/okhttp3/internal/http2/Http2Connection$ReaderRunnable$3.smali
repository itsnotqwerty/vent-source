.class Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;
.super Lio/intercom/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lio/intercom/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field final synthetic val$peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;


# direct methods
.method varargs constructor <init>(Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lio/intercom/okhttp3/internal/http2/Settings;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iput-object p4, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-direct {p0, p2, p3}, Lio/intercom/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->this$1:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->writer:Lio/intercom/okhttp3/internal/http2/Http2Writer;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;->val$peerSettings:Lio/intercom/okhttp3/internal/http2/Settings;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/http2/Http2Writer;->applyAndAckSettings(Lio/intercom/okhttp3/internal/http2/Settings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
