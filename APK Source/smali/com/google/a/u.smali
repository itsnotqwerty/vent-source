.class public abstract Lcom/google/a/u;
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
.method public abstract a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final ad(Ljava/lang/Object;)Lcom/google/a/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/a/k;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/google/a/b/a/f;

    invoke-direct {v0}, Lcom/google/a/b/a/f;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/a/b/a/f;->vz()Lcom/google/a/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/a/l;

    invoke-direct {v1, v0}, Lcom/google/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final vi()Lcom/google/a/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/u$1;

    invoke-direct {v0, p0}, Lcom/google/a/u$1;-><init>(Lcom/google/a/u;)V

    return-object v0
.end method
