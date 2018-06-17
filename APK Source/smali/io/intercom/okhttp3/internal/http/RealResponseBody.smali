.class public final Lio/intercom/okhttp3/internal/http/RealResponseBody;
.super Lio/intercom/okhttp3/ResponseBody;


# instance fields
.field private final contentLength:J

.field private final contentTypeString:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lio/intercom/b/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLio/intercom/b/e;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/intercom/okhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    iput-wide p2, p0, Lio/intercom/okhttp3/internal/http/RealResponseBody;->contentLength:J

    iput-object p4, p0, Lio/intercom/okhttp3/internal/http/RealResponseBody;->source:Lio/intercom/b/e;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/okhttp3/internal/http/RealResponseBody;->contentLength:J

    return-wide v0
.end method

.method public final contentType()Lio/intercom/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final source()Lio/intercom/b/e;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/http/RealResponseBody;->source:Lio/intercom/b/e;

    return-object v0
.end method
