.class Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;
.super Lio/intercom/okhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->settings(ZLio/intercom/okhttp3/internal/http2/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;


# direct methods
.method varargs constructor <init>(Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p0, p2, p3}, Lio/intercom/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lio/intercom/okhttp3/internal/http2/Http2Connection;->listener:Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;

    iget-object v1, p0, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;->this$1:Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object v1, v1, Lio/intercom/okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lio/intercom/okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;->onSettings(Lio/intercom/okhttp3/internal/http2/Http2Connection;)V

    return-void
.end method
