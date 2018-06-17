.class public final Lio/intercom/a/a/a/c/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/List;Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)Lio/intercom/a/a/a/c/f$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;",
            "Ljava/io/InputStream;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            ")",
            "Lio/intercom/a/a/a/c/f$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHY:Lio/intercom/a/a/a/c/f$a;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/d/a/q;

    invoke-direct {v0, p1, p2}, Lio/intercom/a/a/a/c/d/a/q;-><init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)V

    move-object p1, v0

    :cond_1
    const/high16 v0, 0x500000

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/f;

    :try_start_0
    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/f;->p(Ljava/io/InputStream;)Lio/intercom/a/a/a/c/f$a;

    move-result-object v0

    sget-object v3, Lio/intercom/a/a/a/c/f$a;->cHY:Lio/intercom/a/a/a/c/f$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v0

    :cond_3
    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHY:Lio/intercom/a/a/a/c/f$a;

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;",
            "Ljava/io/InputStream;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/d/a/q;

    invoke-direct {v0, p1, p2}, Lio/intercom/a/a/a/c/d/a/q;-><init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)V

    move-object p1, v0

    :cond_1
    const/high16 v0, 0x500000

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/f;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lio/intercom/a/a/a/c/f;->a(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
