.class public final Lcom/layer/b/a/h;
.super Ljava/lang/Object;


# direct methods
.method static a(Lcom/layer/b/d/a;Ljava/net/URL;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x4e20

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x6

    new-instance v4, Lcom/b/a/o;

    invoke-direct {v4, v3, v6, v7}, Lcom/b/a/o;-><init>(IJ)V

    new-instance v0, Lcom/b/a/x;

    invoke-direct {v0}, Lcom/b/a/x;-><init>()V

    invoke-virtual {v0, v4}, Lcom/b/a/x;->b(Lcom/b/a/o;)Lcom/b/a/x;

    move-result-object v0

    new-instance v1, Lcom/layer/b/a/c;

    invoke-direct {v1}, Lcom/layer/b/a/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/x;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/b/a/x;

    move-result-object v0

    new-instance v1, Lcom/layer/b/a/h$1;

    invoke-direct {v1}, Lcom/layer/b/a/h$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/b/a/x;->b(Ljavax/net/ssl/HostnameVerifier;)Lcom/b/a/x;

    move-result-object v0

    new-array v1, v3, [Lcom/b/a/y;

    const/4 v3, 0x0

    sget-object v5, Lcom/b/a/y;->bMk:Lcom/b/a/y;

    aput-object v5, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/x;->x(Ljava/util/List;)Lcom/b/a/x;

    move-result-object v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v0}, Lcom/b/a/x;->a(JLjava/util/concurrent/TimeUnit;)V

    const-string v0, "application/json"

    invoke-static {v0}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/b/a/aa$a;

    invoke-direct {v1}, Lcom/b/a/aa$a;-><init>()V

    const-string v3, "Connection"

    const-string v6, "close"

    invoke-virtual {v1, v3, v6}, Lcom/b/a/aa$a;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/layer/b/d/a;->a(Lcom/b/a/aa$a;)Lcom/b/a/aa$a;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcom/b/a/ab;->a(Lcom/b/a/w;[B)Lcom/b/a/ab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/b/a/aa$a;->a(Lcom/b/a/ab;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/aa$a;->g(Ljava/net/URL;)Lcom/b/a/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aa$a;->An()Lcom/b/a/aa;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/b/a/x;->e(Lcom/b/a/aa;)Lcom/b/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Lcom/b/a/h;->xb()Lcom/b/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ac;->Ap()Lcom/b/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    :try_start_2
    invoke-virtual {v0}, Lcom/b/a/ac;->c()I

    move-result v2

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_4

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Error when requesting certificate. Code: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/b/a/ac;->c()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ". URL: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " ; Body : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/b/a/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/layer/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/ac;->c()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error when requesting certificate. Code: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/b/a/ac;->c()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v6, v0}, Lcom/layer/b/a/i;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lcom/b/a/b;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/b/a/h;->c()V

    :cond_2
    invoke-virtual {v5}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/b/a/o;->d()V

    :cond_3
    throw v0

    :cond_4
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/b/a/b;->yf()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Lcom/b/a/b;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/b/a/h;->c()V

    invoke-virtual {v5}, Lcom/b/a/x;->Ag()Lcom/b/a/o;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Lcom/b/a/o;->d()V

    :cond_6
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v9}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {v9}, Lcom/layer/b/e/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
