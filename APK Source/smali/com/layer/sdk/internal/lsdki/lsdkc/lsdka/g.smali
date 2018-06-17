.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;
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


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final c:Lcom/layer/b/d/h;

.field private final d:Ljava/lang/Long;

.field private final e:Lcom/layer/b/d/k;

.field private final f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/h;Ljava/lang/Long;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->c:Lcom/layer/b/d/h;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->d:Ljava/lang/Long;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->e:Lcom/layer/b/d/k;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    return-void
.end method

.method private a(Lcom/layer/b/f/c/n;)V
    .locals 7

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->c:Lcom/layer/b/d/h;

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

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a(Ljava/lang/Long;Ljava/lang/Iterable;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/layer/b/f/c/n;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/layer/b/f/c/n;->a:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a(Ljava/lang/Long;Ljava/util/Map;)V

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->c:Lcom/layer/b/d/h;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->c:Lcom/layer/b/d/h;

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
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

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

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a(Ljava/lang/Long;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p1}, Lcom/layer/b/f/c/n;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/layer/b/f/c/n;->b:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a(Ljava/lang/Long;Ljava/lang/Iterable;)V

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

    const/4 v1, 0x0

    const/4 v8, 0x6

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GetStreamMetadataTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->e:Lcom/layer/b/d/k;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->c:Lcom/layer/b/d/h;

    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->d:Ljava/lang/Long;

    new-instance v4, Lcom/layer/b/d/k$f;

    invoke-direct {v4, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    const/16 v7, 0xc8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v4

    new-instance v5, Lcom/layer/b/d/k$24;

    invoke-direct {v5, v0, v3, v2}, Lcom/layer/b/d/k$24;-><init>(Lcom/layer/b/d/k;Ljava/lang/Long;Ljava/util/UUID;)V

    invoke-virtual {v4, v5}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->d:Ljava/lang/Long;

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a(Lcom/layer/b/f/c/n;)V

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->f:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->c:Lcom/layer/b/d/h;

    invoke-virtual {v3}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v3

    iget-wide v4, v0, Lcom/layer/b/f/c/n;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Ljava/util/UUID;Ljava/lang/Long;)V
    :try_end_1
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to sync metadata for stream ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->c:Lcom/layer/b/d/h;

    invoke-virtual {v4}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->d:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v2, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a(Lcom/layer/a/c/e;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->b(Lcom/layer/b/f/c/n;)V
    :try_end_2
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v8}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to sync metadata for stream ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->c:Lcom/layer/b/d/h;

    invoke-virtual {v4}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->d:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    new-instance v2, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a(Lcom/layer/a/c/e;)V

    move-object v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/g;->a(Ljava/lang/Void;)Lcom/layer/b/f/c/n;

    move-result-object v0

    return-object v0
.end method
