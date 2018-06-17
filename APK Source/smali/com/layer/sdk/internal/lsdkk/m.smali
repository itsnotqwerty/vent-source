.class public Lcom/layer/sdk/internal/lsdkk/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkk/m$c;,
        Lcom/layer/sdk/internal/lsdkk/m$b;,
        Lcom/layer/sdk/internal/lsdkk/m$f;,
        Lcom/layer/sdk/internal/lsdkk/m$h;,
        Lcom/layer/sdk/internal/lsdkk/m$e;,
        Lcom/layer/sdk/internal/lsdkk/m$i;,
        Lcom/layer/sdk/internal/lsdkk/m$g;,
        Lcom/layer/sdk/internal/lsdkk/m$d;,
        Lcom/layer/sdk/internal/lsdkk/m$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkk/m$g;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/layer/sdk/internal/lsdkk/m$g;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;
    .locals 4

    new-instance v2, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$g;->entrySet()Ljava/util/Set;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-virtual {v2, v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;
    .locals 5

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkk/m$a;->b()Lcom/layer/sdk/internal/lsdkk/m$a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$a$b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$a$a;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkk/m$a$a;->a()Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v1

    sget-object v4, Lcom/layer/sdk/internal/lsdkk/m$a$a;->a:Lcom/layer/sdk/internal/lsdkk/m$i;

    if-eq v1, v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->b(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkk/m$a;->a()Lcom/layer/sdk/internal/lsdkk/m$a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$a$b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$a$a;->a()Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkk/m$a;->c()Lcom/layer/sdk/internal/lsdkk/m$a$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$a$b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$a$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$a$a;->a()Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method public static a(Lcom/layer/sdk/internal/lsdkk/m$g;Lcom/layer/sdk/internal/lsdkk/m$g;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkk/m$g;",
            "Lcom/layer/sdk/internal/lsdkk/m$g;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkk/m$c;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/m$g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$g;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    sget-object v3, Lcom/layer/sdk/internal/lsdkk/m$g$a;->a:Lcom/layer/sdk/internal/lsdkk/m$g$a;

    invoke-virtual {p1, v0, v3}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$g$a;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/layer/sdk/internal/lsdkk/m$g;Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V
    .locals 4

    invoke-virtual {p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$b;

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkk/m$c;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$c;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$b;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v0

    instance-of v3, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {p0, v2, v0}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkk/m$g;Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V

    goto :goto_0

    :cond_0
    instance-of v3, v0, Lcom/layer/sdk/internal/lsdkk/m$e;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$e;

    invoke-virtual {p0, v2, v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown value type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method public static b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;
    .locals 9

    new-instance v3, Lcom/layer/sdk/internal/lsdkk/m$a;

    invoke-direct {v3}, Lcom/layer/sdk/internal/lsdkk/m$a;-><init>()V

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v4

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layer/sdk/internal/lsdkk/m$i;

    :goto_1
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Old metadata has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v2, Lcom/layer/sdk/internal/lsdkk/m$a$a;->a:Lcom/layer/sdk/internal/lsdkk/m$i;

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/layer/sdk/internal/lsdkk/m$a$a;

    invoke-direct {v7, v2, v1}, Lcom/layer/sdk/internal/lsdkk/m$a$a;-><init>(Lcom/layer/sdk/internal/lsdkk/m$i;Lcom/layer/sdk/internal/lsdkk/m$i;)V

    sget-object v8, Lcom/layer/sdk/internal/lsdkk/m$a$a;->a:Lcom/layer/sdk/internal/lsdkk/m$i;

    if-ne v2, v8, :cond_3

    instance-of v1, v1, Lcom/layer/sdk/internal/lsdkk/m$f;

    if-nez v1, :cond_0

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkk/m$a;->a()Lcom/layer/sdk/internal/lsdkk/m$a$b;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/layer/sdk/internal/lsdkk/m$a$b;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v8, v1, Lcom/layer/sdk/internal/lsdkk/m$f;

    if-nez v8, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkk/m$a;->d()Lcom/layer/sdk/internal/lsdkk/m$a$b;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/layer/sdk/internal/lsdkk/m$a$b;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkk/m$a;->c()Lcom/layer/sdk/internal/lsdkk/m$a$b;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/layer/sdk/internal/lsdkk/m$a$b;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkk/m$a;->b()Lcom/layer/sdk/internal/lsdkk/m$a$b;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/layer/sdk/internal/lsdkk/m$a$b;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v5, v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkk/m$g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkk/m$i;

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkk/m$a;->b()Lcom/layer/sdk/internal/lsdkk/m$a$b;

    move-result-object v6

    new-instance v7, Lcom/layer/sdk/internal/lsdkk/m$a$a;

    sget-object v8, Lcom/layer/sdk/internal/lsdkk/m$a$a;->a:Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-direct {v7, v1, v8}, Lcom/layer/sdk/internal/lsdkk/m$a$a;-><init>(Lcom/layer/sdk/internal/lsdkk/m$i;Lcom/layer/sdk/internal/lsdkk/m$i;)V

    invoke-virtual {v6, v0, v7}, Lcom/layer/sdk/internal/lsdkk/m$a$b;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    return-object v3
.end method

.method public static b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$g;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$g;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/m$g;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkk/m$g;Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V

    return-object v0
.end method
