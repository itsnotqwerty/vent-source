.class public final Lcom/layer/b/d/k$22;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/d/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/layer/b/d/k$e",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic bxq:Lcom/layer/b/f/c/j;

.field final synthetic c:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;Ljava/lang/String;Lcom/layer/b/f/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$22;->c:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/b/d/k$22;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/b/d/k$22;->bxq:Lcom/layer/b/f/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/b/a/ac;Lcom/layer/b/d/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final xb()Lcom/b/a/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;,
            Lc/a/a/g;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/layer/b/d/k$22;->c:Lcom/layer/b/d/k;

    iget-object v2, v1, Lcom/layer/b/d/k;->bxb:Lcom/layer/b/a/a;

    if-nez v2, :cond_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, v1, Lcom/layer/b/d/k;->bxb:Lcom/layer/b/a/a;

    invoke-virtual {v1}, Lcom/layer/b/a/a;->wQ()Lcom/layer/b/a/a$a;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/layer/b/a/a$a;->a:Ljava/util/UUID;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/layer/b/f/c/i;

    iget-object v2, p0, Lcom/layer/b/d/k$22;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/layer/b/d/k$22;->bxq:Lcom/layer/b/f/c/j;

    invoke-direct {v0, v2, v3}, Lcom/layer/b/f/c/i;-><init>(Ljava/lang/String;Lcom/layer/b/f/c/j;)V

    iget-object v2, p0, Lcom/layer/b/d/k$22;->c:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->d(Lcom/layer/b/d/k;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/b/d/k$22;->c:Lcom/layer/b/d/k;

    invoke-static {v3}, Lcom/layer/b/d/k;->e(Lcom/layer/b/d/k;)Lc/a/a/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc/a/a/h;->a(Lc/a/a/c;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/ab;->a(Lcom/b/a/w;[B)Lcom/b/a/ab;

    move-result-object v0

    iget-object v2, p0, Lcom/layer/b/d/k$22;->c:Lcom/layer/b/d/k;

    iget-object v2, v2, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v3, p0, Lcom/layer/b/d/k$22;->c:Lcom/layer/b/d/k;

    invoke-static {v3}, Lcom/layer/b/d/k;->b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "users/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/push_tokens"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/layer/b/d/k$22;->c:Lcom/layer/b/d/k;

    invoke-virtual {v4}, Lcom/layer/b/d/k;->a()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/ac;

    move-result-object v0

    goto :goto_1
.end method
