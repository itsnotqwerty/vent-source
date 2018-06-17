.class public final Lcom/layer/b/d/k$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
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

.field b:Ljava/lang/Integer;

.field final bxr:Lcom/layer/b/d/k$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/b/d/k$c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/b/d/k$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/b/d/k$c",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/b/d/k$b;->a:Lcom/layer/b/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/d/k$b;->b:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/layer/b/d/k$b;->bxr:Lcom/layer/b/d/k$c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/b/d/k$a;)Lcom/b/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/b/d/k$a",
            "<TT;>;)",
            "Lcom/b/a/h;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    const/4 v1, 0x6

    :try_start_0
    new-instance v0, Lcom/layer/b/d/k$b$1;

    invoke-direct {v0, p0, p1}, Lcom/layer/b/d/k$b$1;-><init>(Lcom/layer/b/d/k$b;Lcom/layer/b/d/k$a;)V

    invoke-interface {p1, v0}, Lcom/layer/b/d/k$a;->a(Lcom/b/a/i;)Lcom/b/a/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lc/a/a/g; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v1, Lcom/layer/b/d/m;

    sget-object v2, Lcom/layer/b/d/f;->bvX:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/g;->bwf:Lcom/layer/b/d/g;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TransportException: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
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

.method public final do(I)Lcom/layer/b/d/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/layer/b/d/k$b",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/b/d/k$b;->b:Ljava/lang/Integer;

    return-object p0
.end method
