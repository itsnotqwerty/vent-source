.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;
.super Lcom/layer/a/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/layer/b/d/k;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/b/d/k;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->b:Lcom/layer/b/d/k;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->a:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->c:Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->c:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->b:Lcom/layer/b/d/k;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;-><init>(Lcom/layer/b/d/k;Ljava/lang/String;)V

    new-array v3, v1, [Lcom/layer/a/c/d;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->b()Lcom/layer/a/c/a;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {p0, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->a([Lcom/layer/a/c/d;)V

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->a(I)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/f;->a(Lcom/layer/a/c/d;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
