.class Lio/intercom/okhttp3/Cache$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/okhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/okhttp3/Cache;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/Cache;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/Cache$1;->this$0:Lio/intercom/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$1;->this$0:Lio/intercom/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Cache;->get(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public put(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/internal/cache/CacheRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$1;->this$0:Lio/intercom/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Cache;->put(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/internal/cache/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lio/intercom/okhttp3/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$1;->this$0:Lio/intercom/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Cache;->remove(Lio/intercom/okhttp3/Request;)V

    return-void
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$1;->this$0:Lio/intercom/okhttp3/Cache;

    invoke-virtual {v0}, Lio/intercom/okhttp3/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method public trackResponse(Lio/intercom/okhttp3/internal/cache/CacheStrategy;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$1;->this$0:Lio/intercom/okhttp3/Cache;

    invoke-virtual {v0, p1}, Lio/intercom/okhttp3/Cache;->trackResponse(Lio/intercom/okhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method public update(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Response;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/Cache$1;->this$0:Lio/intercom/okhttp3/Cache;

    invoke-virtual {v0, p1, p2}, Lio/intercom/okhttp3/Cache;->update(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Response;)V

    return-void
.end method
