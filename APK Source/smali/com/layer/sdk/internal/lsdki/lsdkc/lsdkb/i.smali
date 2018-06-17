.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;
.super Lcom/layer/a/a;


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final b:Lcom/layer/b/d/k;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/layer/a/b/a;Ljava/lang/String;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->b:Lcom/layer/b/d/k;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 11

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v10}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a(I)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/b/d/h;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Ljava/lang/Long;)Lcom/layer/b/d/h;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v8, v1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/layer/b/f/c/m;->c:Ljava/util/Set;

    iget-object v9, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->c:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v2, v1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->xp()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v0, v0, Lcom/layer/b/f/c/m;->f:J

    sget-object v3, Lcom/layer/sdk/internal/lsdki/lsdkc/c;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_3
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/b/d/h;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->b:Lcom/layer/b/d/k;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;-><init>(Lcom/layer/b/d/h;Ljava/lang/Iterable;Ljava/lang/Long;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;)V

    new-array v1, v7, [Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->b()Lcom/layer/a/c/a;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a([Lcom/layer/a/c/d;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v10}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a(I)V

    move v0, v6

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v2

    if-ne v2, v7, :cond_8

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/i;->a(Lcom/layer/a/c/d;)V

    goto :goto_4

    :cond_9
    move v0, v7

    goto/16 :goto_0
.end method
