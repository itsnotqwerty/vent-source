.class public final Lcom/layer/b/d/k$11;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$11;->b:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/b/d/k$11;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/i;)Lcom/b/a/h;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lc/a/a/g;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/d/k$11;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/layer/b/d/k;->g(Ljava/util/Set;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/layer/b/d/k$11;->b:Lcom/layer/b/d/k;

    iget-object v0, v0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v1, p0, Lcom/layer/b/d/k$11;->b:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "identity/followed?ids="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/layer/b/d/k$11;->b:Lcom/layer/b/d/k;

    invoke-virtual {v2}, Lcom/layer/b/d/k;->c()Ljava/util/Map;

    move-result-object v4

    sget-object v2, Lcom/layer/b/c/b$a;->buF:Lcom/layer/b/c/b$a;

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Lcom/layer/b/c/b$a;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;Lcom/b/a/i;)Lcom/b/a/h;

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

    const/4 v0, 0x0

    return-object v0
.end method
