.class public final Lio/intercom/retrofit2/Retrofit$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/retrofit2/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/retrofit2/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Lio/intercom/okhttp3/HttpUrl;

.field private callFactory:Lio/intercom/okhttp3/Call$Factory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private callbackExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/retrofit2/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final platform:Lio/intercom/retrofit2/Platform;

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lio/intercom/retrofit2/Platform;->get()Lio/intercom/retrofit2/Platform;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/retrofit2/Retrofit$Builder;-><init>(Lio/intercom/retrofit2/Platform;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/retrofit2/Platform;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    iput-object p1, p0, Lio/intercom/retrofit2/Retrofit$Builder;->platform:Lio/intercom/retrofit2/Platform;

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v1, Lio/intercom/retrofit2/BuiltInConverters;

    invoke-direct {v1}, Lio/intercom/retrofit2/BuiltInConverters;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Lio/intercom/retrofit2/Retrofit;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-static {}, Lio/intercom/retrofit2/Platform;->get()Lio/intercom/retrofit2/Platform;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->platform:Lio/intercom/retrofit2/Platform;

    iget-object v0, p1, Lio/intercom/retrofit2/Retrofit;->callFactory:Lio/intercom/okhttp3/Call$Factory;

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->callFactory:Lio/intercom/okhttp3/Call$Factory;

    iget-object v0, p1, Lio/intercom/retrofit2/Retrofit;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    iget-object v1, p1, Lio/intercom/retrofit2/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    iget-object v1, p1, Lio/intercom/retrofit2/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    iget-object v1, p0, Lio/intercom/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p1, Lio/intercom/retrofit2/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v0, p1, Lio/intercom/retrofit2/Retrofit;->validateEagerly:Z

    iput-boolean v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->validateEagerly:Z

    return-void
.end method


# virtual methods
.method public final addCallAdapterFactory(Lio/intercom/retrofit2/CallAdapter$Factory;)Lio/intercom/retrofit2/Retrofit$Builder;
    .locals 2

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addConverterFactory(Lio/intercom/retrofit2/Converter$Factory;)Lio/intercom/retrofit2/Retrofit$Builder;
    .locals 2

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final baseUrl(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/retrofit2/Retrofit$Builder;
    .locals 3

    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lio/intercom/okhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "baseUrl must end in /: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/retrofit2/Retrofit$Builder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    return-object p0
.end method

.method public final baseUrl(Ljava/lang/String;)Lio/intercom/retrofit2/Retrofit$Builder;
    .locals 3

    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lio/intercom/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lio/intercom/retrofit2/Retrofit$Builder;->baseUrl(Lio/intercom/okhttp3/HttpUrl;)Lio/intercom/retrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/intercom/retrofit2/Retrofit;
    .locals 7

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base URL required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lio/intercom/retrofit2/Retrofit$Builder;->callFactory:Lio/intercom/okhttp3/Call$Factory;

    if-nez v1, :cond_1

    new-instance v1, Lio/intercom/okhttp3/OkHttpClient;

    invoke-direct {v1}, Lio/intercom/okhttp3/OkHttpClient;-><init>()V

    :cond_1
    iget-object v5, p0, Lio/intercom/retrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_2

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->platform:Lio/intercom/retrofit2/Platform;

    invoke-virtual {v0}, Lio/intercom/retrofit2/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->platform:Lio/intercom/retrofit2/Platform;

    invoke-virtual {v0, v5}, Lio/intercom/retrofit2/Platform;->defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lio/intercom/retrofit2/CallAdapter$Factory;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lio/intercom/retrofit2/Retrofit;

    iget-object v2, p0, Lio/intercom/retrofit2/Retrofit$Builder;->baseUrl:Lio/intercom/okhttp3/HttpUrl;

    iget-boolean v6, p0, Lio/intercom/retrofit2/Retrofit$Builder;->validateEagerly:Z

    invoke-direct/range {v0 .. v6}, Lio/intercom/retrofit2/Retrofit;-><init>(Lio/intercom/okhttp3/Call$Factory;Lio/intercom/okhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public final callFactory(Lio/intercom/okhttp3/Call$Factory;)Lio/intercom/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "factory == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/Call$Factory;

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->callFactory:Lio/intercom/okhttp3/Call$Factory;

    return-object p0
.end method

.method public final callbackExecutor(Ljava/util/concurrent/Executor;)Lio/intercom/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "executor == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final client(Lio/intercom/okhttp3/OkHttpClient;)Lio/intercom/retrofit2/Retrofit$Builder;
    .locals 1

    const-string v0, "client == null"

    invoke-static {p1, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/Call$Factory;

    invoke-virtual {p0, v0}, Lio/intercom/retrofit2/Retrofit$Builder;->callFactory(Lio/intercom/okhttp3/Call$Factory;)Lio/intercom/retrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final validateEagerly(Z)Lio/intercom/retrofit2/Retrofit$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/intercom/retrofit2/Retrofit$Builder;->validateEagerly:Z

    return-object p0
.end method
