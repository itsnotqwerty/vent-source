.class interface abstract Lio/intercom/okhttp3/internal/http2/Http2Reader$Handler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Handler"
.end annotation


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Lio/intercom/b/f;Ljava/lang/String;IJ)V
.end method

.method public abstract data(ZILio/intercom/b/e;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract goAway(ILio/intercom/okhttp3/internal/http2/ErrorCode;Lio/intercom/b/f;)V
.end method

.method public abstract headers(ZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract rstStream(ILio/intercom/okhttp3/internal/http2/ErrorCode;)V
.end method

.method public abstract settings(ZLio/intercom/okhttp3/internal/http2/Settings;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
