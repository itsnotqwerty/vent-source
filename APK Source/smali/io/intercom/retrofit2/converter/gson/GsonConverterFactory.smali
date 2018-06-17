.class public final Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;
.super Lio/intercom/retrofit2/Converter$Factory;


# instance fields
.field private final gson:Lio/intercom/a/b/a/e;


# direct methods
.method private constructor <init>(Lio/intercom/a/b/a/e;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/retrofit2/Converter$Factory;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;->gson:Lio/intercom/a/b/a/e;

    return-void
.end method

.method public static create()Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;
    .locals 1

    new-instance v0, Lio/intercom/a/b/a/e;

    invoke-direct {v0}, Lio/intercom/a/b/a/e;-><init>()V

    invoke-static {v0}, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;->create(Lio/intercom/a/b/a/e;)Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/intercom/a/b/a/e;)Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;

    invoke-direct {v0, p0}, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;-><init>(Lio/intercom/a/b/a/e;)V

    return-object v0
.end method


# virtual methods
.method public final requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lio/intercom/retrofit2/Retrofit;)Lio/intercom/retrofit2/Converter;
    .locals 3
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

    iget-object v0, p0, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;->gson:Lio/intercom/a/b/a/e;

    invoke-static {p1}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    new-instance v1, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;

    iget-object v2, p0, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;->gson:Lio/intercom/a/b/a/e;

    invoke-direct {v1, v2, v0}, Lio/intercom/retrofit2/converter/gson/GsonRequestBodyConverter;-><init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;)V

    return-object v1
.end method

.method public final responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lio/intercom/retrofit2/Retrofit;)Lio/intercom/retrofit2/Converter;
    .locals 3
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

    iget-object v0, p0, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;->gson:Lio/intercom/a/b/a/e;

    invoke-static {p1}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    new-instance v1, Lio/intercom/retrofit2/converter/gson/GsonResponseBodyConverter;

    iget-object v2, p0, Lio/intercom/retrofit2/converter/gson/GsonConverterFactory;->gson:Lio/intercom/a/b/a/e;

    invoke-direct {v1, v2, v0}, Lio/intercom/retrofit2/converter/gson/GsonResponseBodyConverter;-><init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;)V

    return-object v1
.end method
