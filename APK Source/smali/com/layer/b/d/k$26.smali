.class public final Lcom/layer/b/d/k$26;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/util/UUID;

.field final synthetic d:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;Ljava/lang/String;JLjava/util/UUID;)V
    .locals 1

    iput-object p1, p0, Lcom/layer/b/d/k$26;->d:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/b/d/k$26;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/layer/b/d/k$26;->b:J

    iput-object p5, p0, Lcom/layer/b/d/k$26;->c:Ljava/util/UUID;

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

    const-string v0, "upload-content-location"

    invoke-virtual {p1, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final xb()Lcom/b/a/ac;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;,
            Lc/a/a/g;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/layer/b/d/k$26;->d:Lcom/layer/b/d/k;

    invoke-virtual {v0}, Lcom/layer/b/d/k;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Upload-Content-Type"

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/layer/b/d/k$26;->a:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Upload-Content-Length"

    new-array v2, v4, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/layer/b/d/k$26;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/layer/b/d/k$26;->d:Lcom/layer/b/d/k;

    iget-object v1, v1, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v2, p0, Lcom/layer/b/d/k$26;->d:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "streams/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/layer/b/d/k$26;->c:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method
