.class public abstract Lio/intercom/okhttp3/ResponseBody;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/okhttp3/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .locals 2

    invoke-virtual {p0}, Lio/intercom/okhttp3/ResponseBody;->contentType()Lio/intercom/okhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lio/intercom/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lio/intercom/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/intercom/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public static create(Lio/intercom/okhttp3/MediaType;JLio/intercom/b/e;)Lio/intercom/okhttp3/ResponseBody;
    .locals 3
    .param p0    # Lio/intercom/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/intercom/okhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/intercom/okhttp3/ResponseBody$1;-><init>(Lio/intercom/okhttp3/MediaType;JLio/intercom/b/e;)V

    return-object v0
.end method

.method public static create(Lio/intercom/okhttp3/MediaType;Ljava/lang/String;)Lio/intercom/okhttp3/ResponseBody;
    .locals 4
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
    new-instance v1, Lio/intercom/b/c;

    invoke-direct {v1}, Lio/intercom/b/c;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Lio/intercom/b/c;->a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lio/intercom/b/c;

    move-result-object v0

    iget-wide v2, v0, Lio/intercom/b/c;->size:J

    invoke-static {p0, v2, v3, v0}, Lio/intercom/okhttp3/ResponseBody;->create(Lio/intercom/okhttp3/MediaType;JLio/intercom/b/e;)Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/intercom/okhttp3/MediaType;[B)Lio/intercom/okhttp3/ResponseBody;
    .locals 4
    .param p0    # Lio/intercom/okhttp3/MediaType;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lio/intercom/b/c;

    invoke-direct {v0}, Lio/intercom/b/c;-><init>()V

    invoke-virtual {v0, p1}, Lio/intercom/b/c;->F([B)Lio/intercom/b/c;

    move-result-object v0

    array-length v1, p1

    int-to-long v2, v1

    invoke-static {p0, v2, v3, v0}, Lio/intercom/okhttp3/ResponseBody;->create(Lio/intercom/okhttp3/MediaType;JLio/intercom/b/e;)Lio/intercom/okhttp3/ResponseBody;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v0

    invoke-interface {v0}, Lio/intercom/b/e;->Ks()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lio/intercom/b/e;->KA()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v2}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Length ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and stream length ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") disagree"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    return-object v3
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 3

    iget-object v0, p0, Lio/intercom/okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/intercom/okhttp3/ResponseBody$BomAwareReader;

    invoke-virtual {p0}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v1

    invoke-direct {p0}, Lio/intercom/okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/okhttp3/ResponseBody$BomAwareReader;-><init>(Lio/intercom/b/e;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lio/intercom/okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    goto :goto_0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lio/intercom/okhttp3/MediaType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract source()Lio/intercom/b/e;
.end method

.method public final string()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/okhttp3/ResponseBody;->source()Lio/intercom/b/e;

    move-result-object v1

    :try_start_0
    invoke-direct {p0}, Lio/intercom/okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v1, v0}, Lio/intercom/okhttp3/internal/Util;->bomAwareCharset(Lio/intercom/b/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/intercom/b/e;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lio/intercom/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
