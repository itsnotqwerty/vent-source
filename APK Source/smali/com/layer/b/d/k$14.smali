.class public final Lcom/layer/b/d/k$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/d/k$a;


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
        "Lcom/layer/b/d/k$a",
        "<",
        "Lcom/layer/b/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/UUID;

.field final synthetic brr:Lcom/layer/b/d/c;

.field final synthetic c:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/b/d/c;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$14;->c:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/b/d/k$14;->brr:Lcom/layer/b/d/c;

    iput-object p3, p0, Lcom/layer/b/d/k$14;->b:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/i;)Lcom/b/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/d/k$14;->c:Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/b/d/k;->d(Lcom/layer/b/d/k;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/k$14;->c:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->e(Lcom/layer/b/d/k;)Lc/a/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/b/d/k$14;->brr:Lcom/layer/b/d/c;

    invoke-virtual {v1, v2}, Lc/a/a/h;->a(Lc/a/a/c;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/ab;->a(Lcom/b/a/w;[B)Lcom/b/a/ab;

    move-result-object v4

    iget-object v0, p0, Lcom/layer/b/d/k$14;->c:Lcom/layer/b/d/k;

    iget-object v0, v0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v1, p0, Lcom/layer/b/d/k$14;->c:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "streams/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/b/d/k$14;->b:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/events"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/b/d/k$14;->c:Lcom/layer/b/d/k;

    invoke-virtual {v3}, Lcom/layer/b/d/k;->a()Ljava/util/Map;

    move-result-object v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/i;)Lcom/b/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/layer/b/d/j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/layer/b/d/j;->bwR:Lcom/layer/b/d/c;

    return-object v0
.end method
