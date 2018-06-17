.class public final Lcom/layer/b/d/k$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/b/d/k;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;)V
    .locals 1

    iput-object p1, p0, Lcom/layer/b/d/k$f;->a:Lcom/layer/b/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/b/d/k$f;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/layer/b/d/k$f",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/d/k$f;->b:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/b/d/k$e",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    const/4 v6, 0x6

    :try_start_0
    invoke-interface {p1}, Lcom/layer/b/d/k$e;->xb()Lcom/b/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/k$f;->a:Lcom/layer/b/d/k;

    invoke-static {v1, v0}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;Lcom/b/a/ac;)Lcom/layer/b/d/j;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/layer/b/d/k$e;->a(Lcom/b/a/ac;Lcom/layer/b/d/j;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/ac;->c()I

    move-result v0

    iget-object v2, p0, Lcom/layer/b/d/k$f;->b:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/layer/b/d/k$f;->b:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transport error. Expected status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/b/d/k$f;->b:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but encountered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvW:Lcom/layer/b/d/f;

    invoke-static {v0}, Lcom/layer/b/d/g;->dn(I)Lcom/layer/b/d/g;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected status code "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/layer/b/d/k$f;->b:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but encountered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/a/a/g; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Server is not trusted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v6}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TransportException"

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bws:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/layer/b/d/k$f;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lc/a/a/g; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    :cond_3
    invoke-static {v6}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "TransportException"

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwf:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-static {v6}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "TransportException"

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwf:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-static {v6}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "TransportException"

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwm:Lcom/layer/b/d/g;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid object: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/a/a/g;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
