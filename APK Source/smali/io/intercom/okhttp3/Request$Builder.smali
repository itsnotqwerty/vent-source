.class public Lio/intercom/okhttp3/Request$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lio/intercom/okhttp3/RequestBody;

.field headers:Lio/intercom/okhttp3/Headers$Builder;

.field method:Ljava/lang/String;

.field tag:Ljava/lang/Object;

.field url:Lio/intercom/okhttp3/HttpUrl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->method:Ljava/lang/String;

    new-instance v0, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    return-void
.end method

.method constructor <init>(Lio/intercom/okhttp3/Request;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/okhttp3/Request;->url:Lio/intercom/okhttp3/HttpUrl;

    iput-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->url:Lio/intercom/okhttp3/HttpUrl;

    iget-object v0, p1, Lio/intercom/okhttp3/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->method:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/okhttp3/Request;->body:Lio/intercom/okhttp3/RequestBody;

    iput-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->body:Lio/intercom/okhttp3/RequestBody;

    iget-object v0, p1, Lio/intercom/okhttp3/Request;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    iget-object v0, p1, Lio/intercom/okhttp3/Request;->headers:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Headers;->newBuilder()Lio/intercom/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public build()Lio/intercom/okhttp3/Request;
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->url:Lio/intercom/okhttp3/HttpUrl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/okhttp3/Request;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/Request;-><init>(Lio/intercom/okhttp3/Request$Builder;)V

    return-object v0
.end method

.method public cacheControl(Lio/intercom/okhttp3/CacheControl;)Lio/intercom/okhttp3/Request$Builder;
    .locals 2

    invoke-virtual {p1}, Lio/intercom/okhttp3/CacheControl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lio/intercom/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public delete()Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    sget-object v0, Lio/intercom/okhttp3/internal/Util;->EMPTY_REQUEST:Lio/intercom/okhttp3/RequestBody;

    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Request$Builder;->delete(Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;
    .locals 1
    .param p1    # Lio/intercom/okhttp3/RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lio/intercom/okhttp3/Request$Builder;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lio/intercom/okhttp3/Request$Builder;
    .locals 2

    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    invoke-virtual {p1}, Lio/intercom/okhttp3/Headers;->newBuilder()Lio/intercom/okhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;
    .locals 3
    .param p2    # Lio/intercom/okhttp3/RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lio/intercom/okhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lio/intercom/okhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lio/intercom/okhttp3/Request$Builder;->method:Ljava/lang/String;

    iput-object p2, p0, Lio/intercom/okhttp3/Request$Builder;->body:Lio/intercom/okhttp3/RequestBody;

    return-object p0
.end method

.method public patch(Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lio/intercom/okhttp3/Request$Builder;->method(Ljava/lang/String;Lio/intercom/okhttp3/RequestBody;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lio/intercom/okhttp3/Request$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Request$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/okhttp3/Request$Builder;->url:Lio/intercom/okhttp3/HttpUrl;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lio/intercom/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Request$Builder;->url(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lio/intercom/okhttp3/Request$Builder;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lio/intercom/okhttp3/HttpUrl;->get(Ljava/net/URL;)Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Lio/intercom/okhttp3/Request$Builder;->url(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v0

    return-object v0
.end method
