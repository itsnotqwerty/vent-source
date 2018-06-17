.class Lio/intercom/retrofit2/Retrofit$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/retrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final platform:Lio/intercom/retrofit2/Platform;

.field final synthetic this$0:Lio/intercom/retrofit2/Retrofit;

.field final synthetic val$service:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lio/intercom/retrofit2/Retrofit;Ljava/lang/Class;)V
    .locals 1

    iput-object p1, p0, Lio/intercom/retrofit2/Retrofit$1;->this$0:Lio/intercom/retrofit2/Retrofit;

    iput-object p2, p0, Lio/intercom/retrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/intercom/retrofit2/Platform;->get()Lio/intercom/retrofit2/Platform;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/retrofit2/Retrofit$1;->platform:Lio/intercom/retrofit2/Platform;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$1;->platform:Lio/intercom/retrofit2/Platform;

    invoke-virtual {v0, p2}, Lio/intercom/retrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$1;->platform:Lio/intercom/retrofit2/Platform;

    iget-object v1, p0, Lio/intercom/retrofit2/Retrofit$1;->val$service:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Lio/intercom/retrofit2/Platform;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/retrofit2/Retrofit$1;->this$0:Lio/intercom/retrofit2/Retrofit;

    invoke-virtual {v0, p2}, Lio/intercom/retrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lio/intercom/retrofit2/ServiceMethod;

    move-result-object v0

    new-instance v1, Lio/intercom/retrofit2/OkHttpCall;

    invoke-direct {v1, v0, p3}, Lio/intercom/retrofit2/OkHttpCall;-><init>(Lio/intercom/retrofit2/ServiceMethod;[Ljava/lang/Object;)V

    iget-object v0, v0, Lio/intercom/retrofit2/ServiceMethod;->callAdapter:Lio/intercom/retrofit2/CallAdapter;

    invoke-interface {v0, v1}, Lio/intercom/retrofit2/CallAdapter;->adapt(Lio/intercom/retrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
