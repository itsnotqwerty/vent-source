.class final Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field bsB:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic bsC:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

.field c:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/LinkedHashMap;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsC:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method final a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;ILcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, p2, :cond_1

    invoke-interface {p3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v2, v5

    if-gt v2, p2, :cond_3

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    sub-int v1, v0, v3

    :goto_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v3, 0x1

    :goto_3
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    if-lt v2, p2, :cond_5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsC:Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_3
.end method

.method final a(Ljava/util/List;ILcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;I",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    if-ge v2, p2, :cond_6

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    add-int/2addr v5, v2

    if-gt v5, p2, :cond_2

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_3

    :cond_4
    move v1, v2

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move v2, v1

    goto :goto_1

    :cond_6
    invoke-interface {p3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    goto/16 :goto_0
.end method
