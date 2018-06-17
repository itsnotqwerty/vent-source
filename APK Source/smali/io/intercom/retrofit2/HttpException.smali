.class public Lio/intercom/retrofit2/HttpException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final transient response:Lio/intercom/retrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/Response",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/intercom/retrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Response",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/retrofit2/HttpException;->getMessage(Lio/intercom/retrofit2/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/intercom/retrofit2/Response;->code()I

    move-result v0

    iput v0, p0, Lio/intercom/retrofit2/HttpException;->code:I

    invoke-virtual {p1}, Lio/intercom/retrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/HttpException;->message:Ljava/lang/String;

    iput-object p1, p0, Lio/intercom/retrofit2/HttpException;->response:Lio/intercom/retrofit2/Response;

    return-void
.end method

.method private static getMessage(Lio/intercom/retrofit2/Response;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Response",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "response == null"

    invoke-static {p0, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/intercom/retrofit2/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/intercom/retrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 1

    iget v0, p0, Lio/intercom/retrofit2/HttpException;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/HttpException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lio/intercom/retrofit2/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/Response",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/HttpException;->response:Lio/intercom/retrofit2/Response;

    return-object v0
.end method
