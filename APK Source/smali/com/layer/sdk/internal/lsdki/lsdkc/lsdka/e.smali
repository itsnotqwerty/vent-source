.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final a:Lcom/layer/b/d/k;

.field private final c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final d:Ljava/util/UUID;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/h;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->g:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->a:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->e:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->f:Ljava/lang/Integer;

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

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->a(Ljava/lang/Void;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)Ljava/util/UUID;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v9, 0x6

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->a:Lcom/layer/b/d/k;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->e:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->f:Ljava/lang/Integer;

    new-instance v5, Lcom/layer/b/d/k$f;

    invoke-direct {v5, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v5

    new-instance v6, Lcom/layer/b/d/k$3;

    invoke-direct {v6, v0, v1, v3, v4}, Lcom/layer/b/d/k$3;-><init>(Lcom/layer/b/d/k;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v5, v6}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/b/d/i;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    invoke-virtual {v1, v4}, Lcom/layer/b/d/i;->a(Ljava/util/UUID;)V
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, v0, Lcom/layer/b/d/m;->buL:Lcom/layer/b/d/b;

    sget-object v3, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e$1;->bqe:[I

    iget-object v4, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v4}, Lcom/layer/b/d/f;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->c(Ljava/lang/Iterable;)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;
    :try_end_1
    .catch Lcom/layer/b/d/m; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :pswitch_0
    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->g:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Recoverable exception while getting mutations: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    new-instance v1, Lcom/layer/a/c/e;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->a(Lcom/layer/a/c/e;)V

    goto :goto_1

    :pswitch_1
    sget-object v3, Lcom/layer/b/d/b;->buQ:Lcom/layer/b/d/b;

    if-ne v1, v3, :cond_4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->g:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Stream was deleted while getting mutations: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->g:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unrecoverable exception while getting mutations: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    new-instance v1, Lcom/layer/a/c/e;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->a(Lcom/layer/a/c/e;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v9}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->g:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unrecoverable exception while getting mutations: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    new-instance v1, Lcom/layer/a/c/e;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->d:Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/e;->a(Lcom/layer/a/c/e;)V

    move-object v0, v2

    goto/16 :goto_2

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
