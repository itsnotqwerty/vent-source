.class public Lcom/layer/sdk/internal/lsdkk/lsdkc/b;
.super Lcom/layer/sdk/internal/lsdkk/lsdka/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;,
        Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/sdk/internal/lsdkk/lsdka/c",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;",
        "Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/lsdka/c;-><init>()V

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$1;->bqe:[I

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->f(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->c(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->f(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->d(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->f(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->e(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->b(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->c:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$1;->b:[I

    invoke-virtual {p1}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->b:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$1;->b:[I

    invoke-virtual {p1}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v1, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->d(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->c:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$1;->b:[I

    invoke-virtual {p1}, Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->b:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v1, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->e(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public b()Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->a:Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;)Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public c()Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v1, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->g(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/lsdkc/b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;

    invoke-interface {v1, p0}, Lcom/layer/sdk/internal/lsdkk/lsdkc/b$a;->h(Lcom/layer/sdk/internal/lsdkk/lsdkc/b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
