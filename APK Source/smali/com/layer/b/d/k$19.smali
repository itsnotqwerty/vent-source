.class public final Lcom/layer/b/d/k$19;
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
.field final synthetic a:Ljava/util/UUID;

.field final synthetic b:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$19;->b:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/b/d/k$19;->a:Ljava/util/UUID;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;,
            Lc/a/a/g;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/d/k$19;->b:Lcom/layer/b/d/k;

    iget-object v0, v0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v1, p0, Lcom/layer/b/d/k$19;->b:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "streams/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/b/d/k$19;->a:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/b/d/k$19;->b:Lcom/layer/b/d/k;

    invoke-virtual {v3}, Lcom/layer/b/d/k;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/layer/b/c/b;->b(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method
