.class final Lcom/layer/b/d/k$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/b/d/k$b;->a(Lcom/layer/b/d/k$a;)Lcom/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxs:Lcom/layer/b/d/k$a;

.field final synthetic bxt:Lcom/layer/b/d/k$b;


# direct methods
.method constructor <init>(Lcom/layer/b/d/k$b;Lcom/layer/b/d/k$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iput-object p2, p0, Lcom/layer/b/d/k$b$1;->bxs:Lcom/layer/b/d/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .locals 5

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TransportException: "

    invoke-static {v0, p1}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v0, v0, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwt:Lcom/layer/b/d/g;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/b/d/k$c;->a(Lcom/layer/b/d/m;)V

    return-void
.end method

.method public final e(Lcom/b/a/ac;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x6

    :try_start_0
    iget-object v0, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v0, v0, Lcom/layer/b/d/k$b;->a:Lcom/layer/b/d/k;

    iget-object v0, v0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/layer/b/c/b;->a(Lcom/b/a/ac;Z)Lcom/b/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v1, v1, Lcom/layer/b/d/k$b;->a:Lcom/layer/b/d/k;

    invoke-static {v1, v0}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;Lcom/b/a/ac;)Lcom/layer/b/d/j;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/b/d/k$b$1;->bxs:Lcom/layer/b/d/k$a;

    invoke-interface {v2, v1}, Lcom/layer/b/d/k$a;->a(Lcom/layer/b/d/j;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/ac;->c()I

    move-result v0

    iget-object v2, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v2, v2, Lcom/layer/b/d/k$b;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v2, v2, Lcom/layer/b/d/k$b;->b:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transport Error. Expected status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v2, v2, Lcom/layer/b/d/k$b;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    iget-object v1, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v1, v1, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    new-instance v2, Lcom/layer/b/d/m;

    sget-object v3, Lcom/layer/b/d/f;->bvW:Lcom/layer/b/d/f;

    invoke-static {v0}, Lcom/layer/b/d/g;->dn(I)Lcom/layer/b/d/g;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expected status code "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v6, v6, Lcom/layer/b/d/k$b;->b:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but encountered "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/layer/b/d/k$c;->a(Lcom/layer/b/d/m;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v0, v0, Lcom/layer/b/d/k$b;->a:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v0, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v0, v0, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    invoke-interface {v0, v1}, Lcom/layer/b/d/k$c;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v7}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Server is not trusted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v1, v1, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    new-instance v2, Lcom/layer/b/d/m;

    sget-object v3, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    sget-object v4, Lcom/layer/b/d/g;->bws:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/layer/b/d/k$c;->a(Lcom/layer/b/d/m;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v1, v1, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    new-instance v2, Lcom/layer/b/d/m;

    sget-object v3, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v4, Lcom/layer/b/d/g;->bwf:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/layer/b/d/k$c;->a(Lcom/layer/b/d/m;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v7}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    iget-object v1, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v1, v1, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    invoke-interface {v1, v0}, Lcom/layer/b/d/k$c;->a(Lcom/layer/b/d/m;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v7}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    iget-object v1, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v1, v1, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    new-instance v2, Lcom/layer/b/d/m;

    sget-object v3, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v4, Lcom/layer/b/d/g;->bwf:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/layer/b/d/k$c;->a(Lcom/layer/b/d/m;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-static {v7}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    iget-object v1, p0, Lcom/layer/b/d/k$b$1;->bxt:Lcom/layer/b/d/k$b;

    iget-object v1, v1, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    new-instance v2, Lcom/layer/b/d/m;

    sget-object v3, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v4, Lcom/layer/b/d/g;->bwt:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/layer/b/d/k$c;->a(Lcom/layer/b/d/m;)V

    goto/16 :goto_0
.end method
