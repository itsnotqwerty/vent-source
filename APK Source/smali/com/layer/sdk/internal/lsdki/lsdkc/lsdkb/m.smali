.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;
.super Lcom/layer/a/a;


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final b:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->b:Lcom/layer/b/d/k;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->l()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    iget-object v6, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m$1;->bqe:[I

    iget-object v7, v0, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    invoke-virtual {v7}, Lcom/layer/b/f/c/e;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->b:Lcom/layer/b/d/k;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-direct {v0, v3, v5, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;-><init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Ljava/util/List;)V

    new-array v3, v2, [Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/j;->b()Lcom/layer/a/c/a;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->a([Lcom/layer/a/c/d;)V

    :cond_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->a(I)V

    move v0, v1

    :goto_1
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/m;->a(Lcom/layer/a/c/d;)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
