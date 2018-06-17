.class Lio/intercom/okhttp3/Cache$CacheResponseBody$1;
.super Lio/intercom/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/Cache$CacheResponseBody;-><init>(Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/Cache$CacheResponseBody;Lio/intercom/b/s;Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody$1;->this$0:Lio/intercom/okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lio/intercom/b/h;-><init>(Lio/intercom/b/s;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lio/intercom/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    invoke-super {p0}, Lio/intercom/b/h;->close()V

    return-void
.end method
