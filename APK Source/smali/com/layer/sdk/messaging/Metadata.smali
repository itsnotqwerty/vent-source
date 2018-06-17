.class public abstract Lcom/layer/sdk/messaging/Metadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/messaging/Metadata$Entry;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromKeyPathMap(Ljava/util/Map;)Lcom/layer/sdk/messaging/Metadata;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/messaging/Metadata;"
        }
    .end annotation

    new-instance v2, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    new-instance v4, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v4, v1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static newInstance()Lcom/layer/sdk/messaging/Metadata;
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;
.end method

.method public abstract a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;
.end method

.method public abstract b(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;
.end method

.method public abstract clear()V
.end method

.method public abstract containsKey(Ljava/lang/String;)Z
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Metadata$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/messaging/Metadata;->a(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    instance-of v1, v0, Lcom/layer/sdk/internal/lsdkk/m$h;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public put(Ljava/lang/String;Lcom/layer/sdk/messaging/Metadata;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Metadata cannot be null. Consider #putMergeDelete(key) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    check-cast p2, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {p0, v0, p2}, Lcom/layer/sdk/messaging/Metadata;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    instance-of v1, v0, Lcom/layer/sdk/internal/lsdkk/m$h;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value cannot be null. Consider #putMergeDelete(key) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$h;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    invoke-virtual {p0, v0, v1}, Lcom/layer/sdk/messaging/Metadata;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    instance-of v1, v0, Lcom/layer/sdk/internal/lsdkk/m$h;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public putMergeDelete(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$f;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkk/m$f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/layer/sdk/messaging/Metadata;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    instance-of v1, v0, Lcom/layer/sdk/internal/lsdkk/m$h;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/messaging/Metadata;->b(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    instance-of v1, v0, Lcom/layer/sdk/internal/lsdkk/m$h;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract size()I
.end method
