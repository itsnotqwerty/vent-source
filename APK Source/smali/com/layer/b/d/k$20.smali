.class final Lcom/layer/b/d/k$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/d/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/b/d/k;->a(Ljava/lang/String;Lcom/layer/b/f/a/m;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic bxp:Lcom/layer/b/f/a/m;

.field final synthetic c:Lcom/layer/b/d/k;


# direct methods
.method constructor <init>(Lcom/layer/b/d/k;Ljava/lang/String;Lcom/layer/b/f/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$20;->c:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/b/d/k$20;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/b/d/k$20;->bxp:Lcom/layer/b/f/a/m;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public final xb()Lcom/b/a/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lc/a/a/g;
        }
    .end annotation

    new-instance v0, Lcom/layer/b/f/a/i;

    iget-object v1, p0, Lcom/layer/b/d/k$20;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/layer/b/d/k$20;->bxp:Lcom/layer/b/f/a/m;

    invoke-direct {v0, v1, v2}, Lcom/layer/b/f/a/i;-><init>(Ljava/lang/String;Lcom/layer/b/f/a/m;)V

    iget-object v1, p0, Lcom/layer/b/d/k$20;->c:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->f(Lcom/layer/b/d/k;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/b/d/k$20;->c:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->e(Lcom/layer/b/d/k;)Lc/a/a/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc/a/a/h;->a(Lc/a/a/c;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/b/a/ab;->a(Lcom/b/a/w;[B)Lcom/b/a/ab;

    move-result-object v5

    iget-object v0, p0, Lcom/layer/b/d/k$20;->c:Lcom/layer/b/d/k;

    iget-object v0, v0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v1, p0, Lcom/layer/b/d/k$20;->c:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v1

    const-string v3, "presence"

    iget-object v2, p0, Lcom/layer/b/d/k$20;->c:Lcom/layer/b/d/k;

    invoke-virtual {v2}, Lcom/layer/b/d/k;->c()Ljava/util/Map;

    move-result-object v4

    sget-object v2, Lcom/layer/b/c/b$a;->buD:Lcom/layer/b/c/b$a;

    invoke-virtual/range {v0 .. v5}, Lcom/layer/b/c/b;->b(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method
