.class public final Lcom/layer/b/d/k$21;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;)V
    .locals 1

    iput-object p1, p0, Lcom/layer/b/d/k$21;->b:Lcom/layer/b/d/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/d/k$21;->a:Ljava/util/List;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/layer/b/f/a/k;

    invoke-direct {v0}, Lcom/layer/b/f/a/k;-><init>()V

    iget-object v1, p0, Lcom/layer/b/d/k$21;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/layer/b/f/a/k;->a:Ljava/util/List;

    const/16 v1, 0x64

    iput v1, v0, Lcom/layer/b/f/a/k;->b:I

    invoke-virtual {v0}, Lcom/layer/b/f/a/k;->xV()V

    iget-object v1, p0, Lcom/layer/b/d/k$21;->b:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->f(Lcom/layer/b/d/k;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/w;->dK(Ljava/lang/String;)Lcom/b/a/w;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/b/d/k$21;->b:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->e(Lcom/layer/b/d/k;)Lc/a/a/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc/a/a/h;->a(Lc/a/a/c;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/b/a/ab;->a(Lcom/b/a/w;[B)Lcom/b/a/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/k$21;->b:Lcom/layer/b/d/k;

    iget-object v1, v1, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v2, p0, Lcom/layer/b/d/k$21;->b:Lcom/layer/b/d/k;

    invoke-static {v2}, Lcom/layer/b/d/k;->b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v2

    const-string v3, "presence_sync"

    iget-object v4, p0, Lcom/layer/b/d/k$21;->b:Lcom/layer/b/d/k;

    invoke-virtual {v4}, Lcom/layer/b/d/k;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Lcom/b/a/ab;)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method
