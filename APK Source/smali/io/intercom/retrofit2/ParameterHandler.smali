.class abstract Lio/intercom/retrofit2/ParameterHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/retrofit2/ParameterHandler$Body;,
        Lio/intercom/retrofit2/ParameterHandler$PartMap;,
        Lio/intercom/retrofit2/ParameterHandler$RawPart;,
        Lio/intercom/retrofit2/ParameterHandler$Part;,
        Lio/intercom/retrofit2/ParameterHandler$FieldMap;,
        Lio/intercom/retrofit2/ParameterHandler$Field;,
        Lio/intercom/retrofit2/ParameterHandler$HeaderMap;,
        Lio/intercom/retrofit2/ParameterHandler$QueryMap;,
        Lio/intercom/retrofit2/ParameterHandler$QueryName;,
        Lio/intercom/retrofit2/ParameterHandler$Query;,
        Lio/intercom/retrofit2/ParameterHandler$Path;,
        Lio/intercom/retrofit2/ParameterHandler$Header;,
        Lio/intercom/retrofit2/ParameterHandler$RelativeUrl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract apply(Lio/intercom/retrofit2/RequestBuilder;Ljava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/retrofit2/RequestBuilder;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final array()Lio/intercom/retrofit2/ParameterHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/ParameterHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$2;

    invoke-direct {v0, p0}, Lio/intercom/retrofit2/ParameterHandler$2;-><init>(Lio/intercom/retrofit2/ParameterHandler;)V

    return-object v0
.end method

.method final iterable()Lio/intercom/retrofit2/ParameterHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/ParameterHandler",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/retrofit2/ParameterHandler$1;

    invoke-direct {v0, p0}, Lio/intercom/retrofit2/ParameterHandler$1;-><init>(Lio/intercom/retrofit2/ParameterHandler;)V

    return-object v0
.end method
