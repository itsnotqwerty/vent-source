.class final Lio/intercom/retrofit2/DefaultCallAdapterFactory;
.super Lio/intercom/retrofit2/CallAdapter$Factory;


# static fields
.field static final INSTANCE:Lio/intercom/retrofit2/CallAdapter$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/retrofit2/DefaultCallAdapterFactory;

    invoke-direct {v0}, Lio/intercom/retrofit2/DefaultCallAdapterFactory;-><init>()V

    sput-object v0, Lio/intercom/retrofit2/DefaultCallAdapterFactory;->INSTANCE:Lio/intercom/retrofit2/CallAdapter$Factory;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/retrofit2/CallAdapter$Factory;-><init>()V

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

    invoke-static {p1}, Lio/intercom/retrofit2/DefaultCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/intercom/retrofit2/Call;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lio/intercom/retrofit2/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v0, Lio/intercom/retrofit2/DefaultCallAdapterFactory$1;

    invoke-direct {v0, p0, v1}, Lio/intercom/retrofit2/DefaultCallAdapterFactory$1;-><init>(Lio/intercom/retrofit2/DefaultCallAdapterFactory;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method
