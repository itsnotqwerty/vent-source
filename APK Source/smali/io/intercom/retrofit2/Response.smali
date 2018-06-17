.class public final Lio/intercom/retrofit2/Response;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final errorBody:Lio/intercom/okhttp3/ResponseBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final rawResponse:Lio/intercom/okhttp3/Response;


# direct methods
.method private constructor <init>(Lio/intercom/okhttp3/Response;Ljava/lang/Object;Lio/intercom/okhttp3/ResponseBody;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/intercom/okhttp3/ResponseBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/Response;",
            "TT;",
            "Lio/intercom/okhttp3/ResponseBody;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/Response;->rawResponse:Lio/intercom/okhttp3/Response;

    iput-object p2, p0, Lio/intercom/retrofit2/Response;->body:Ljava/lang/Object;

    iput-object p3, p0, Lio/intercom/retrofit2/Response;->errorBody:Lio/intercom/okhttp3/ResponseBody;

    return-void
.end method

.method public static error(ILio/intercom/okhttp3/ResponseBody;)Lio/intercom/retrofit2/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lio/intercom/okhttp3/ResponseBody;",
            ")",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    const/16 v0, 0x190

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 400: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/okhttp3/Response$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Response$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lio/intercom/okhttp3/Response$Builder;->code(I)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    const-string v1, "Response.error()"

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->protocol(Lio/intercom/okhttp3/Protocol;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lio/intercom/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Response;->error(Lio/intercom/okhttp3/ResponseBody;Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lio/intercom/okhttp3/ResponseBody;Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/okhttp3/ResponseBody;",
            "Lio/intercom/okhttp3/Response;",
            ")",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    invoke-static {p0, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse should not be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/retrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lio/intercom/retrofit2/Response;-><init>(Lio/intercom/okhttp3/Response;Ljava/lang/Object;Lio/intercom/okhttp3/ResponseBody;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lio/intercom/retrofit2/Response;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/okhttp3/Response$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Response$Builder;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->code(I)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->protocol(Lio/intercom/okhttp3/Protocol;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lio/intercom/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-static {p0, v0}, Lio/intercom/retrofit2/Response;->success(Ljava/lang/Object;Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lio/intercom/okhttp3/Headers;)Lio/intercom/retrofit2/Response;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/intercom/okhttp3/Headers;",
            ")",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "headers == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/intercom/okhttp3/Response$Builder;

    invoke-direct {v0}, Lio/intercom/okhttp3/Response$Builder;-><init>()V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->code(I)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->message(Ljava/lang/String;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    sget-object v1, Lio/intercom/okhttp3/Protocol;->HTTP_1_1:Lio/intercom/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->protocol(Lio/intercom/okhttp3/Protocol;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Response$Builder;->headers(Lio/intercom/okhttp3/Headers;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lio/intercom/okhttp3/Request$Builder;

    invoke-direct {v1}, Lio/intercom/okhttp3/Request$Builder;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {v1, v2}, Lio/intercom/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lio/intercom/okhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/intercom/okhttp3/Request$Builder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/Response$Builder;->request(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response$Builder;->build()Lio/intercom/okhttp3/Response;

    move-result-object v0

    invoke-static {p0, v0}, Lio/intercom/retrofit2/Response;->success(Ljava/lang/Object;Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/Object;Lio/intercom/okhttp3/Response;)Lio/intercom/retrofit2/Response;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/intercom/okhttp3/Response;",
            ")",
            "Lio/intercom/retrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lio/intercom/okhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rawResponse must be successful response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/retrofit2/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lio/intercom/retrofit2/Response;-><init>(Lio/intercom/okhttp3/Response;Ljava/lang/Object;Lio/intercom/okhttp3/ResponseBody;)V

    return-object v0
.end method


# virtual methods
.method public final body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public final code()I
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/Response;->rawResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public final errorBody()Lio/intercom/okhttp3/ResponseBody;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/Response;->errorBody:Lio/intercom/okhttp3/ResponseBody;

    return-object v0
.end method

.method public final headers()Lio/intercom/okhttp3/Headers;
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/Response;->rawResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->headers()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/Response;->rawResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method

.method public final message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/Response;->rawResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final raw()Lio/intercom/okhttp3/Response;
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/Response;->rawResponse:Lio/intercom/okhttp3/Response;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/Response;->rawResponse:Lio/intercom/okhttp3/Response;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
