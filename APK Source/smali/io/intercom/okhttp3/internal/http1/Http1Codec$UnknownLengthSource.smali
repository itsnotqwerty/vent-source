.class Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;
.super Lio/intercom/okhttp3/internal/http1/Http1Codec$AbstractSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnknownLengthSource"
.end annotation


# instance fields
.field private inputExhausted:Z

.field final synthetic this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->this$0:Lio/intercom/okhttp3/internal/http1/Http1Codec;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/intercom/okhttp3/internal/http1/Http1Codec$AbstractSource;-><init>(Lio/intercom/okhttp3/internal/http1/Http1Codec;Lio/intercom/okhttp3/internal/http1/Http1Codec$1;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->endOfInput(ZLjava/io/IOException;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lio/intercom/b/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->closed:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    if-eqz v2, :cond_2

    :goto_0
    return-wide v0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lio/intercom/okhttp3/internal/http1/Http1Codec$AbstractSource;->read(Lio/intercom/b/c;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    iput-boolean v5, p0, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->inputExhausted:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lio/intercom/okhttp3/internal/http1/Http1Codec$UnknownLengthSource;->endOfInput(ZLjava/io/IOException;)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method
