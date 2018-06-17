.class Lio/intercom/okhttp3/Cache$CacheResponseBody;
.super Lio/intercom/okhttp3/ResponseBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lio/intercom/b/e;

.field private final contentLength:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final snapshot:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lio/intercom/okhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->snapshot:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object p2, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lio/intercom/b/s;

    move-result-object v0

    new-instance v1, Lio/intercom/okhttp3/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lio/intercom/okhttp3/Cache$CacheResponseBody$1;-><init>(Lio/intercom/okhttp3/Cache$CacheResponseBody;Lio/intercom/b/s;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lio/intercom/b/l;->b(Lio/intercom/b/s;)Lio/intercom/b/e;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->bodySource:Lio/intercom/b/e;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 3

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public contentType()Lio/intercom/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public source()Lio/intercom/b/e;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody;->bodySource:Lio/intercom/b/e;

    return-object v0
.end method
