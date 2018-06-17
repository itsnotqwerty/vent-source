.class final Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;
.super Lio/intercom/okhttp3/ResponseBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/retrofit2/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingRequestBody"
.end annotation


# instance fields
.field private final delegate:Lio/intercom/okhttp3/ResponseBody;

.field thrownException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/ResponseBody;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/okhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lio/intercom/okhttp3/ResponseBody;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lio/intercom/okhttp3/ResponseBody;->close()V

    return-void
.end method

.method public final contentLength()J
    .locals 2

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lio/intercom/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lio/intercom/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lio/intercom/okhttp3/ResponseBody;->contentType()Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final source()Lio/intercom/b/e;
    .locals 2

    new-instance v0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;

    iget-object v1, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody$1;-><init>(Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;Lio/intercom/b/s;)V

    invoke-static {v0}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v0

    return-object v0
.end method

.method final throwIfCaught()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/retrofit2/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    throw v0

    :cond_0
    return-void
.end method
