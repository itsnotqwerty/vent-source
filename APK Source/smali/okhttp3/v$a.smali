.class final Lokhttp3/v$a;
.super Lokhttp3/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic cZn:Lokhttp3/v;


# virtual methods
.method protected final execute()V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lokhttp3/v$a;->cZn:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->ME()Lokhttp3/y;

    iget-object v0, p0, Lokhttp3/v$a;->cZn:Lokhttp3/v;

    iget-object v0, v0, Lokhttp3/v;->cZk:Lokhttp3/internal/c/j;

    iget-boolean v0, v0, Lokhttp3/internal/c/j;->canceled:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Lokhttp3/v$a;->cZn:Lokhttp3/v;

    iget-object v0, v0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->cYY:Lokhttp3/l;

    invoke-virtual {v0, p0}, Lokhttp3/l;->a(Lokhttp3/v$a;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {}, Lokhttp3/internal/g/f;->Ng()Lokhttp3/internal/g/f;

    move-result-object v7

    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "Callback failure for "

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/v$a;->cZn:Lokhttp3/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lokhttp3/v;->cZk:Lokhttp3/internal/c/j;

    iget-boolean v0, v0, Lokhttp3/internal/c/j;->canceled:Z

    if-eqz v0, :cond_1

    const-string v0, "canceled "

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, v1, Lokhttp3/v;->forWebSocket:Z

    if-eqz v0, :cond_2

    const-string v0, "web socket"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v1, Lokhttp3/v;->cZm:Lokhttp3/w;

    iget-object v0, v0, Lokhttp3/w;->cVX:Lokhttp3/q;

    const-string v1, "/..."

    invoke-virtual {v0, v1}, Lokhttp3/q;->ft(Ljava/lang/String;)Lokhttp3/q$a;

    move-result-object v11

    const-string v0, ""

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lokhttp3/q;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lokhttp3/q$a;->encodedUsername:Ljava/lang/String;

    const-string v0, ""

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lokhttp3/q;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lokhttp3/q$a;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v11}, Lokhttp3/q$a;->MC()Lokhttp3/q;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0, v6}, Lokhttp3/internal/g/f;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    iget-object v0, p0, Lokhttp3/v$a;->cZn:Lokhttp3/v;

    iget-object v0, v0, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v0, v0, Lokhttp3/t;->cYY:Lokhttp3/l;

    invoke-virtual {v0, p0}, Lokhttp3/l;->a(Lokhttp3/v$a;)V

    goto :goto_0

    :cond_1
    :try_start_3
    const-string v0, ""

    goto :goto_2

    :cond_2
    const-string v0, "call"

    goto :goto_3

    :cond_3
    invoke-static {}, Lokhttp3/n;->My()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lokhttp3/v$a;->cZn:Lokhttp3/v;

    iget-object v1, v1, Lokhttp3/v;->cgQ:Lokhttp3/t;

    iget-object v1, v1, Lokhttp3/t;->cYY:Lokhttp3/l;

    invoke-virtual {v1, p0}, Lokhttp3/l;->a(Lokhttp3/v$a;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v6, v0

    goto/16 :goto_1
.end method

.method final host()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/v$a;->cZn:Lokhttp3/v;

    iget-object v0, v0, Lokhttp3/v;->cZm:Lokhttp3/w;

    iget-object v0, v0, Lokhttp3/w;->cVX:Lokhttp3/q;

    iget-object v0, v0, Lokhttp3/q;->host:Ljava/lang/String;

    return-object v0
.end method
