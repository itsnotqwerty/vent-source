.class public Lcom/layer/sdk/internal/lsdkj/h;
.super Lcom/layer/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkj/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/b",
        "<",
        "Lcom/layer/sdk/internal/lsdkj/h$a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkj/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkj/h;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/a/c/b$a;Lcom/layer/sdk/internal/lsdkj/h$a;)V
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

    check-cast p1, Lcom/layer/sdk/internal/lsdkj/h$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkj/h;->a(Lcom/layer/sdk/internal/lsdkj/h$a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkj/h$a;)Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->b(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/b/b/b;->a()Lcom/layer/b/b/a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkj/h;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "No config to fetch."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->b(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/b/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/b/b/b;->b()Lcom/layer/b/b/a;

    move-result-object v1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->b(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/b/b/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/layer/b/b/b;->b(Lcom/layer/b/b/a;Lcom/layer/b/b/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->b(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/b/b/b;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/layer/b/b/b;->a(Lcom/layer/b/b/a;Lcom/layer/b/b/a;)Lcom/layer/b/b/a;

    move-result-object v1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->b(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/b/b/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/layer/b/b/b;->a(Lcom/layer/b/b/a;)V

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->c(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/lsdka/a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->c(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/lsdka/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/layer/sdk/internal/lsdka/a;->a(Lcom/layer/b/b/a;)V

    :cond_2
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->d(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/internal/a;->u()V

    :cond_3
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->c(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/lsdka/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->c(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/lsdka/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdka/a;->b(Lcom/layer/b/b/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->c(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/lsdka/a;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkj/h$a;->c(Lcom/layer/sdk/internal/lsdkj/h$a;)Lcom/layer/sdk/internal/lsdka/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdka/a;->a(Ljava/lang/Exception;)V

    :cond_4
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/layer/sdk/internal/lsdkj/h;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Could not fetch config"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "Could not fetch config"

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
