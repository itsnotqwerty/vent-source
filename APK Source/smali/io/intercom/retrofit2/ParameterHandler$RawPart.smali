.class final Lio/intercom/retrofit2/ParameterHandler$RawPart;
.super Lio/intercom/retrofit2/ParameterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RawPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/retrofit2/ParameterHandler",
        "<",
        "Lio/intercom/okhttp3/MultipartBody$Part;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lio/intercom/retrofit2/ParameterHandler$RawPart;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$RawPart;

    invoke-direct {v0}, Lio/intercom/retrofit2/ParameterHandler$RawPart;-><init>()V

    sput-object v0, Lio/intercom/retrofit2/ParameterHandler$RawPart;->INSTANCE:Lio/intercom/retrofit2/ParameterHandler$RawPart;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/retrofit2/ParameterHandler;-><init>()V

    return-void
.end method


# virtual methods
.method final apply(Lio/intercom/retrofit2/RequestBuilder;Lio/intercom/okhttp3/MultipartBody$Part;)V
    .locals 0
    .param p2    # Lio/intercom/okhttp3/MultipartBody$Part;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lio/intercom/retrofit2/RequestBuilder;->addPart(Lio/intercom/okhttp3/MultipartBody$Part;)V

    :cond_0
    return-void
.end method

.method final bridge synthetic apply(Lio/intercom/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lio/intercom/okhttp3/MultipartBody$Part;

    invoke-virtual {p0, p1, p2}, Lio/intercom/retrofit2/ParameterHandler$RawPart;->apply(Lio/intercom/retrofit2/RequestBuilder;Lio/intercom/okhttp3/MultipartBody$Part;)V

    return-void
.end method
