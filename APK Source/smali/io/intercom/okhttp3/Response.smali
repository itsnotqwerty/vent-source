.class public final Lio/intercom/okhttp3/Response;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/Response$Builder;
    }
.end annotation


# instance fields
.field final body:Lio/intercom/okhttp3/ResponseBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile cacheControl:Lio/intercom/okhttp3/CacheControl;

.field final cacheResponse:Lio/intercom/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final code:I

.field final handshake:Lio/intercom/okhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final headers:Lio/intercom/okhttp3/Headers;

.field final message:Ljava/lang/String;

.field final networkResponse:Lio/intercom/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final priorResponse:Lio/intercom/okhttp3/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final protocol:Lio/intercom/okhttp3/Protocol;

.field final receivedResponseAtMillis:J

.field final request:Lio/intercom/okhttp3/Request;

.field final sentRequestAtMillis:J


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/Response$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->request:Lio/intercom/okhttp3/Request;

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->request:Lio/intercom/okhttp3/Request;

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->protocol:Lio/intercom/okhttp3/Protocol;

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->protocol:Lio/intercom/okhttp3/Protocol;

    iget v0, p1, Lio/intercom/okhttp3/Response$Builder;->code:I

    iput v0, p0, Lio/intercom/okhttp3/Response;->code:I

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->message:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->message:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->handshake:Lio/intercom/okhttp3/Handshake;

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->handshake:Lio/intercom/okhttp3/Handshake;

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->headers:Lio/intercom/okhttp3/Headers;

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->body:Lio/intercom/okhttp3/ResponseBody;

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->networkResponse:Lio/intercom/okhttp3/Response;

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->networkResponse:Lio/intercom/okhttp3/Response;

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->cacheResponse:Lio/intercom/okhttp3/Response;

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->cacheResponse:Lio/intercom/okhttp3/Response;

    iget-object v0, p1, Lio/intercom/okhttp3/Response$Builder;->priorResponse:Lio/intercom/okhttp3/Response;

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->priorResponse:Lio/intercom/okhttp3/Response;

    iget-wide v0, p1, Lio/intercom/okhttp3/Response$Builder;->sentRequestAtMillis:J

    iput-wide v0, p0, Lio/intercom/okhttp3/Response;->sentRequestAtMillis:J

    iget-wide v0, p1, Lio/intercom/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lio/intercom/okhttp3/Response;->receivedResponseAtMillis:J

    return-void
.end method


# virtual methods
.method public final body()Lio/intercom/okhttp3/ResponseBody;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    return-object v0
.end method

.method public final cacheControl()Lio/intercom/okhttp3/CacheControl;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->cacheControl:Lio/intercom/okhttp3/CacheControl;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/Response;->headers:Lio/intercom/okhttp3/Headers;

    invoke-static {v0}, Lio/intercom/okhttp3/CacheControl;->parse(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Response;->cacheControl:Lio/intercom/okhttp3/CacheControl;

    goto :goto_0
.end method

.method public final cacheResponse()Lio/intercom/okhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->cacheResponse:Lio/intercom/okhttp3/Response;

    return-object v0
.end method

.method public final challenges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lio/intercom/okhttp3/Response;->code:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    :goto_0
    invoke-virtual {p0}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v1

    invoke-static {v1, v0}, Lio/intercom/okhttp3/internal/http/HttpHeaders;->parseChallenges(Lio/intercom/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lio/intercom/okhttp3/Response;->code:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lio/intercom/okhttp3/ResponseBody;->close()V

    return-void
.end method

.method public final code()I
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/Response;->code:I

    return v0
.end method

.method public final handshake()Lio/intercom/okhttp3/Handshake;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->handshake:Lio/intercom/okhttp3/Handshake;

    return-object v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/intercom/okhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->headers:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public final headers()Lio/intercom/okhttp3/Headers;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->headers:Lio/intercom/okhttp3/Headers;

    return-object v0
.end method

.method public final headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->headers:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isRedirect()Z
    .locals 1

    iget v0, p0, Lio/intercom/okhttp3/Response;->code:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final isSuccessful()Z
    .locals 2

    iget v0, p0, Lio/intercom/okhttp3/Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lio/intercom/okhttp3/Response;->code:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final networkResponse()Lio/intercom/okhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->networkResponse:Lio/intercom/okhttp3/Response;

    return-object v0
.end method

.method public final newBuilder()Lio/intercom/okhttp3/Response$Builder;
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/Response$Builder;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/Response$Builder;-><init>(Lio/intercom/okhttp3/Response;)V

    return-object v0
.end method

.method public final peekBody(J)Lio/intercom/okhttp3/ResponseBody;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v0}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/intercom/b/e;->aa(J)Z

    invoke-interface {v0}, Lio/intercom/b/e;->Kp()Lio/intercom/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/b/c;->KC()Lio/intercom/b/c;

    move-result-object v1

    iget-wide v2, v1, Lio/intercom/b/c;->size:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    invoke-virtual {v0, v1, p1, p2}, Lio/intercom/b/c;->write(Lio/intercom/b/c;J)V

    invoke-virtual {v1}, Lio/intercom/b/c;->clear()V

    :goto_0
    iget-object v1, p0, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    invoke-virtual {v1}, Lio/intercom/okhttp3/ResponseBody;->contentType()Lio/intercom/okhttp3/MediaType;

    move-result-object v1

    iget-wide v2, v0, Lio/intercom/b/c;->size:J

    invoke-static {v1, v2, v3, v0}, Lio/intercom/okhttp3/ResponseBody;->create(Lio/intercom/okhttp3/MediaType;JLio/intercom/b/e;)Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final priorResponse()Lio/intercom/okhttp3/Response;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->priorResponse:Lio/intercom/okhttp3/Response;

    return-object v0
.end method

.method public final protocol()Lio/intercom/okhttp3/Protocol;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->protocol:Lio/intercom/okhttp3/Protocol;

    return-object v0
.end method

.method public final receivedResponseAtMillis()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/okhttp3/Response;->receivedResponseAtMillis:J

    return-wide v0
.end method

.method public final request()Lio/intercom/okhttp3/Request;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response;->request:Lio/intercom/okhttp3/Request;

    return-object v0
.end method

.method public final sentRequestAtMillis()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/okhttp3/Response;->sentRequestAtMillis:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/okhttp3/Response;->protocol:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/okhttp3/Response;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/Response;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/Response;->request:Lio/intercom/okhttp3/Request;

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request;->url()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
