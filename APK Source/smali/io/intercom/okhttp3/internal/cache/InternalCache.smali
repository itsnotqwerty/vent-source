.class public interface abstract Lio/intercom/okhttp3/internal/cache/InternalCache;
.super Ljava/lang/Object;


# virtual methods
.method public abstract get(Lio/intercom/okhttp3/Request;)Lio/intercom/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract put(Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/internal/cache/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Lio/intercom/okhttp3/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract trackConditionalCacheHit()V
.end method

.method public abstract trackResponse(Lio/intercom/okhttp3/internal/cache/CacheStrategy;)V
.end method

.method public abstract update(Lio/intercom/okhttp3/Response;Lio/intercom/okhttp3/Response;)V
.end method
