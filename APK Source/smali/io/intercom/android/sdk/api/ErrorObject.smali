.class public Lio/intercom/android/sdk/api/ErrorObject;
.super Ljava/lang/Object;


# instance fields
.field private final errorBody:Ljava/lang/String;

.field private final statusCode:I

.field private final throwable:Ljava/lang/Throwable;

.field private final twig:Lio/intercom/android/sdk/twig/Twig;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;Lio/intercom/retrofit2/Response;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/api/ErrorObject;->twig:Lio/intercom/android/sdk/twig/Twig;

    iput-object p1, p0, Lio/intercom/android/sdk/api/ErrorObject;->throwable:Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lio/intercom/android/sdk/api/ErrorObject;->parseErrorBody(Lio/intercom/retrofit2/Response;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/android/sdk/api/ErrorObject;->errorBody:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/intercom/android/sdk/api/ErrorObject;->parseStatusCode(Lio/intercom/retrofit2/Response;)I

    move-result v0

    iput v0, p0, Lio/intercom/android/sdk/api/ErrorObject;->statusCode:I

    return-void
.end method

.method private parseErrorBody(Lio/intercom/retrofit2/Response;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/intercom/retrofit2/Response;->errorBody()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lio/intercom/retrofit2/Response;->errorBody()Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/okhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/android/sdk/api/ErrorObject;->twig:Lio/intercom/android/sdk/twig/Twig;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t parse error body: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/android/sdk/twig/Twig;->internal(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseStatusCode(Lio/intercom/retrofit2/Response;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/intercom/retrofit2/Response;->code()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method getErrorBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/ErrorObject;->errorBody:Ljava/lang/String;

    return-object v0
.end method

.method getStatusCode()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/api/ErrorObject;->statusCode:I

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/ErrorObject;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method hasErrorBody()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/ErrorObject;->errorBody:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
