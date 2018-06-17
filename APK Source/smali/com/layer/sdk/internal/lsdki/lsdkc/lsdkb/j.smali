.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;
.super Lcom/layer/a/a;


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final b:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->b:Lcom/layer/b/d/k;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->q()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->a(I)V

    :goto_0
    return v0

    :cond_0
    new-instance v3, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->b:Lcom/layer/b/d/k;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-direct {v3, v4, v5, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;-><init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Ljava/util/Set;)V

    new-array v2, v1, [Lcom/layer/a/c/d;

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/k;->b()Lcom/layer/a/c/a;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->a([Lcom/layer/a/c/d;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/j;->a(Lcom/layer/a/c/d;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
