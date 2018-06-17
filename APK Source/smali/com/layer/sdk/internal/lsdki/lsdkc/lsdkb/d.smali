.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;
.super Lcom/layer/a/a;


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final b:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;->b:Lcom/layer/b/d/k;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;->b:Lcom/layer/b/d/k;

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V

    new-array v1, v3, [Lcom/layer/a/c/d;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->b()Lcom/layer/a/c/a;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;->a([Lcom/layer/a/c/d;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/d;->a(Lcom/layer/a/c/d;)V

    goto :goto_0

    :cond_1
    return v3
.end method
