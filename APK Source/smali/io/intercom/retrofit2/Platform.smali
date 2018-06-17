.class Lio/intercom/retrofit2/Platform;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/retrofit2/Platform$Android;,
        Lio/intercom/retrofit2/Platform$Java8;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lio/intercom/retrofit2/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/retrofit2/Platform;->findPlatform()Lio/intercom/retrofit2/Platform;

    move-result-object v0

    sput-object v0, Lio/intercom/retrofit2/Platform;->PLATFORM:Lio/intercom/retrofit2/Platform;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPlatform()Lio/intercom/retrofit2/Platform;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    new-instance v0, Lio/intercom/retrofit2/Platform$Android;

    invoke-direct {v0}, Lio/intercom/retrofit2/Platform$Android;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    const-string v0, "java.util.Optional"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lio/intercom/retrofit2/Platform$Java8;

    invoke-direct {v0}, Lio/intercom/retrofit2/Platform$Java8;-><init>()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lio/intercom/retrofit2/Platform;

    invoke-direct {v0}, Lio/intercom/retrofit2/Platform;-><init>()V

    goto :goto_0
.end method

.method static get()Lio/intercom/retrofit2/Platform;
    .locals 1

    sget-object v0, Lio/intercom/retrofit2/Platform;->PLATFORM:Lio/intercom/retrofit2/Platform;

    return-object v0
.end method


# virtual methods
.method defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lio/intercom/retrofit2/CallAdapter$Factory;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance v0, Lio/intercom/retrofit2/ExecutorCallAdapterFactory;

    invoke-direct {v0, p1}, Lio/intercom/retrofit2/ExecutorCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/intercom/retrofit2/DefaultCallAdapterFactory;->INSTANCE:Lio/intercom/retrofit2/CallAdapter$Factory;

    goto :goto_0
.end method

.method defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method varargs invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p4    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method isDefaultMethod(Ljava/lang/reflect/Method;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
