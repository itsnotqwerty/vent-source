.class final Lio/intercom/retrofit2/ServiceMethod$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/retrofit2/ServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field callAdapter:Lio/intercom/retrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/CallAdapter",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field contentType:Lio/intercom/okhttp3/MediaType;

.field gotBody:Z

.field gotField:Z

.field gotPart:Z

.field gotPath:Z

.field gotQuery:Z

.field gotUrl:Z

.field hasBody:Z

.field headers:Lio/intercom/okhttp3/Headers;

.field httpMethod:Ljava/lang/String;

.field isFormEncoded:Z

.field isMultipart:Z

.field final method:Ljava/lang/reflect/Method;

.field final methodAnnotations:[Ljava/lang/annotation/Annotation;

.field final parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

.field parameterHandlers:[Lio/intercom/retrofit2/ParameterHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/intercom/retrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation
.end field

.field final parameterTypes:[Ljava/lang/reflect/Type;

.field relativeUrl:Ljava/lang/String;

.field relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field responseConverter:Lio/intercom/retrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/retrofit2/Converter",
            "<",
            "Lio/intercom/okhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field responseType:Ljava/lang/reflect/Type;

.field final retrofit:Lio/intercom/retrofit2/Retrofit;


# direct methods
.method constructor <init>(Lio/intercom/retrofit2/Retrofit;Ljava/lang/reflect/Method;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    iput-object p2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private createCallAdapter()Lio/intercom/retrofit2/CallAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/CallAdapter",
            "<TT;TR;>;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/retrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {p0, v0, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    const-string v0, "Service methods cannot return void."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v2, v1, v0}, Lio/intercom/retrofit2/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/CallAdapter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Unable to create call adapter for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-direct {p0, v0, v2, v3}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private createResponseConverter()Lio/intercom/retrofit2/Converter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/Converter",
            "<",
            "Lio/intercom/okhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Lio/intercom/retrofit2/Retrofit;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to create converter for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private varargs methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n    for method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private parseHeaders([Ljava/lang/String;)Lio/intercom/okhttp3/Headers;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Lio/intercom/okhttp3/Headers$Builder;

    invoke-direct {v2}, Lio/intercom/okhttp3/Headers$Builder;-><init>()V

    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v4, p1, v0

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    :cond_0
    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v0, "Malformed content type: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-direct {p0, v0, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    iput-object v5, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->contentType:Lio/intercom/okhttp3/MediaType;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v6, v4}, Lio/intercom/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lio/intercom/okhttp3/Headers$Builder;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lio/intercom/okhttp3/Headers$Builder;->build()Lio/intercom/okhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "Only one HTTP method is allowed. Found: %s and %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    iput-boolean p3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->hasBody:Z

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/intercom/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    iput-object p2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    invoke-static {p2}, Lio/intercom/retrofit2/ServiceMethod;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    goto :goto_0
.end method

.method private parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lio/intercom/retrofit2/http/DELETE;

    if-eqz v0, :cond_1

    const-string v0, "DELETE"

    check-cast p1, Lio/intercom/retrofit2/http/DELETE;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/DELETE;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lio/intercom/retrofit2/http/GET;

    if-eqz v0, :cond_2

    const-string v0, "GET"

    check-cast p1, Lio/intercom/retrofit2/http/GET;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/GET;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lio/intercom/retrofit2/http/HEAD;

    if-eqz v0, :cond_3

    const-string v0, "HEAD"

    check-cast p1, Lio/intercom/retrofit2/http/HEAD;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/HEAD;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD method must use Void as response type."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    instance-of v0, p1, Lio/intercom/retrofit2/http/PATCH;

    if-eqz v0, :cond_4

    const-string v0, "PATCH"

    check-cast p1, Lio/intercom/retrofit2/http/PATCH;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/PATCH;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lio/intercom/retrofit2/http/POST;

    if-eqz v0, :cond_5

    const-string v0, "POST"

    check-cast p1, Lio/intercom/retrofit2/http/POST;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/POST;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lio/intercom/retrofit2/http/PUT;

    if-eqz v0, :cond_6

    const-string v0, "PUT"

    check-cast p1, Lio/intercom/retrofit2/http/PUT;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/PUT;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lio/intercom/retrofit2/http/OPTIONS;

    if-eqz v0, :cond_7

    const-string v0, "OPTIONS"

    check-cast p1, Lio/intercom/retrofit2/http/OPTIONS;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/OPTIONS;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lio/intercom/retrofit2/http/HTTP;

    if-eqz v0, :cond_8

    check-cast p1, Lio/intercom/retrofit2/http/HTTP;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/HTTP;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/intercom/retrofit2/http/HTTP;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/intercom/retrofit2/http/HTTP;->hasBody()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, Lio/intercom/retrofit2/http/Headers;

    if-eqz v0, :cond_a

    check-cast p1, Lio/intercom/retrofit2/http/Headers;

    invoke-interface {p1}, Lio/intercom/retrofit2/http/Headers;->value()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_9

    const-string v0, "@Headers annotation is empty."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_9
    invoke-direct {p0, v0}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseHeaders([Ljava/lang/String;)Lio/intercom/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->headers:Lio/intercom/okhttp3/Headers;

    goto/16 :goto_0

    :cond_a
    instance-of v0, p1, Lio/intercom/retrofit2/http/Multipart;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_b

    const-string v0, "Only one encoding annotation is allowed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_b
    iput-boolean v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, Lio/intercom/retrofit2/http/FormUrlEncoded;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_d

    const-string v0, "Only one encoding annotation is allowed."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_d
    iput-boolean v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    goto/16 :goto_0
.end method

.method private parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/ParameterHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lio/intercom/retrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    array-length v4, p3

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, p3, v2

    invoke-direct {p0, p1, p2, p3, v0}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    move-object v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string v0, "No Retrofit annotation found."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    return-object v1
.end method

.method private parseParameterAnnotation(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/ParameterHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lio/intercom/retrofit2/ParameterHandler",
            "<*>;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    instance-of v0, p4, Lio/intercom/retrofit2/http/Url;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-eqz v0, :cond_0

    const-string v0, "Multiple @Url method annotations found."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotPath:Z

    if-eqz v0, :cond_1

    const-string v0, "@Path parameters may not be used with @Url."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-eqz v0, :cond_2

    const-string v0, "A @Url parameter must not come after a @Query"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "@Url cannot be used with @%s URL"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    const-class v0, Lio/intercom/okhttp3/HttpUrl;

    if-eq p2, v0, :cond_4

    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_4

    const-class v0, Ljava/net/URI;

    if-eq p2, v0, :cond_4

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_5

    const-string v0, "android.net.Uri"

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$RelativeUrl;

    invoke-direct {v0}, Lio/intercom/retrofit2/ParameterHandler$RelativeUrl;-><init>()V

    :goto_0
    return-object v0

    :cond_5
    const-string v0, "@Url must be okhttp3.HttpUrl, String, java.net.URI, or android.net.Uri type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6
    instance-of v0, p4, Lio/intercom/retrofit2/http/Path;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    if-eqz v0, :cond_7

    const-string v0, "A @Path parameter must not come after a @Query."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-eqz v0, :cond_8

    const-string v0, "@Path parameters may not be used with @Url."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "@Path can only be used with relative url on @%s"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_9
    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotPath:Z

    check-cast p4, Lio/intercom/retrofit2/http/Path;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Path;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->validatePathName(ILjava/lang/String;)V

    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v2

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$Path;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Path;->encoded()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/retrofit2/ParameterHandler$Path;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;Z)V

    goto :goto_0

    :cond_a
    instance-of v0, p4, Lio/intercom/retrofit2/http/Query;

    if-eqz v0, :cond_e

    check-cast p4, Lio/intercom/retrofit2/http/Query;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Query;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Query;->encoded()Z

    move-result v2

    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    const-class v3, Ljava/lang/Iterable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c

    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_b
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v3, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v3, Lio/intercom/retrofit2/ParameterHandler$Query;

    invoke-direct {v3, v1, v0, v2}, Lio/intercom/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;Z)V

    invoke-virtual {v3}, Lio/intercom/retrofit2/ParameterHandler$Query;->iterable()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v3, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v3, Lio/intercom/retrofit2/ParameterHandler$Query;

    invoke-direct {v3, v1, v0, v2}, Lio/intercom/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;Z)V

    invoke-virtual {v3}, Lio/intercom/retrofit2/ParameterHandler$Query;->array()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v3

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$Query;

    invoke-direct {v0, v1, v3, v2}, Lio/intercom/retrofit2/ParameterHandler$Query;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;Z)V

    goto/16 :goto_0

    :cond_e
    instance-of v0, p4, Lio/intercom/retrofit2/http/QueryName;

    if-eqz v0, :cond_12

    check-cast p4, Lio/intercom/retrofit2/http/QueryName;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/QueryName;->encoded()Z

    move-result v1

    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotQuery:Z

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_f
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v2, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v2, Lio/intercom/retrofit2/ParameterHandler$QueryName;

    invoke-direct {v2, v0, v1}, Lio/intercom/retrofit2/ParameterHandler$QueryName;-><init>(Lio/intercom/retrofit2/Converter;Z)V

    invoke-virtual {v2}, Lio/intercom/retrofit2/ParameterHandler$QueryName;->iterable()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v2, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v2, Lio/intercom/retrofit2/ParameterHandler$QueryName;

    invoke-direct {v2, v0, v1}, Lio/intercom/retrofit2/ParameterHandler$QueryName;-><init>(Lio/intercom/retrofit2/Converter;Z)V

    invoke-virtual {v2}, Lio/intercom/retrofit2/ParameterHandler$QueryName;->array()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v2

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$QueryName;

    invoke-direct {v0, v2, v1}, Lio/intercom/retrofit2/ParameterHandler$QueryName;-><init>(Lio/intercom/retrofit2/Converter;Z)V

    goto/16 :goto_0

    :cond_12
    instance-of v0, p4, Lio/intercom/retrofit2/http/QueryMap;

    if-eqz v0, :cond_16

    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v0, "@QueryMap parameter type must be Map."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_13
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lio/intercom/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_14

    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_14
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v0}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@QueryMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_15
    invoke-static {v6, v0}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v1, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v1

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$QueryMap;

    check-cast p4, Lio/intercom/retrofit2/http/QueryMap;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/QueryMap;->encoded()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/intercom/retrofit2/ParameterHandler$QueryMap;-><init>(Lio/intercom/retrofit2/Converter;Z)V

    goto/16 :goto_0

    :cond_16
    instance-of v0, p4, Lio/intercom/retrofit2/http/Header;

    if-eqz v0, :cond_1a

    check-cast p4, Lio/intercom/retrofit2/http/Header;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Header;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_18

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_17
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v2, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v2, Lio/intercom/retrofit2/ParameterHandler$Header;

    invoke-direct {v2, v1, v0}, Lio/intercom/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;)V

    invoke-virtual {v2}, Lio/intercom/retrofit2/ParameterHandler$Header;->iterable()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v2, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v2, Lio/intercom/retrofit2/ParameterHandler$Header;

    invoke-direct {v2, v1, v0}, Lio/intercom/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;)V

    invoke-virtual {v2}, Lio/intercom/retrofit2/ParameterHandler$Header;->array()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v2

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$Header;

    invoke-direct {v0, v1, v2}, Lio/intercom/retrofit2/ParameterHandler$Header;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;)V

    goto/16 :goto_0

    :cond_1a
    instance-of v0, p4, Lio/intercom/retrofit2/http/HeaderMap;

    if-eqz v0, :cond_1e

    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v0, "@HeaderMap parameter type must be Map."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1b
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lio/intercom/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1c

    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1c
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v0}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@HeaderMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static {v6, v0}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v1, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v1

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$HeaderMap;

    invoke-direct {v0, v1}, Lio/intercom/retrofit2/ParameterHandler$HeaderMap;-><init>(Lio/intercom/retrofit2/Converter;)V

    goto/16 :goto_0

    :cond_1e
    instance-of v0, p4, Lio/intercom/retrofit2/http/Field;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_1f

    const-string v0, "@Field parameters can only be used with form encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1f
    check-cast p4, Lio/intercom/retrofit2/http/Field;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Field;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Field;->encoded()Z

    move-result v2

    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotField:Z

    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Iterable;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_21

    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_20
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v3, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v3, Lio/intercom/retrofit2/ParameterHandler$Field;

    invoke-direct {v3, v1, v0, v2}, Lio/intercom/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;Z)V

    invoke-virtual {v3}, Lio/intercom/retrofit2/ParameterHandler$Field;->iterable()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v3, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v3, Lio/intercom/retrofit2/ParameterHandler$Field;

    invoke-direct {v3, v1, v0, v2}, Lio/intercom/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;Z)V

    invoke-virtual {v3}, Lio/intercom/retrofit2/ParameterHandler$Field;->array()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_22
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v0, p2, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v3

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$Field;

    invoke-direct {v0, v1, v3, v2}, Lio/intercom/retrofit2/ParameterHandler$Field;-><init>(Ljava/lang/String;Lio/intercom/retrofit2/Converter;Z)V

    goto/16 :goto_0

    :cond_23
    instance-of v0, p4, Lio/intercom/retrofit2/http/FieldMap;

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_24

    const-string v0, "@FieldMap parameters can only be used with form encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_24
    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v0, "@FieldMap parameter type must be Map."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_25
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lio/intercom/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_26

    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_26
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v0}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@FieldMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_27
    invoke-static {v6, v0}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v1, v0, p3}, Lio/intercom/retrofit2/Retrofit;->stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v1

    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotField:Z

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$FieldMap;

    check-cast p4, Lio/intercom/retrofit2/http/FieldMap;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/FieldMap;->encoded()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/intercom/retrofit2/ParameterHandler$FieldMap;-><init>(Lio/intercom/retrofit2/Converter;Z)V

    goto/16 :goto_0

    :cond_28
    instance-of v0, p4, Lio/intercom/retrofit2/http/Part;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_29

    const-string v0, "@Part parameters can only be used with multipart encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_29
    check-cast p4, Lio/intercom/retrofit2/http/Part;

    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotPart:Z

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Part;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_30

    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2c

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2a
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lio/intercom/okhttp3/MultipartBody$Part;

    invoke-static {v0}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2b
    sget-object v0, Lio/intercom/retrofit2/ParameterHandler$RawPart;->INSTANCE:Lio/intercom/retrofit2/ParameterHandler$RawPart;

    invoke-virtual {v0}, Lio/intercom/retrofit2/ParameterHandler$RawPart;->iterable()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_2c
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/intercom/okhttp3/MultipartBody$Part;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2d
    sget-object v0, Lio/intercom/retrofit2/ParameterHandler$RawPart;->INSTANCE:Lio/intercom/retrofit2/ParameterHandler$RawPart;

    invoke-virtual {v0}, Lio/intercom/retrofit2/ParameterHandler$RawPart;->array()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_2e
    const-class v0, Lio/intercom/okhttp3/MultipartBody$Part;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lio/intercom/retrofit2/ParameterHandler$RawPart;->INSTANCE:Lio/intercom/retrofit2/ParameterHandler$RawPart;

    goto/16 :goto_0

    :cond_2f
    const-string v0, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_30
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Content-Disposition"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "form-data; name=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v3, "Content-Transfer-Encoding"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-interface {p4}, Lio/intercom/retrofit2/http/Part;->encoding()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lio/intercom/okhttp3/Headers;->of([Ljava/lang/String;)Lio/intercom/okhttp3/Headers;

    move-result-object v2

    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_33

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must include generic type (e.g., "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<String>)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_31
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, p2}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lio/intercom/okhttp3/MultipartBody$Part;

    invoke-static {v0}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v0, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_32
    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, v0, p3, v3}, Lio/intercom/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v1, Lio/intercom/retrofit2/ParameterHandler$Part;

    invoke-direct {v1, v2, v0}, Lio/intercom/retrofit2/ParameterHandler$Part;-><init>(Lio/intercom/okhttp3/Headers;Lio/intercom/retrofit2/Converter;)V

    invoke-virtual {v1}, Lio/intercom/retrofit2/ParameterHandler$Part;->iterable()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_33
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/retrofit2/ServiceMethod;->boxIfPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/intercom/okhttp3/MultipartBody$Part;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v0, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_34
    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, v0, p3, v3}, Lio/intercom/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v0

    new-instance v1, Lio/intercom/retrofit2/ParameterHandler$Part;

    invoke-direct {v1, v2, v0}, Lio/intercom/retrofit2/ParameterHandler$Part;-><init>(Lio/intercom/okhttp3/Headers;Lio/intercom/retrofit2/Converter;)V

    invoke-virtual {v1}, Lio/intercom/retrofit2/ParameterHandler$Part;->array()Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v0

    goto/16 :goto_0

    :cond_35
    const-class v0, Lio/intercom/okhttp3/MultipartBody$Part;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_36
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lio/intercom/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v1

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$Part;

    invoke-direct {v0, v2, v1}, Lio/intercom/retrofit2/ParameterHandler$Part;-><init>(Lio/intercom/okhttp3/Headers;Lio/intercom/retrofit2/Converter;)V

    goto/16 :goto_0

    :cond_37
    instance-of v0, p4, Lio/intercom/retrofit2/http/PartMap;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_38

    const-string v0, "@PartMap parameters can only be used with multipart encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_38
    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotPart:Z

    invoke-static {p2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v0, "@PartMap parameter type must be Map."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_39
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lio/intercom/retrofit2/Utils;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_3a

    const-string v0, "Map must include generic types (e.g., Map<String, String>)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3a
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v5, v0}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "@PartMap keys must be of type String: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3b
    invoke-static {v6, v0}, Lio/intercom/retrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lio/intercom/okhttp3/MultipartBody$Part;

    invoke-static {v0}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const-string v0, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3c
    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v1, v0, p3, v2}, Lio/intercom/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;

    move-result-object v1

    check-cast p4, Lio/intercom/retrofit2/http/PartMap;

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$PartMap;

    invoke-interface {p4}, Lio/intercom/retrofit2/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/retrofit2/ParameterHandler$PartMap;-><init>(Lio/intercom/retrofit2/Converter;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3d
    instance-of v0, p4, Lio/intercom/retrofit2/http/Body;

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_3f

    :cond_3e
    const-string v0, "@Body parameters cannot be used with form or multi-part encoding."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3f
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotBody:Z

    if-eqz v0, :cond_40

    const-string v0, "Multiple @Body method annotations found."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_40
    :try_start_0
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->retrofit:Lio/intercom/retrofit2/Retrofit;

    iget-object v1, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, p2, p3, v1}, Lio/intercom/retrofit2/Retrofit;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/Converter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iput-boolean v6, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotBody:Z

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$Body;

    invoke-direct {v0, v1}, Lio/intercom/retrofit2/ParameterHandler$Body;-><init>(Lio/intercom/retrofit2/Converter;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to create @Body converter for %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-direct {p0, v0, p1, v1, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_41
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lio/intercom/retrofit2/ServiceMethod;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@Path parameter name must match %s. Found: %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lio/intercom/retrofit2/ServiceMethod;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/retrofit2/ServiceMethod;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lio/intercom/retrofit2/ServiceMethod$Builder;->createCallAdapter()Lio/intercom/retrofit2/CallAdapter;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->callAdapter:Lio/intercom/retrofit2/CallAdapter;

    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->callAdapter:Lio/intercom/retrofit2/CallAdapter;

    invoke-interface {v0}, Lio/intercom/retrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    const-class v2, Lio/intercom/retrofit2/Response;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    const-class v2, Lio/intercom/okhttp3/Response;

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    invoke-static {v2}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-direct {p0}, Lio/intercom/retrofit2/ServiceMethod$Builder;->createResponseConverter()Lio/intercom/retrofit2/Converter;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->responseConverter:Lio/intercom/retrofit2/Converter;

    iget-object v2, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodAnnotations:[Ljava/lang/annotation/Annotation;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseMethodAnnotation(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_3
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_4

    const-string v0, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_5

    const-string v0, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    array-length v2, v0

    new-array v0, v2, [Lio/intercom/retrofit2/ParameterHandler;

    iput-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterHandlers:[Lio/intercom/retrofit2/ParameterHandler;

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_8

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterTypes:[Ljava/lang/reflect/Type;

    aget-object v3, v3, v0

    invoke-static {v3}, Lio/intercom/retrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-direct {p0, v0, v2, v4}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v4, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterAnnotationsArray:[[Ljava/lang/annotation/Annotation;

    aget-object v4, v4, v0

    if-nez v4, :cond_7

    const-string v2, "No Retrofit annotation found."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    iget-object v5, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->parameterHandlers:[Lio/intercom/retrofit2/ParameterHandler;

    invoke-direct {p0, v0, v3, v4}, Lio/intercom/retrofit2/ServiceMethod$Builder;->parseParameter(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lio/intercom/retrofit2/ParameterHandler;

    move-result-object v3

    aput-object v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotUrl:Z

    if-nez v0, :cond_9

    const-string v0, "Missing either @%s URL or @Url parameter."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->httpMethod:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-direct {p0, v0, v2}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_9
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->hasBody:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotBody:Z

    if-eqz v0, :cond_a

    const-string v0, "Non-body HTTP method cannot contain @Body."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_a
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isFormEncoded:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotField:Z

    if-nez v0, :cond_b

    const-string v0, "Form-encoded method must contain at least one @Field."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_b
    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->isMultipart:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lio/intercom/retrofit2/ServiceMethod$Builder;->gotPart:Z

    if-nez v0, :cond_c

    const-string v0, "Multipart method must contain at least one @Part."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lio/intercom/retrofit2/ServiceMethod$Builder;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_c
    new-instance v0, Lio/intercom/retrofit2/ServiceMethod;

    invoke-direct {v0, p0}, Lio/intercom/retrofit2/ServiceMethod;-><init>(Lio/intercom/retrofit2/ServiceMethod$Builder;)V

    return-object v0
.end method
