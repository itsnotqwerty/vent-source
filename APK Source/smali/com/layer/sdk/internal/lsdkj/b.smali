.class public Lcom/layer/sdk/internal/lsdkj/b;
.super Lcom/layer/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkj/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/c",
        "<",
        "Lcom/layer/sdk/internal/lsdkj/b$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkj/b;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkj/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/a/a;Lcom/layer/a/c/c$a;Lcom/layer/sdk/internal/lsdkj/b$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/layer/a/c/c;-><init>(Lcom/layer/a/a/a;Lcom/layer/a/c/c$a;Ljava/lang/Object;)V

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

    check-cast p1, Lcom/layer/sdk/internal/lsdkj/b$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkj/b;->a(Lcom/layer/sdk/internal/lsdkj/b$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkj/b$a;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sending authentication request"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/b$a;->b(Lcom/layer/sdk/internal/lsdkj/b$a;)Lcom/layer/b/d/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layer/b/d/k;->aJ(Z)Z

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Authentication request succeeded"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    iget-object v1, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    if-nez v1, :cond_2

    throw v0

    :cond_2
    sget-object v2, Lcom/layer/sdk/internal/lsdkj/b$1;->bqe:[I

    invoke-virtual {v1}, Lcom/layer/b/d/f;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkj/b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Received a challenge during authentication"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Authentication request succeeded but challenged"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    throw v0

    :pswitch_2
    new-instance v1, Lcom/layer/a/c/e;

    const-string v2, "Could not authenticate"

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkj/b;->a(Lcom/layer/a/c/e;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkj/b;->a(Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "Could not authenticate"

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
