.class public Lcom/layer/sdk/internal/lsdkf/e;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkf/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Lcom/layer/sdk/internal/lsdkf/e$a;",
        "Lcom/layer/sdk/internal/lsdkf/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final c:Lcom/layer/b/d/k;

.field private final d:Lcom/layer/sdk/internal/lsdke/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkf/e;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkf/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdke/g;Lcom/layer/sdk/internal/lsdkf/e$a;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkf/e;->c:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkf/e;->d:Lcom/layer/sdk/internal/lsdke/g;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/sdk/internal/lsdkf/e$a;)Lcom/layer/sdk/internal/lsdkf/e$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdkf/e$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdkf/e$a;->bry:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected 2 arguments but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkf/e$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkf/e$a;->bry:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected valid policy but got "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdkf/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Telling the server to block: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/e;->c:Lcom/layer/b/d/k;

    new-instance v4, Lcom/layer/b/d/k$f;

    invoke-direct {v4, v1}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v4

    new-instance v5, Lcom/layer/b/d/k$5;

    invoke-direct {v5, v1, v2}, Lcom/layer/b/d/k$5;-><init>(Lcom/layer/b/d/k;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/e;->d:Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdke/g;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object p1

    :cond_5
    const/4 v1, 0x2

    :try_start_2
    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/layer/sdk/internal/lsdkf/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Telling the server to unblock: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/e;->c:Lcom/layer/b/d/k;

    new-instance v4, Lcom/layer/b/d/k$f;

    invoke-direct {v4, v1}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v4

    new-instance v5, Lcom/layer/b/d/k$6;

    invoke-direct {v5, v1, v2}, Lcom/layer/b/d/k$6;-><init>(Lcom/layer/b/d/k;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/layer/b/d/m; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/layer/sdk/internal/lsdkf/e$1;->bqe:[I

    iget-object v5, v1, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v5}, Lcom/layer/b/d/f;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v3, Lcom/layer/a/c/e;

    invoke-virtual {v1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lcom/layer/sdk/internal/lsdkf/e;->a(Lcom/layer/a/c/e;)V

    move-object p1, v0

    goto :goto_1

    :pswitch_1
    new-instance v3, Lcom/layer/a/c/e;

    invoke-virtual {v1}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lcom/layer/sdk/internal/lsdkf/e;->a(Lcom/layer/a/c/e;)V

    move-object p1, v0

    goto :goto_1

    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkf/e;->d:Lcom/layer/sdk/internal/lsdke/g;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdke/g;->d(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_3
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v3, Lcom/layer/a/c/e;

    invoke-virtual {v1}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v2, v4, v1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lcom/layer/sdk/internal/lsdkf/e;->a(Lcom/layer/a/c/e;)V

    move-object p1, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/layer/sdk/internal/lsdkf/e$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkf/e;->a(Lcom/layer/sdk/internal/lsdkf/e$a;)Lcom/layer/sdk/internal/lsdkf/e$a;

    move-result-object v0

    return-object v0
.end method
