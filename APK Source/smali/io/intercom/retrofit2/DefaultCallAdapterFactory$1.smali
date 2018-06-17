.class Lio/intercom/retrofit2/DefaultCallAdapterFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/retrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/retrofit2/DefaultCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lio/intercom/retrofit2/Retrofit;)Lio/intercom/retrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/retrofit2/CallAdapter",
        "<",
        "Ljava/lang/Object;",
        "Lio/intercom/retrofit2/Call",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/retrofit2/DefaultCallAdapterFactory;

.field final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lio/intercom/retrofit2/DefaultCallAdapterFactory;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/retrofit2/DefaultCallAdapterFactory$1;->this$0:Lio/intercom/retrofit2/DefaultCallAdapterFactory;

    iput-object p2, p0, Lio/intercom/retrofit2/DefaultCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Lio/intercom/retrofit2/Call;)Lio/intercom/retrofit2/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/intercom/retrofit2/Call",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic adapt(Lio/intercom/retrofit2/Call;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lio/intercom/retrofit2/DefaultCallAdapterFactory$1;->adapt(Lio/intercom/retrofit2/Call;)Lio/intercom/retrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lio/intercom/retrofit2/DefaultCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
