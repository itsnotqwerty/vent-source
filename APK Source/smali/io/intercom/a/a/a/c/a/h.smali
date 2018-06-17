.class public final Lio/intercom/a/a/a/c/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/a/h$a;,
        Lio/intercom/a/a/a/c/a/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/b",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final cIo:Lio/intercom/a/a/a/c/a/h$b;


# instance fields
.field private bNE:Ljava/io/InputStream;

.field private final cIp:Lio/intercom/a/a/a/c/c/g;

.field private final cIq:Lio/intercom/a/a/a/c/a/h$b;

.field private cIr:Ljava/net/HttpURLConnection;

.field private volatile cIs:Z

.field private final cuw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/a/h$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/a/h$a;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/a/h;->cIo:Lio/intercom/a/a/a/c/a/h$b;

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/a/a/c/c/g;I)V
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/a/h;->cIo:Lio/intercom/a/a/a/c/a/h$b;

    invoke-direct {p0, p1, p2, v0}, Lio/intercom/a/a/a/c/a/h;-><init>(Lio/intercom/a/a/a/c/c/g;ILio/intercom/a/a/a/c/a/h$b;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/c/c/g;ILio/intercom/a/a/a/c/a/h$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/a/h;->cIp:Lio/intercom/a/a/a/c/c/g;

    iput p2, p0, Lio/intercom/a/a/a/c/a/h;->cuw:I

    iput-object p3, p0, Lio/intercom/a/a/a/c/a/h;->cIq:Lio/intercom/a/a/a/c/a/h$b;

    return-void
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x0

    move-object v2, p1

    :goto_0
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    new-instance v0, Lio/intercom/a/a/a/c/e;

    const-string v1, "Too many (> 5) redirects!"

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/e;

    const-string v1, "In re-direct loop"

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/e;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIq:Lio/intercom/a/a/a/c/a/h$b;

    invoke-interface {v0, v2}, Lio/intercom/a/a/a/c/a/h$b;->h(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    iget v1, p0, Lio/intercom/a/a/a/c/a/h;->cuw:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    iget v1, p0, Lio/intercom/a/a/a/c/a/h;->cuw:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/a/h;->bNE:Ljava/io/InputStream;

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/a/h;->cIs:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    div-int/lit8 v1, v0, 0x64

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lio/intercom/a/a/a/i/b;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/a/h;->bNE:Ljava/io/InputStream;

    :goto_3
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->bNE:Ljava/io/InputStream;

    goto :goto_2

    :cond_4
    const-string v1, "HttpUrlFetcher"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "HttpUrlFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got non empty content encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/a/h;->bNE:Ljava/io/InputStream;

    goto :goto_3

    :cond_6
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v6, :cond_8

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lio/intercom/a/a/a/c/e;

    const-string v1, "Received empty or null redirect url"

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/a/h;->cleanup()V

    add-int/lit8 p2, p2, 0x1

    move-object p3, v2

    move-object v2, p1

    goto/16 :goto_0

    :cond_8
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    new-instance v1, Lio/intercom/a/a/a/c/e;

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/c/e;-><init>(I)V

    throw v1

    :cond_9
    new-instance v1, Lio/intercom/a/a/a/c/e;

    iget-object v2, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/intercom/a/a/a/c/e;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method public final HT()Lio/intercom/a/a/a/c/a;
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/a;->cHD:Lio/intercom/a/a/a/c/a;

    return-object v0
.end method

.method public final HU()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g;",
            "Lio/intercom/a/a/a/c/a/b$a",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/i/d;->JQ()J

    move-result-wide v2

    :try_start_0
    iget-object v1, p0, Lio/intercom/a/a/a/c/a/h;->cIp:Lio/intercom/a/a/a/c/c/g;

    iget-object v0, v1, Lio/intercom/a/a/a/c/c/g;->cMJ:Ljava/net/URL;

    if-nez v0, :cond_2

    new-instance v4, Ljava/net/URL;

    iget-object v0, v1, Lio/intercom/a/a/a/c/c/g;->cMI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lio/intercom/a/a/a/c/c/g;->cMH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v1, Lio/intercom/a/a/a/c/c/g;->url:Ljava/net/URL;

    const-string v5, "Argument must not be null"

    invoke-static {v0, v5}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v5, "@#&=*+-_.,:!?()/~\'%;$"

    invoke-static {v0, v5}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/intercom/a/a/a/c/c/g;->cMI:Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Lio/intercom/a/a/a/c/c/g;->cMI:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lio/intercom/a/a/a/c/c/g;->cMJ:Ljava/net/URL;

    :cond_2
    iget-object v0, v1, Lio/intercom/a/a/a/c/c/g;->cMJ:Ljava/net/URL;

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lio/intercom/a/a/a/c/a/h;->cIp:Lio/intercom/a/a/a/c/c/g;

    iget-object v5, v5, Lio/intercom/a/a/a/c/c/g;->cMG:Lio/intercom/a/a/a/c/c/h;

    invoke-interface {v5}, Lio/intercom/a/a/a/c/c/h;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v0, v1, v4, v5}, Lio/intercom/a/a/a/c/a/h;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const-string v1, "HttpUrlFetcher"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HttpUrlFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finished http url fetcher fetch in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms and loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->as(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpUrlFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HttpUrlFetcher"

    const-string v2, "Failed to load data for url"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    invoke-interface {p2, v0}, Lio/intercom/a/a/a/c/a/b$a;->i(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/a/h;->cIs:Z

    return-void
.end method

.method public final cleanup()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->bNE:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->bNE:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/a/h;->cIr:Ljava/net/HttpURLConnection;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
