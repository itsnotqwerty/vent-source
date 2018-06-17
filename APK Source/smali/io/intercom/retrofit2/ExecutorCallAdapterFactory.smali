.class final Lio/intercom/retrofit2/ExecutorCallAdapterFactory;
.super Lio/intercom/retrofit2/CallAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/retrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;
    }
.end annotation


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/retrofit2/CallAdapter$Factory;-><init>()V

    iput-object p1, p0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lio/intercom/retrofit2/Retrofit;)Lio/intercom/retrofit2/CallAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lio/intercom/retrofit2/Retrofit;",
            ")",
            "Lio/intercom/retrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    invoke-static {p1}, Lio/intercom/retrofit2/ExecutorCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/intercom/retrofit2/Call;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lio/intercom/retrofit2/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$1;

    invoke-direct {v0, p0, v1}, Lio/intercom/retrofit2/ExecutorCallAdapterFactory$1;-><init>(Lio/intercom/retrofit2/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
