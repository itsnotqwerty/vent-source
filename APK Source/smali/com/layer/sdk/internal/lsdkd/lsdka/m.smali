.class public Lcom/layer/sdk/internal/lsdkd/lsdka/m;
.super Lcom/layer/sdk/messaging/Metadata;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/m$i;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/internal/lsdkk/m$b;",
            "Lcom/layer/sdk/internal/lsdkk/m$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/messaging/Metadata;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/m$b;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$i;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/m$c;->a()[Lcom/layer/sdk/internal/lsdkk/m$b;

    move-result-object v3

    array-length v0, v3

    add-int/lit8 v4, v0, -0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-gt v2, v4, :cond_4

    aget-object v0, v3, v2

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    instance-of v5, v5, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    if-nez v5, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    add-int/lit8 v2, v2, 0x1

    move-object p0, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/m$c;->a()[Lcom/layer/sdk/internal/lsdkk/m$b;

    move-result-object v2

    array-length v0, v2

    add-int/lit8 v3, v0, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v1, v3, :cond_5

    aget-object v0, v2, v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, v0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    invoke-virtual {p0, v0, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    add-int/lit8 v1, v1, 0x1

    move-object p0, v0

    goto :goto_0

    :cond_4
    instance-of v5, v4, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    if-nez v5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot traverse into metadata level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not set metadata value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/internal/lsdkk/m$b;",
            "Lcom/layer/sdk/internal/lsdkk/m$i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V
    .locals 3

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-virtual {p0, v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_0
.end method

.method public b(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/m$c;->a()[Lcom/layer/sdk/internal/lsdkk/m$b;

    move-result-object v3

    array-length v0, v3

    add-int/lit8 v4, v0, -0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-gt v2, v4, :cond_3

    aget-object v0, v3, v2

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->b(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v5

    instance-of v6, v5, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    if-nez v6, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot traverse into metadata level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    add-int/lit8 v2, v2, 0x1

    move-object p0, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$b;

    invoke-direct {v1, p1}, Lcom/layer/sdk/internal/lsdkk/m$b;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Metadata$Entry;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/layer/sdk/messaging/Metadata$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkk/m$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/layer/sdk/messaging/Metadata$Entry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetadataImpl{mMap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
