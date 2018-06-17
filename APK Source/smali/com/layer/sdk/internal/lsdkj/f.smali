.class public Lcom/layer/sdk/internal/lsdkj/f;
.super Lcom/layer/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkj/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/b",
        "<",
        "Lcom/layer/sdk/internal/lsdkj/f$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method public constructor <init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/f$a;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/layer/a/c/b;-><init>(Lcom/layer/a/c/b$a;Ljava/lang/Object;)V

    const-class v0, Lcom/layer/sdk/internal/lsdkj/f;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkj/f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

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

    check-cast p1, Lcom/layer/sdk/internal/lsdkj/f$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkj/f;->a(Lcom/layer/sdk/internal/lsdkj/f$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkj/f$a;)Ljava/lang/Void;
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkj/f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Deauthenticate : Calling Transport.deinit"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/f$a;->b(Lcom/layer/sdk/internal/lsdkj/f$a;)Lcom/layer/b/d/k;

    move-result-object v0

    new-instance v1, Lcom/layer/b/d/k$f;

    invoke-direct {v1, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v1

    new-instance v2, Lcom/layer/b/d/k$7;

    invoke-direct {v2, v0}, Lcom/layer/b/d/k$7;-><init>(Lcom/layer/b/d/k;)V

    invoke-virtual {v1, v2}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkj/f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Failed to deauthenticate"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
