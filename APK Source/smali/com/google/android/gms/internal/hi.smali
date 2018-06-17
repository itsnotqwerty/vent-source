.class final Lcom/google/android/gms/internal/hi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aTw:[B

.field private final aTx:Lcom/google/android/gms/internal/hg;

.field private final aTy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic aTz:Lcom/google/android/gms/internal/hf;

.field private final packageName:Ljava/lang/String;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hf;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/hg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/hg;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/hi;->url:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/internal/hi;->aTw:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/hi;->aTx:Lcom/google/android/gms/internal/hg;

    iput-object p2, p0, Lcom/google/android/gms/internal/hi;->packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/hi;->aTy:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qz()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to obtain HTTP connection"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v5

    move-object v1, v6

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v9

    new-instance v1, Lcom/google/android/gms/internal/hh;

    iget-object v2, p0, Lcom/google/android/gms/internal/hi;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/hi;->aTx:Lcom/google/android/gms/internal/hg;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/hh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/hg;ILjava/lang/Throwable;[BLjava/util/Map;B)V

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_2
    :try_start_2
    iget-object v1, v5, Lcom/google/android/gms/internal/hf;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_3

    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    iget-object v5, v5, Lcom/google/android/gms/internal/hf;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_3
    check-cast v2, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const v1, 0xea60

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v1, 0xee48

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTy:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTy:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v5

    move-object v1, v6

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTw:[B

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qL()Lcom/google/android/gms/internal/le;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/hi;->aTw:[B

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/le;->n([B)[B

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v5, "Uploading data. size"

    array-length v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "Content-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v2, v1, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v3

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    :try_start_4
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v1, 0x0

    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-static {v2}, Lcom/google/android/gms/internal/hf;->b(Ljava/net/HttpURLConnection;)[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v6

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v9

    new-instance v1, Lcom/google/android/gms/internal/hh;

    iget-object v2, p0, Lcom/google/android/gms/internal/hi;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/hi;->aTx:Lcom/google/android/gms/internal/hg;

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/hh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/hg;ILjava/lang/Throwable;[BLjava/util/Map;B)V

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    iget-object v3, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v6, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v8, p0, Lcom/google/android/gms/internal/hi;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v6, v8, v1}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v2, v3

    :goto_5
    if-eqz v6, :cond_6

    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v10

    new-instance v1, Lcom/google/android/gms/internal/hh;

    iget-object v2, p0, Lcom/google/android/gms/internal/hi;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/hi;->aTx:Lcom/google/android/gms/internal/hg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/hh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/hg;ILjava/lang/Throwable;[BLjava/util/Map;B)V

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    throw v9

    :catch_3
    move-exception v1

    iget-object v3, p0, Lcom/google/android/gms/internal/hi;->aTz:Lcom/google/android/gms/internal/hf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v5, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v6, p0, Lcom/google/android/gms/internal/hi;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/hb;->ck(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v1}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :catchall_1
    move-exception v1

    move-object v9, v1

    goto :goto_5

    :catchall_2
    move-exception v3

    move-object v9, v3

    move-object v6, v1

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v9, v3

    move-object v6, v1

    goto :goto_5

    :catch_4
    move-exception v5

    goto/16 :goto_0

    :cond_8
    move-object v1, v6

    goto/16 :goto_4
.end method
