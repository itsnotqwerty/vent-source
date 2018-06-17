.class public abstract Lio/intercom/a/b/a/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Kc()Lio/intercom/a/b/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/b/a/r$1;

    invoke-direct {v0, p0}, Lio/intercom/a/b/a/r$1;-><init>(Lio/intercom/a/b/a/r;)V

    return-object v0
.end method

.method public abstract a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final aC(Ljava/lang/Object;)Lio/intercom/a/b/a/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/intercom/a/b/a/i;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lio/intercom/a/b/a/b/a/f;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/a/f;-><init>()V

    invoke-virtual {p0, v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    iget-object v1, v0, Lio/intercom/a/b/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected one JSON element but was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lio/intercom/a/b/a/b/a/f;->bif:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lio/intercom/a/b/a/j;

    invoke-direct {v1, v0}, Lio/intercom/a/b/a/j;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, v0, Lio/intercom/a/b/a/b/a/f;->cSd:Lio/intercom/a/b/a/i;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method
