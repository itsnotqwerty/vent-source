.class public Lcom/layer/sdk/internal/lsdkj/i;
.super Lcom/layer/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkj/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/b",
        "<",
        "Lcom/layer/sdk/internal/lsdkj/i$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkj/i;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkj/i;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/i$a;)V
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

    check-cast p1, Lcom/layer/sdk/internal/lsdkj/i$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkj/i;->a(Lcom/layer/sdk/internal/lsdkj/i$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkj/i$a;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x6

    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/i$a;->c(Lcom/layer/sdk/internal/lsdkj/i$a;)Lcom/layer/b/d/k;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/i$a;->b(Lcom/layer/sdk/internal/lsdkj/i$a;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/layer/b/f/c/j;->bEb:Lcom/layer/b/f/c/j;

    new-instance v3, Lcom/layer/b/d/k$f;

    invoke-direct {v3, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v3

    new-instance v4, Lcom/layer/b/d/k$22;

    invoke-direct {v4, v0, v1, v2}, Lcom/layer/b/d/k$22;-><init>(Lcom/layer/b/d/k;Ljava/lang/String;Lcom/layer/b/f/c/j;)V

    invoke-virtual {v3, v4}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkj/i;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Successfully registered FCM Registration id with Layer Server"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/i$a;->d(Lcom/layer/sdk/internal/lsdkj/i$a;)Lcom/layer/sdk/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->A()Lcom/layer/sdk/internal/lsdkg/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/i$a;->d(Lcom/layer/sdk/internal/lsdkj/i$a;)Lcom/layer/sdk/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/a;->A()Lcom/layer/sdk/internal/lsdkg/b;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/i$a;->d(Lcom/layer/sdk/internal/lsdkj/i$a;)Lcom/layer/sdk/internal/a;

    move-result-object v1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/i$a;->b(Lcom/layer/sdk/internal/lsdkj/i$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkg/b;->a(Lcom/layer/sdk/LayerClient;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkj/i;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Failed posting FCM Registration id with Layer Server"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Could not set FCM token"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v7}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdkj/i;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed posting FCM Registration id with Layer Server with exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/b/d/m;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "Could not set FCM token"

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
