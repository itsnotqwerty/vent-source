.class public interface abstract Lio/intercom/okhttp3/internal/http/HttpCodec;
.super Ljava/lang/Object;


# static fields
.field public static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Lio/intercom/okhttp3/Request;J)Lio/intercom/b/r;
.end method

.method public abstract finishRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flushRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openResponseBody(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readResponseHeaders(Z)Lio/intercom/okhttp3/Response$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeRequestHeaders(Lio/intercom/okhttp3/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
