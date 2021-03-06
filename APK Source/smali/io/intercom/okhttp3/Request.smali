.class public final Lio/intercom/okhttp3/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field final body:Lio/intercom/okhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile cacheControl:Lio/intercom/okhttp3/CacheControl;

.field final headers:Lio/intercom/okhttp3/Headers;

.field final method:Ljava/lang/String;

.field final tag:Ljava/lang/Object;

.field final url:Lio/intercom/okhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/Request$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/okhttp3/Request$Builder;->url:Lio/intercom/okhttp3/HttpUrl;

    iput-object v0, p0, Lio/intercom/okhttp3/Request;->url:Lio/intercom/okhttp3/HttpUrl;

    iget-object v0, p1, Lio/intercom/okhttp3/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/okhttp3/Request;->method:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/okhttp3/Request$Builder;->headers:Lio/intercom/okhttp3/Headers$Builder;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Request;->headers:Lio/intercom/okhttp3/Headers;

    iget-object v0, p1, Lio/intercom/okhttp3/Request$Builder;->body:Lio/intercom/okhttp3/RequestBody;

    iput-object v0, p0, Lio/intercom/okhttp3/Request;->body:Lio/intercom/okhttp3/RequestBody;

    iget-object v0, p1, Lio/intercom/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/intercom/okhttp3/Request$Builder;->tag:Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Lio/intercom/okhttp3/Request;->tag:Ljava/lang/Object;

    return-void

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final body()Lio/intercom/okhttp3/RequestBody;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->body:Lio/intercom/okhttp3/RequestBody;

    return-object v0
.end method

.method public final cacheControl()Lio/intercom/okhttp3/CacheControl;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->cacheControl:Lio/intercom/okhttp3/CacheControl;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/Request;->headers:Lio/intercom/okhttp3/Headers;

    invoke-static {v0}, Lio/intercom/okhttp3/CacheControl;->parse(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Request;->cacheControl:Lio/intercom/okhttp3/CacheControl;

    goto :goto_0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->headers:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headers()Lio/intercom/okhttp3/Headers;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->headers:Lio/intercom/okhttp3/Headers;

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

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->headers:Lio/intercom/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isHttps()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->url:Lio/intercom/okhttp3/HttpUrl;

    invoke-virtual {v0}, Lio/intercom/okhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public final method()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final newBuilder()Lio/intercom/okhttp3/Request$Builder;
    .locals 1

    new-instance v0, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v0, p0}, Lio/intercom/okhttp3/Request$Builder;-><init>(Lio/intercom/okhttp3/Request;)V

    return-object v0
.end method

.method public final tag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/okhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/okhttp3/Request;->url:Lio/intercom/okhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->tag:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final url()Lio/intercom/okhttp3/HttpUrl;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Request;->url:Lio/intercom/okhttp3/HttpUrl;

    return-object v0
.end method
