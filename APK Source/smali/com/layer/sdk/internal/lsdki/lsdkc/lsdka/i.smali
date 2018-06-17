.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Ljava/lang/Void;",
        "Lcom/layer/b/f/c/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/b/d/h;

.field private final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Long;

.field private final e:Lcom/layer/b/d/k;

.field private final f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/h;Ljava/lang/Iterable;Ljava/lang/Long;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/b/d/h;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;",
            "Ljava/lang/Long;",
            "Lcom/layer/b/d/k;",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a:Lcom/layer/b/d/h;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->c:Ljava/lang/Iterable;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->d:Ljava/lang/Long;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->e:Lcom/layer/b/d/k;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    return-void
.end method

.method private a(Lcom/layer/b/f/c/n;)V
    .locals 7

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a:Lcom/layer/b/d/h;

    iget-object v2, v2, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-interface {v0, v1, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkk/m$g;

    move-result-object v3

    if-nez p1, :cond_3

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkk/m$g;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a(Ljava/lang/Long;Ljava/lang/Iterable;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/layer/b/f/c/n;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a(Ljava/lang/Long;Ljava/util/Map;)V

    :cond_2
    return-void

    :cond_3
    new-instance v4, Lcom/layer/sdk/internal/lsdkk/m$g;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkk/m$g;-><init>()V

    invoke-virtual {p1}, Lcom/layer/b/f/c/n;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p1, Lcom/layer/b/f/c/n;->c:J

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lcom/layer/b/f/c/n;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v6, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v6, v0, v2}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    invoke-virtual {v4, v1, v6}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    invoke-static {v3, v4}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkk/m$g;Lcom/layer/sdk/internal/lsdkk/m$g;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkk/m$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Long;Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a:Lcom/layer/b/d/h;

    iget-object v3, v3, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;Ljava/lang/Long;JLjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Long;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-direct {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;-><init>()V

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    invoke-virtual {v4, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a:Lcom/layer/b/d/h;

    iget-object v1, v1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v4, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/Long;)V

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-virtual {v4, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c(Ljava/lang/Long;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a(Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->d(Ljava/lang/Iterable;)V

    return-void
.end method

.method private b(Lcom/layer/b/f/c/n;)V
    .locals 2

    iget-wide v0, p1, Lcom/layer/b/f/c/n;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/b/f/c/n;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a(Ljava/lang/Long;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p1}, Lcom/layer/b/f/c/n;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a(Ljava/lang/Long;Ljava/lang/Iterable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Void;)Lcom/layer/b/f/c/n;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PatchStreamMetadataTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/layer/b/f/c/n;

    invoke-direct {v1}, Lcom/layer/b/f/c/n;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v1, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    :cond_1
    iget-object v4, v1, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    :cond_3
    iget-object v5, v1, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->e:Lcom/layer/b/d/k;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a:Lcom/layer/b/d/h;

    invoke-virtual {v3}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->d:Ljava/lang/Long;

    new-instance v5, Lcom/layer/b/d/k$f;

    invoke-direct {v5, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/16 v8, 0xc8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v5

    new-instance v6, Lcom/layer/b/d/k$25;

    invoke-direct {v6, v0, v4, v3, v1}, Lcom/layer/b/d/k$25;-><init>(Lcom/layer/b/d/k;Ljava/lang/Long;Ljava/util/UUID;Lcom/layer/b/f/c/n;)V

    invoke-virtual {v5, v6}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->d:Ljava/lang/Long;

    if-nez v1, :cond_7

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a(Lcom/layer/b/f/c/n;)V

    :goto_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->c:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    iget-wide v4, v0, Lcom/layer/b/f/c/n;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c(Ljava/lang/Long;)V
    :try_end_1
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, p1, v3, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a(Lcom/layer/a/c/e;)V

    move-object v0, v2

    :cond_5
    :goto_3
    return-object v0

    :catch_1
    move-exception v1

    instance-of v0, v1, Lcom/layer/b/d/m;

    if-eqz v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/layer/b/d/m;

    iget-object v0, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    sget-object v3, Lcom/layer/b/d/f;->bvY:Lcom/layer/b/d/f;

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->g(Ljava/lang/Long;)V

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/layer/a/c/e;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, p1, v3, v1}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a(Lcom/layer/a/c/e;)V

    move-object v0, v2

    goto :goto_3

    :cond_7
    :try_start_2
    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->b(Lcom/layer/b/f/c/n;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->c:Ljava/lang/Iterable;

    invoke-interface {v1, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->d(Ljava/lang/Iterable;)V

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a:Lcom/layer/b/d/h;

    invoke-virtual {v3}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v3

    iget-wide v4, v0, Lcom/layer/b/f/c/n;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Ljava/util/UUID;Ljava/lang/Long;)V
    :try_end_2
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/i;->a(Ljava/lang/Void;)Lcom/layer/b/f/c/n;

    move-result-object v0

    return-object v0
.end method
