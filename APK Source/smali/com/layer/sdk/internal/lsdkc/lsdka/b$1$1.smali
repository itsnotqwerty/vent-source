.class final Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;->b(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/sdk/internal/lsdkd/h;

.field final synthetic bqC:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

.field final synthetic bqw:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;Ljava/io/File;Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$1;->bqC:Lcom/layer/sdk/internal/lsdkc/lsdka/b$1;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$1;->bqw:Ljava/io/File;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$1;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/sdk/internal/lsdkd/d;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to perform transactedCacheUpdate in runTask. Changeable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$1;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerObjectException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->FAILED_CONTENT_OPERATION:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/layer/sdk/exceptions/LayerObjectException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Lcom/layer/sdk/messaging/LayerObject;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/exceptions/LayerObjectException;)V

    return-void
.end method

.method public final a(Lcom/layer/sdk/internal/lsdkd/d;)Z
    .locals 1

    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$1$1;->bqw:Ljava/io/File;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/io/File;)V

    const/4 v0, 0x1

    return v0
.end method
