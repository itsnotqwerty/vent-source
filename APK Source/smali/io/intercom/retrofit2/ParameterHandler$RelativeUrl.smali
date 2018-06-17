.class final Lio/intercom/retrofit2/ParameterHandler$RelativeUrl;
.super Lio/intercom/retrofit2/ParameterHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/retrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RelativeUrl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/retrofit2/ParameterHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/intercom/retrofit2/ParameterHandler;-><init>()V

    return-void
.end method


# virtual methods
.method final apply(Lio/intercom/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "@Url parameter is null."

    invoke-static {p2, v0}, Lio/intercom/retrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/intercom/retrofit2/RequestBuilder;->setRelativeUrl(Ljava/lang/Object;)V

    return-void
.end method
