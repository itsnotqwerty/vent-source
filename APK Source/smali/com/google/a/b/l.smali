.class public final Lcom/google/a/b/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/a/k;Lcom/google/a/d/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/b/a/n;->bjH:Lcom/google/a/u;

    invoke-virtual {v0, p1, p0}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Lcom/google/a/d/a;)Lcom/google/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/o;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/a/d/a;->vv()Lcom/google/a/d/b;

    const/4 v1, 0x0

    sget-object v0, Lcom/google/a/b/a/n;->bjH:Lcom/google/a/u;

    invoke-virtual {v0, p0}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/a/d/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/a/m;->bgT:Lcom/google/a/m;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/a/s;

    invoke-direct {v1, v0}, Lcom/google/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/a/s;

    invoke-direct {v1, v0}, Lcom/google/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/a/l;

    invoke-direct {v1, v0}, Lcom/google/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/a/s;

    invoke-direct {v1, v0}, Lcom/google/a/s;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
