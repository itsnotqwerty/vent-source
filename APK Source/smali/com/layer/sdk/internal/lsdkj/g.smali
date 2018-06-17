.class public Lcom/layer/sdk/internal/lsdkj/g;
.super Lcom/layer/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkj/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/b",
        "<",
        "Lcom/layer/sdk/internal/lsdkj/g$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/g$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/layer/a/c/b;-><init>(Lcom/layer/a/c/b$a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/layer/sdk/internal/lsdkj/g$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkj/g;->a(Lcom/layer/sdk/internal/lsdkj/g$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkj/g$a;)Ljava/lang/Void;
    .locals 4

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/g$a;->b(Lcom/layer/sdk/internal/lsdkj/g$a;)Lcom/layer/b/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/b/d/k;->f()V

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/g$a;->b(Lcom/layer/sdk/internal/lsdkj/g$a;)Lcom/layer/b/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/b/d/k;->g()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/g$a;->b(Lcom/layer/sdk/internal/lsdkj/g$a;)Lcom/layer/b/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/b/d/k;->g()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lez v0, :cond_0

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
