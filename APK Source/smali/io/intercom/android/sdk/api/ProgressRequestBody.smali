.class Lio/intercom/android/sdk/api/ProgressRequestBody;
.super Lio/intercom/okhttp3/RequestBody;


# static fields
.field private static final SEGMENT_SIZE:I = 0x800


# instance fields
.field private final contentType:Lio/intercom/okhttp3/MediaType;

.field private final file:Ljava/io/File;

.field private final listener:Lio/intercom/android/sdk/conversation/UploadProgressListener;


# direct methods
.method public constructor <init>(Lio/intercom/okhttp3/MediaType;Ljava/io/File;Lio/intercom/android/sdk/conversation/UploadProgressListener;)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/okhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/api/ProgressRequestBody;->contentType:Lio/intercom/okhttp3/MediaType;

    iput-object p2, p0, Lio/intercom/android/sdk/api/ProgressRequestBody;->file:Ljava/io/File;

    iput-object p3, p0, Lio/intercom/android/sdk/api/ProgressRequestBody;->listener:Lio/intercom/android/sdk/conversation/UploadProgressListener;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/api/ProgressRequestBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lio/intercom/okhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/api/ProgressRequestBody;->contentType:Lio/intercom/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lio/intercom/b/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/intercom/android/sdk/api/ProgressRequestBody;->file:Ljava/io/File;

    invoke-static {v0}, Lio/intercom/b/l;->source(Ljava/io/File;)Lio/intercom/b/s;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lio/intercom/b/d;->Kp()Lio/intercom/b/c;

    move-result-object v0

    const-wide/16 v4, 0x800

    invoke-interface {v1, v0, v4, v5}, Lio/intercom/b/s;->read(Lio/intercom/b/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    add-long/2addr v2, v4

    invoke-interface {p1}, Lio/intercom/b/d;->flush()V

    iget-object v0, p0, Lio/intercom/android/sdk/api/ProgressRequestBody;->listener:Lio/intercom/android/sdk/conversation/UploadProgressListener;

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v2

    iget-object v6, p0, Lio/intercom/android/sdk/api/ProgressRequestBody;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    int-to-byte v4, v4

    invoke-interface {v0, v4}, Lio/intercom/android/sdk/conversation/UploadProgressListener;->uploadNotice(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
