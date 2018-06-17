.class Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lio/intercom/okhttp3/internal/cache/CacheRequest;Lio/intercom/okhttp3/Response;)Lio/intercom/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lio/intercom/okhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lio/intercom/b/d;

.field final synthetic val$cacheRequest:Lio/intercom/okhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lio/intercom/b/e;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/internal/cache/CacheInterceptor;Lio/intercom/b/e;Lio/intercom/okhttp3/internal/cache/CacheRequest;Lio/intercom/b/d;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->this$0:Lio/intercom/okhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lio/intercom/b/e;

    iput-object p3, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lio/intercom/okhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lio/intercom/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lio/intercom/okhttp3/internal/Util;->discard(Lio/intercom/b/s;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lio/intercom/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lio/intercom/okhttp3/internal/cache/CacheRequest;->abort()V

    :cond_0
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lio/intercom/b/e;

    invoke-interface {v0}, Lio/intercom/b/e;->close()V

    return-void
.end method

.method public read(Lio/intercom/b/c;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    :try_start_0
    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lio/intercom/b/e;

    invoke-interface {v2, p1, p2, p3}, Lio/intercom/b/e;->read(Lio/intercom/b/c;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object v2, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lio/intercom/b/d;

    invoke-interface {v2}, Lio/intercom/b/d;->close()V

    :cond_0
    move-wide v4, v0

    :goto_0
    return-wide v4

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    iget-object v1, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lio/intercom/okhttp3/internal/cache/CacheRequest;

    invoke-interface {v1}, Lio/intercom/okhttp3/internal/cache/CacheRequest;->abort()V

    :cond_1
    throw v0

    :cond_2
    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->Kp()Lio/intercom/b/c;

    move-result-object v1

    iget-wide v2, p1, Lio/intercom/b/c;->size:J

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lio/intercom/b/c;->a(Lio/intercom/b/c;JJ)Lio/intercom/b/c;

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lio/intercom/b/d;

    invoke-interface {v0}, Lio/intercom/b/d;->KD()Lio/intercom/b/d;

    goto :goto_0
.end method

.method public timeout()Lio/intercom/b/t;
    .locals 1

    iget-object v0, p0, Lio/intercom/okhttp3/internal/cache/CacheInterceptor$1;->val$source:Lio/intercom/b/e;

    invoke-interface {v0}, Lio/intercom/b/e;->timeout()Lio/intercom/b/t;

    move-result-object v0

    return-object v0
.end method
