.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Lcom/layer/b/d/h;",
        "Lcom/layer/b/d/h;",
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

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/h;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->c:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/b/d/h;)Lcom/layer/b/d/h;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x6

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CreateStreamTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->c:Lcom/layer/b/d/k;

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

    new-instance v3, Lcom/layer/b/d/k$17;

    invoke-direct {v3, v0, p1}, Lcom/layer/b/d/k$17;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/h;)V

    invoke-virtual {v2, v3}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_4

    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Create stream failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a$1;->bqe:[I

    iget-object v3, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v3}, Lcom/layer/b/d/f;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_2
    :pswitch_0
    new-instance v2, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->a(Lcom/layer/a/c/e;)V

    move-object v2, v1

    goto :goto_0

    :pswitch_1
    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Create stream failed with UNRECOVERABLE error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v3, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-interface {v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->f(Ljava/lang/Long;)V

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    iput-object v0, v2, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    iget-object v0, p1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    iput-object v0, v2, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    :try_start_1
    iget-boolean v0, v2, Lcom/layer/b/f/c/m;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-interface {v0, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)Lcom/layer/b/d/h;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_3
    move-object v0, v2

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v3, Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;->b:Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;

    invoke-interface {v0, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/b/d/h;Lcom/layer/sdk/internal/lsdke/lsdkc/c$a;)V
    :try_end_1
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Persist stream failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    new-instance v2, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->a(Lcom/layer/a/c/e;)V

    move-object v0, v1

    goto/16 :goto_1

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

    check-cast p1, Lcom/layer/b/d/h;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/a;->a(Lcom/layer/b/d/h;)Lcom/layer/b/d/h;

    move-result-object v0

    return-object v0
.end method
