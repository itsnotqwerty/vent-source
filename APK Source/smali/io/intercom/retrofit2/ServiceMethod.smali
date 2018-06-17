.class final Lio/intercom/retrofit2/ServiceMethod;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/retrofit2/ServiceMethod$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final baseUrl:Lio/intercom/okhttp3/HttpUrl;

.field final callAdapter:Lio/intercom/retrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/CallAdapter",
            "<TR;TT;>;"
        }
    .end annotation
.end field

.field final callFactory:Lio/intercom/okhttp3/Call$Factory;

.field private final contentType:Lio/intercom/okhttp3/MediaType;

.field private final hasBody:Z

.field private final headers:Lio/intercom/okhttp3/Headers;

.field private final httpMethod:Ljava/lang/String;

.field private final isFormEncoded:Z

.field private final isMultipart:Z

.field private final parameterHandlers:[Lio/intercom/retrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/intercom/retrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation
.end field

.field private final relativeUrl:Ljava/lang/String;

.field private final responseConverter:Lio/intercom/retrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/Converter",
            "<",
            "Lio/intercom/okhttp3/ResponseBody;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/intercom/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/intercom/retrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lio/intercom/retrofit2/ServiceMethod$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/ServiceMethod$Builder",
            "<TR;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v0}, Lio/intercom/retrofit2/Retrofit;->callFactory()Lio/intercom/okhttp3/Call$Factory;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->callFactory:Lio/intercom/okhttp3/Call$Factory;

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->callAdapter:Lio/intercom/retrofit2/CallAdapter;

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->callAdapter:Lio/intercom/retrofit2/CallAdapter;

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v0}, Lio/intercom/retrofit2/Retrofit;->baseUrl()Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseConverter:Lio/intercom/retrofit2/Converter;

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->responseConverter:Lio/intercom/retrofit2/Converter;

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->httpMethod:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->relativeUrl:Ljava/lang/String;

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->headers:Lio/intercom/okhttp3/Headers;

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->headers:Lio/intercom/okhttp3/Headers;

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->contentType:Lio/intercom/okhttp3/MediaType;

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->contentType:Lio/intercom/okhttp3/MediaType;

    iget-boolean v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->hasBody:Z

    iput-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod;->hasBody:Z

    iget-boolean v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    iput-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod;->isFormEncoded:Z

    iget-boolean v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    iput-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod;->isMultipart:Z

    iget-object v0, p1, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterHandlers:[Lio/intercom/retrofit2/ParameterHandler;

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->parameterHandlers:[Lio/intercom/retrofit2/ParameterHandler;

    return-void
.end method

.method static boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Double;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Short;

    goto :goto_0
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/intercom/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method final varargs toRequest([Ljava/lang/Object;)Lio/intercom/okhttp3/Request;
    .locals 10
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    new-instance v0, Lio/intercom/retrofit2/RequestBuilder;

    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod;->httpMethod:Ljava/lang/String;

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod;->relativeUrl:Ljava/lang/String;

    iget-object v4, p0, Lio/intercom/retrofit2/ServiceMethod;->headers:Lio/intercom/okhttp3/Headers;

    iget-object v5, p0, Lio/intercom/retrofit2/ServiceMethod;->contentType:Lio/intercom/okhttp3/MediaType;

    iget-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod;->hasBody:Z

    iget-boolean v7, p0, Lio/intercom/retrofit2/ServiceMethod;->isFormEncoded:Z

    iget-boolean v8, p0, Lio/intercom/retrofit2/ServiceMethod;->isMultipart:Z

    invoke-direct/range {v0 .. v8}, Lio/intercom/retrofit2/RequestBuilder;-><init>(Ljava/lang/String;Lio/intercom/okhttp3/HttpUrl;Ljava/lang/String;Lio/intercom/okhttp3/Headers;Lio/intercom/okhttp3/MediaType;ZZZ)V

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod;->parameterHandlers:[Lio/intercom/retrofit2/ParameterHandler;

    if-eqz p1, :cond_0

    array-length v1, p1

    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Argument count ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") doesn\'t match expected count ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v9

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v9, v1, :cond_2

    aget-object v3, v2, v9

    aget-object v4, p1, v9

    invoke-virtual {v3, v0, v4}, Lio/intercom/retrofit2/ParameterHandler;->apply(Lio/intercom/retrofit2/RequestBuilder;Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lio/intercom/retrofit2/RequestBuilder;->build()Lio/intercom/okhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method final toResponse(Lio/intercom/okhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/okhttp3/ResponseBody;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod;->responseConverter:Lio/intercom/retrofit2/Converter;

    invoke-interface {v0, p1}, Lio/intercom/retrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
