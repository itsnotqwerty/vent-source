.class public abstract Lio/intercom/okhttp3/RequestBody;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lio/intercom/okhttp3/MediaType;Lio/intercom/b/f;)Lio/intercom/okhttp3/RequestBody;
    .locals 1
    .param p0    # Lio/intercom/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lio/intercom/okhttp3/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lio/intercom/okhttp3/RequestBody$1;-><init>(Lio/intercom/okhttp3/MediaType;Lio/intercom/b/f;)V

    return-object v0
.end method

.method public static create(Lio/intercom/okhttp3/MediaType;Ljava/io/File;)Lio/intercom/okhttp3/RequestBody;
    .locals 2
    .param p0    # Lio/intercom/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/okhttp3/RequestBody$3;

    invoke-direct {v0, p0, p1}, Lio/intercom/okhttp3/RequestBody$3;-><init>(Lio/intercom/okhttp3/MediaType;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lio/intercom/okhttp3/MediaType;Ljava/lang/String;)Lio/intercom/okhttp3/RequestBody;
    .locals 3
    .param p0    # Lio/intercom/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lio/intercom/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/intercom/okhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/intercom/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/intercom/okhttp3/MediaType;->parse(Ljava/lang/String;)Lio/intercom/okhttp3/MediaType;

    move-result-object p0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lio/intercom/okhttp3/RequestBody;->create(Lio/intercom/okhttp3/MediaType;[B)Lio/intercom/okhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/intercom/okhttp3/MediaType;[B)Lio/intercom/okhttp3/RequestBody;
    .locals 2
    .param p0    # Lio/intercom/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lio/intercom/okhttp3/RequestBody;->create(Lio/intercom/okhttp3/MediaType;[BII)Lio/intercom/okhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/intercom/okhttp3/MediaType;[BII)Lio/intercom/okhttp3/RequestBody;
    .locals 6
    .param p0    # Lio/intercom/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lio/intercom/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    new-instance v0, Lio/intercom/okhttp3/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lio/intercom/okhttp3/RequestBody$2;-><init>(Lio/intercom/okhttp3/MediaType;I[BI)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lio/intercom/okhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeTo(Lio/intercom/b/d;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
