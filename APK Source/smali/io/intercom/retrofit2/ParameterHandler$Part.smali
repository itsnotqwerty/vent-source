.class final Lio/intercom/retrofit2/ParameterHandler$Part;
.super Lio/intercom/retrofit2/ParameterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/retrofit2/ParameterHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final converter:Lio/intercom/retrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/Converter",
            "<TT;",
            "Lio/intercom/okhttp3/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Lio/intercom/okhttp3/Headers;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/Headers;Lio/intercom/retrofit2/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/Headers;",
            "Lio/intercom/retrofit2/Converter",
            "<TT;",
            "Lio/intercom/okhttp3/RequestBody;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/retrofit2/ParameterHandler;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/ParameterHandler$Part;->headers:Lio/intercom/okhttp3/Headers;

    iput-object p2, p0, Lio/intercom/retrofit2/ParameterHandler$Part;->converter:Lio/intercom/retrofit2/Converter;

    return-void
.end method


# virtual methods
.method final apply(Lio/intercom/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/RequestBuilder;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/intercom/retrofit2/ParameterHandler$Part;->converter:Lio/intercom/retrofit2/Converter;

    invoke-interface {v0, p2}, Lio/intercom/retrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lio/intercom/retrofit2/ParameterHandler$Part;->headers:Lio/intercom/okhttp3/Headers;

    invoke-virtual {p1, v1, v0}, Lio/intercom/retrofit2/RequestBuilder;->addPart(Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/RequestBody;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to convert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to RequestBody"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
