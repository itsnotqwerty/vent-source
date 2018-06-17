.class public Lcom/layer/sdk/internal/lsdkj/d;
.super Lcom/layer/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkj/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/b",
        "<",
        "Lcom/layer/sdk/internal/lsdkj/d$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/d$a;)V
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

    check-cast p1, Lcom/layer/sdk/internal/lsdkj/d$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkj/d;->a(Lcom/layer/sdk/internal/lsdkj/d$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkj/d$a;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/d$a;->b(Lcom/layer/sdk/internal/lsdkj/d$a;)Lcom/layer/b/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/b/d/k;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "Could not cancel push"

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
