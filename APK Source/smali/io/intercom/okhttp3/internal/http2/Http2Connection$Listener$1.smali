.class final Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener$1;
.super Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/okhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStream(Lio/intercom/okhttp3/internal/http2/Http2Stream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/internal/http2/Http2Stream;->close(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
