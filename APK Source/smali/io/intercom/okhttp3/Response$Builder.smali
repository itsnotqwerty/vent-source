.class public Lio/intercom/okhttp3/Response$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lio/intercom/okhttp3/ResponseBody;

.field cacheResponse:Lio/intercom/okhttp3/Response;

.field code:I

.field handshake:Lio/intercom/okhttp3/Handshake;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field headers:Lio/intercom/okhttp3/Headers$Builder;

.field message:Ljava/lang/String;

.field networkResponse:Lio/intercom/okhttp3/Response;

.field priorResponse:Lio/intercom/okhttp3/Response;

.field protocol:Lio/intercom/okhttp3/Protocol;

.field receivedResponseAtMillis:J

.field request:Lio/intercom/okhttp3/Request;

.field sentRequestAtMillis:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/okhttp3/Response$Builder;->code:I

    new-instance v0, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lio/intercom/okhttp3/Response;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/okhttp3/Response$Builder;->code:I

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->request:Lio/intercom/okhttp3/Request;

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->request:Lio/intercom/okhttp3/Request;

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->protocol:Lio/intercom/okhttp3/Protocol;

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->protocol:Lio/intercom/okhttp3/Protocol;

    iget v0, p1, Lio/intercom/okhttp3/Response;->code:I

    iput v0, p0, Lio/intercom/okhttp3/Response$Builder;->code:I

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->message:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->message:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->handshake:Lio/intercom/okhttp3/Handshake;

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->handshake:Lio/intercom/okhttp3/Handshake;

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->headers:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Headers;->newBuilder()Lio/intercom/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->body:Lio/intercom/okhttp3/ResponseBody;

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->networkResponse:Lio/intercom/okhttp3/Response;

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->networkResponse:Lio/intercom/okhttp3/Response;

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->cacheResponse:Lio/intercom/okhttp3/Response;

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->cacheResponse:Lio/intercom/okhttp3/Response;

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->priorResponse:Lio/intercom/okhttp3/Response;

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->priorResponse:Lio/intercom/okhttp3/Response;

    iget-wide v0, p1, Lio/intercom/okhttp3/Response;->sentRequestAtMillis:J

    iput-wide v0, p0, Lio/intercom/okhttp3/Response$Builder;->sentRequestAtMillis:J

    iget-wide v0, p1, Lio/intercom/okhttp3/Response;->receivedResponseAtMillis:J

    iput-wide v0, p0, Lio/intercom/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-void
.end method

.method private checkPriorResponse(Lio/intercom/okhttp3/Response;)V
    .locals 2

    iget-object v0, p1, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkSupportResponse(Ljava/lang/String;Lio/intercom/okhttp3/Response;)V
    .locals 3

    iget-object v0, p2, Lio/intercom/okhttp3/Response;->body:Lio/intercom/okhttp3/ResponseBody;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p2, Lio/intercom/okhttp3/Response;->networkResponse:Lio/intercom/okhttp3/Response;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p2, Lio/intercom/okhttp3/Response;->cacheResponse:Lio/intercom/okhttp3/Response;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p2, Lio/intercom/okhttp3/Response;->priorResponse:Lio/intercom/okhttp3/Response;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public body(Lio/intercom/okhttp3/ResponseBody;)Lio/intercom/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lio/intercom/okhttp3/ResponseBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/intercom/okhttp3/Response$Builder;->body:Lio/intercom/okhttp3/ResponseBody;

    return-object p0
.end method

.method public build()Lio/intercom/okhttp3/Response;
    .locals 3

    iget-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->request:Lio/intercom/okhttp3/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->protocol:Lio/intercom/okhttp3/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lio/intercom/okhttp3/Response$Builder;->code:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/okhttp3/Response$Builder;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->message:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lio/intercom/okhttp3/Response;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/Response;-><init>(Lio/intercom/okhttp3/Response$Builder;)V

    return-object v0
.end method

.method public cacheResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;
    .locals 1
    .param p1    # Lio/intercom/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lio/intercom/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lio/intercom/okhttp3/Response;)V

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/Response$Builder;->cacheResponse:Lio/intercom/okhttp3/Response;

    return-object p0
.end method

.method public code(I)Lio/intercom/okhttp3/Response$Builder;
    .locals 0

    iput p1, p0, Lio/intercom/okhttp3/Response$Builder;->code:I

    return-object p0
.end method

.method public handshake(Lio/intercom/okhttp3/Handshake;)Lio/intercom/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lio/intercom/okhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lio/intercom/okhttp3/Response$Builder;->handshake:Lio/intercom/okhttp3/Handshake;

    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Response$Builder;
    .locals 1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Headers;->newBuilder()Lio/intercom/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/Response$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public networkResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;
    .locals 1
    .param p1    # Lio/intercom/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lio/intercom/okhttp3/Response$Builder;->checkSupportResponse(Ljava/lang/String;Lio/intercom/okhttp3/Response;)V

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/Response$Builder;->networkResponse:Lio/intercom/okhttp3/Response;

    return-object p0
.end method

.method public priorResponse(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response$Builder;
    .locals 0
    .param p1    # Lio/intercom/okhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lio/intercom/okhttp3/Response$Builder;->checkPriorResponse(Lio/intercom/okhttp3/Response;)V

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/Response$Builder;->priorResponse:Lio/intercom/okhttp3/Response;

    return-object p0
.end method

.method public protocol(Lio/intercom/okhttp3/Protocol;)Lio/intercom/okhttp3/Response$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/Response$Builder;->protocol:Lio/intercom/okhttp3/Protocol;

    return-object p0
.end method

.method public receivedResponseAtMillis(J)Lio/intercom/okhttp3/Response$Builder;
    .locals 1

    iput-wide p1, p0, Lio/intercom/okhttp3/Response$Builder;->receivedResponseAtMillis:J

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Response$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/Response$Builder;->request:Lio/intercom/okhttp3/Request;

    return-object p0
.end method

.method public sentRequestAtMillis(J)Lio/intercom/okhttp3/Response$Builder;
    .locals 1

    iput-wide p1, p0, Lio/intercom/okhttp3/Response$Builder;->sentRequestAtMillis:J

    return-object p0
.end method
