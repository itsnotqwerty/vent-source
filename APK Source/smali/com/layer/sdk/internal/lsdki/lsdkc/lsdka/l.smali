.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Lcom/layer/b/d/i;",
        "Lcom/layer/b/d/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final c:Lcom/layer/b/d/k;

.field private final d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/i;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->c:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/b/d/i;)Lcom/layer/b/d/i;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x6

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PostMutationTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->c:Lcom/layer/b/d/k;

    invoke-virtual {p1}, Lcom/layer/b/d/i;->wV()Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Lcom/layer/b/d/k$f;

    invoke-direct {v2, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v2

    new-instance v3, Lcom/layer/b/d/k$4;

    invoke-direct {v3, v0, p1, v1}, Lcom/layer/b/d/k$4;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/i;Ljava/util/UUID;)V

    invoke-virtual {v2, v3}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/i;

    iget v0, v0, Lcom/layer/b/f/c/p;->f:I

    invoke-virtual {p1, v0}, Lcom/layer/b/d/i;->dI(I)Lcom/layer/b/f/c/p;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/layer/b/d/i;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->c(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l$1;->bqe:[I

    iget-object v2, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v2}, Lcom/layer/b/d/f;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->a(Lcom/layer/a/c/e;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v2, p1, Lcom/layer/b/d/i;->bwN:Ljava/lang/Long;

    invoke-interface {v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->d(Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->a(Lcom/layer/a/c/e;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->a(Lcom/layer/a/c/e;)V

    goto :goto_0

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

    check-cast p1, Lcom/layer/b/d/i;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/l;->a(Lcom/layer/b/d/i;)Lcom/layer/b/d/i;

    move-result-object v0

    return-object v0
.end method
