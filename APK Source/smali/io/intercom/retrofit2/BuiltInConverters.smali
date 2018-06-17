.class final Lio/intercom/retrofit2/BuiltInConverters;
.super Lio/intercom/retrofit2/Converter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/retrofit2/BuiltInConverters$ToStringConverter;,
        Lio/intercom/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;,
        Lio/intercom/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;,
        Lio/intercom/retrofit2/BuiltInConverters$RequestBodyConverter;,
        Lio/intercom/retrofit2/BuiltInConverters$VoidResponseBodyConverter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/retrofit2/Converter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lio/intercom/retrofit2/Retrofit;)Lio/intercom/retrofit2/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lio/intercom/retrofit2/Retrofit;",
            ")",
            "Lio/intercom/retrofit2/Converter",
            "<*",
            "Lio/intercom/okhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/intercom/okhttp3/RequestBody;

    invoke-static {p1}, Lio/intercom/retrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/retrofit2/BuiltInConverters$RequestBodyConverter;->INSTANCE:Lio/intercom/retrofit2/BuiltInConverters$RequestBodyConverter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lio/intercom/retrofit2/Retrofit;)Lio/intercom/retrofit2/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lio/intercom/retrofit2/Retrofit;",
            ")",
            "Lio/intercom/retrofit2/Converter",
            "<",
            "Lio/intercom/okhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    const-class v0, Lio/intercom/okhttp3/ResponseBody;

    if-ne p1, v0, :cond_1

    const-class v0, Lio/intercom/retrofit2/http/Streaming;

    invoke-static {p2, v0}, Lio/intercom/retrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;->INSTANCE:Lio/intercom/retrofit2/BuiltInConverters$StreamingResponseBodyConverter;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/intercom/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;->INSTANCE:Lio/intercom/retrofit2/BuiltInConverters$BufferingResponseBodyConverter;

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    sget-object v0, Lio/intercom/retrofit2/BuiltInConverters$VoidResponseBodyConverter;->INSTANCE:Lio/intercom/retrofit2/BuiltInConverters$VoidResponseBodyConverter;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
