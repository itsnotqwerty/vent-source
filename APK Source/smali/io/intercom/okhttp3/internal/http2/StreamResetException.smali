.class public final Lio/intercom/okhttp3/internal/http2/StreamResetException;
.super Ljava/io/IOException;


# instance fields
.field public final errorCode:Lio/intercom/okhttp3/internal/http2/ErrorCode;


# direct methods
.method public constructor <init>(Lio/intercom/okhttp3/internal/http2/ErrorCode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stream was reset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http2/StreamResetException;->errorCode:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    return-void
.end method