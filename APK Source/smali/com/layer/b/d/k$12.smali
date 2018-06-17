.class public final Lcom/layer/b/d/k$12;
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
        "Lcom/layer/b/f/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$12;->b:Lcom/layer/b/d/k;

    iput p2, p0, Lcom/layer/b/d/k$12;->a:I

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

    iget-object v0, p2, Lcom/layer/b/d/j;->bwX:Lcom/layer/b/f/a/g;

    return-object v0
.end method

.method public final xb()Lcom/b/a/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/b/d/k$12;->b:Lcom/layer/b/d/k;

    iget-object v0, v0, Lcom/layer/b/d/k;->bxd:Lcom/layer/b/c/b;

    iget-object v1, p0, Lcom/layer/b/d/k$12;->b:Lcom/layer/b/d/k;

    invoke-static {v1}, Lcom/layer/b/d/k;->b(Lcom/layer/b/d/k;)Lcom/layer/b/b/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/layer/b/b/a;->wE()Ljava/net/URL;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "identity/changes?since="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/layer/b/d/k$12;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/b/d/k$12;->b:Lcom/layer/b/d/k;

    invoke-virtual {v3}, Lcom/layer/b/d/k;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/layer/b/c/b;->a(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;)Lcom/b/a/ac;

    move-result-object v0

    return-object v0
.end method
