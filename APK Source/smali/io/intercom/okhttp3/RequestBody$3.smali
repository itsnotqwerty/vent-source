.class final Lio/intercom/okhttp3/RequestBody$3;
.super Lio/intercom/okhttp3/RequestBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/okhttp3/RequestBody;->create(Lio/intercom/okhttp3/MediaType;Ljava/io/File;)Lio/intercom/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Lio/intercom/okhttp3/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/intercom/okhttp3/MediaType;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/okhttp3/RequestBody$3;->val$contentType:Lio/intercom/okhttp3/MediaType;

    iput-object p2, p0, Lio/intercom/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lio/intercom/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget-object v0, p0, Lio/intercom/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lio/intercom/okhttp3/MediaType;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/intercom/okhttp3/RequestBody$3;->val$contentType:Lio/intercom/okhttp3/MediaType;

    return-object v0
.end method

.method public final writeTo(Lio/intercom/b/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/intercom/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Lio/intercom/b/l;->source(Ljava/io/File;)Lio/intercom/b/s;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/intercom/b/d;->a(Lio/intercom/b/s;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
