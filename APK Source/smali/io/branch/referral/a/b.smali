.class public final Lio/branch/referral/a/b;
.super Lio/branch/referral/a/a;


# instance fields
.field cBN:Lio/branch/referral/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lio/branch/referral/a/a;-><init>()V

    invoke-static {p1}, Lio/branch/referral/q;->bT(Landroid/content/Context;)Lio/branch/referral/q;

    move-result-object v0

    iput-object v0, p0, Lio/branch/referral/a/b;->cBN:Lio/branch/referral/q;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/a/a$b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/a/a$a;
        }
    .end annotation

    const/16 v3, 0x1f4

    const/4 v1, 0x0

    invoke-static {}, Lio/branch/referral/q;->getTimeout()I

    move-result v0

    if-gtz v0, :cond_a

    const/16 v0, 0xbb8

    move v2, v0

    :goto_0
    :try_start_0
    const-string v0, "retryNumber"

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    if-lt v2, v3, :cond_2

    const-string v1, "bnc_retry_count"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v1

    if-ge p3, v1, :cond_2

    :try_start_3
    invoke-static {}, Lio/branch/referral/q;->GT()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_2
    add-int/lit8 p3, p3, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lio/branch/referral/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/a/a$b;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_3
    return-object v0

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_4
    :try_start_6
    const-string v0, "bnc_retry_count"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-ge p3, v0, :cond_8

    :try_start_7
    invoke-static {}, Lio/branch/referral/q;->GT()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_5
    add-int/lit8 v0, p3, 0x1

    :try_start_8
    invoke-direct {p0, p1, p2, v0}, Lio/branch/referral/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/a/a$b;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto :goto_3

    :cond_2
    const/16 v1, 0xc8

    if-eq v2, v1, :cond_4

    :try_start_9
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Lio/branch/referral/a/a$b;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lio/branch/referral/a/b;->o(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lio/branch/referral/a/a$b;-><init>(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    move-object v0, v1

    goto :goto_3

    :cond_4
    :try_start_a
    new-instance v1, Lio/branch/referral/a/a$b;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lio/branch/referral/a/b;->o(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lio/branch/referral/a/a$b;-><init>(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_b
    const-string v1, "BranchSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A resource conflict occurred with this request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lio/branch/referral/a/a$b;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lio/branch/referral/a/a$b;-><init>(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    throw v2

    :cond_8
    :try_start_d
    new-instance v0, Lio/branch/referral/a/a$a;

    const/16 v2, -0x6f

    invoke-direct {v0, v2}, Lio/branch/referral/a/a$a;-><init>(I)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_7
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Http connect exception: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lio/branch/referral/a/a$a;

    const/16 v1, -0x71

    invoke-direct {v0, v1}, Lio/branch/referral/a/a$a;-><init>(I)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    instance-of v0, v2, Landroid/os/NetworkOnMainThreadException;

    if-eqz v0, :cond_9

    const-string v0, "BranchSDK"

    const-string v1, "Branch Error: Don\'t call our synchronous methods on the main thread!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v0, Lio/branch/referral/a/a$b;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lio/branch/referral/a/a$b;-><init>(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto/16 :goto_6

    :catch_6
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_1

    :cond_a
    move v2, v0

    goto/16 :goto_0
.end method

.method private m(Ljava/lang/String;I)Lio/branch/referral/a/a$b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/a/a$a;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lio/branch/referral/q;->getTimeout()I

    move-result v0

    if-gtz v0, :cond_a

    const/16 v0, 0xbb8

    move v1, v0

    :goto_0
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&"

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "retryNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v1, 0x1f4

    if-lt v2, v1, :cond_4

    const-string v1, "bnc_retry_count"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-ge p2, v1, :cond_4

    :try_start_2
    invoke-static {}, Lio/branch/referral/q;->GT()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    add-int/lit8 p2, p2, 0x1

    :try_start_3
    invoke-direct {p0, p1, p2}, Lio/branch/referral/a/b;->m(Ljava/lang/String;I)Lio/branch/referral/a/a$b;
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    :try_start_4
    const-string v0, "?"
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Http connect exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lio/branch/referral/a/a$a;

    const/16 v1, -0x71

    invoke-direct {v0, v1}, Lio/branch/referral/a/a$a;-><init>(I)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_5
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    throw v1

    :cond_4
    const/16 v1, 0xc8

    if-eq v2, v1, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Lio/branch/referral/a/a$b;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lio/branch/referral/a/b;->o(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lio/branch/referral/a/a$b;-><init>(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    :try_start_8
    new-instance v1, Lio/branch/referral/a/a$b;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lio/branch/referral/a/b;->o(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lio/branch/referral/a/a$b;-><init>(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_9
    const-string v1, "BranchSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "A resource conflict occurred with this request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lio/branch/referral/a/a$b;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lio/branch/referral/a/a$b;-><init>(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    move-object v0, v1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :goto_6
    :try_start_a
    const-string v0, "bnc_retry_count"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lio/branch/referral/q;->l(Ljava/lang/String;I)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v0

    if-ge p2, v0, :cond_9

    :try_start_b
    invoke-static {}, Lio/branch/referral/q;->GT()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    add-int/lit8 v0, p2, 0x1

    :try_start_c
    invoke-direct {p0, p1, v0}, Lio/branch/referral/a/b;->m(Ljava/lang/String;I)Lio/branch/referral/a/a$b;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    :cond_9
    new-instance v0, Lio/branch/referral/a/a$a;

    const/16 v1, -0x6f

    invoke-direct {v0, v1}, Lio/branch/referral/a/a$a;-><init>(I)V

    throw v0

    :catch_5
    move-exception v0

    move-object v1, v0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Branch connect exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/branch/referral/q;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lio/branch/referral/a/a$a;

    const/16 v1, -0x71

    invoke-direct {v0, v1}, Lio/branch/referral/a/a$a;-><init>(I)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto/16 :goto_5

    :catch_6
    move-exception v1

    move-object v2, v0

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4

    :cond_a
    move v1, v0

    goto/16 :goto_0
.end method

.method private static o(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/referral/a/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/a/a$a;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/branch/referral/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Lio/branch/referral/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method public final eS(Ljava/lang/String;)Lio/branch/referral/a/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/branch/referral/a/a$a;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/branch/referral/a/b;->m(Ljava/lang/String;I)Lio/branch/referral/a/a$b;

    move-result-object v0

    return-object v0
.end method
