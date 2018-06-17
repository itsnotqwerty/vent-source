.class public final Lcom/b/a/a/a/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/b/a/y;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/b/a/y;->bJR:Lcom/b/a/y;

    if-ne p0, v0, :cond_0

    const-string v0, "HTTP/1.0"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "HTTP/1.1"

    goto :goto_0
.end method

.method public static d(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "/"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
