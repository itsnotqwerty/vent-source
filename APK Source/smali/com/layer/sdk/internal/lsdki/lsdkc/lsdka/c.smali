.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;,
        Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$b;,
        Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/layer/b/d/c;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final e:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final a:Lcom/layer/b/d/k;

.field private final c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->e:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;)Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    return-object v0
.end method

.method private a(Ljava/util/LinkedHashSet;Ljava/util/List;)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v1, p0, v2, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/LinkedHashMap;I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    iget v5, v0, Lcom/layer/b/f/c/m;->d:I

    iget-object v2, v0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    if-nez v2, :cond_3

    add-int/lit8 v2, v5, 0x1

    :goto_2
    iget-object v3, v0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    if-nez v3, :cond_4

    add-int/lit8 v3, v5, 0x1

    :goto_3
    iget-object v4, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    if-nez v4, :cond_5

    add-int/lit8 v4, v5, 0x1

    :goto_4
    invoke-virtual {v0}, Lcom/layer/b/d/h;->yu()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v9}, Lcom/layer/b/f/c/h;->b()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget v9, v9, Lcom/layer/b/f/c/h;->a:I

    if-lez v9, :cond_6

    iget-object v9, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget v9, v9, Lcom/layer/b/f/c/h;->a:I

    div-int/2addr v5, v9

    :goto_5
    iget-object v9, v0, Lcom/layer/b/d/h;->bwI:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/2addr v5, v9

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v4, v9, v5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v10

    if-le v4, v10, :cond_7

    sub-int v4, v9, v5

    :goto_6
    if-ne v2, v3, :cond_8

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_7
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v3

    if-le v9, v3, :cond_9

    add-int/lit8 v3, v9, -0x1

    :goto_8
    if-lt v3, v4, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_3
    iget-object v2, v0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_5
    iget-object v4, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_4

    :cond_6
    const/16 v5, 0x33

    goto :goto_5

    :cond_7
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v4

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v10, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v10, v11, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v2

    goto :goto_7

    :cond_9
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v3

    goto :goto_8

    :cond_a
    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v6, v0, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_b
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    invoke-direct {v0, p0, v6, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/LinkedHashMap;I)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;I)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;I)",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;"
        }
    .end annotation

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    if-lez p2, :cond_d

    iget v6, v0, Lcom/layer/b/f/c/m;->d:I

    iget-object v2, v0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    if-nez v2, :cond_7

    add-int/lit8 v2, v6, 0x1

    :goto_1
    iget-object v3, v0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    if-nez v3, :cond_8

    add-int/lit8 v3, v6, 0x1

    :goto_2
    iget-object v4, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    if-nez v4, :cond_9

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v4

    :goto_3
    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/layer/b/d/h;->yu()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v7}, Lcom/layer/b/f/c/h;->j()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v5, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget v5, v5, Lcom/layer/b/f/c/h;->bpD:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v7

    if-ne v2, v7, :cond_2

    if-gt v3, v6, :cond_0

    :cond_2
    if-eqz v5, :cond_3

    if-gt v2, v4, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v3, v7, :cond_0

    :cond_3
    if-ne v2, v3, :cond_a

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    :goto_4
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_5
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v10

    if-ge v5, v10, :cond_10

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->e:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "last_message_seq is below seq bounds. Stream: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_6
    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-direct {v10}, Ljava/util/LinkedHashSet;-><init>()V

    move/from16 v5, p2

    :goto_7
    if-lt v6, v4, :cond_c

    if-lt v6, v2, :cond_5

    if-lt v6, v3, :cond_6

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_c

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_7
    iget-object v2, v0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_1

    :cond_8
    iget-object v3, v0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_2

    :cond_9
    iget-object v4, v0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_3

    :cond_a
    iget-object v7, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v10, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v10, v11, v12, v13}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v7

    goto :goto_4

    :cond_b
    move v5, v6

    goto :goto_5

    :cond_c
    move/from16 p2, v5

    invoke-virtual {v10}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v8, v0, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_8
    move v1, v0

    goto/16 :goto_0

    :cond_d
    if-gtz p2, :cond_e

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_e
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    invoke-direct {v0, p0, v8, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/LinkedHashMap;I)V

    return-object v0

    :cond_f
    move v0, v1

    goto :goto_8

    :cond_10
    move v6, v5

    goto :goto_6
.end method

.method private a(Ljava/util/List;ILjava/lang/Iterable;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;I",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/b/d/c;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;"
        }
    .end annotation

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/b/d/c;

    add-int/lit8 v3, v3, 0x1

    iget-object v5, v1, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v10, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iget v6, v1, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/layer/b/f/c/d;->bCE:Lcom/layer/b/f/c/e;

    sget-object v6, Lcom/layer/b/f/c/e;->bDq:Lcom/layer/b/f/c/e;

    if-ne v2, v6, :cond_3

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v1, v1, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v6, v1, Lcom/layer/b/f/c/d;->d:I

    if-le v2, v6, :cond_0

    iget v1, v1, Lcom/layer/b/f/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/layer/b/d/h;

    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    iget-object v1, v2, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v4, v1

    :goto_2
    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    :goto_3
    iget-object v4, v2, Lcom/layer/b/d/h;->bwI:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v1, v4, :cond_d

    invoke-virtual {v2}, Lcom/layer/b/d/h;->yu()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    invoke-virtual {v4}, Lcom/layer/b/f/c/h;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget v4, v4, Lcom/layer/b/f/c/h;->a:I

    if-lez v4, :cond_b

    iget v4, v2, Lcom/layer/b/f/c/m;->d:I

    iget-object v7, v2, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    iget v7, v7, Lcom/layer/b/f/c/h;->a:I

    div-int/2addr v4, v7

    :goto_4
    iget-object v7, v2, Lcom/layer/b/d/h;->bwI:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v1, v7, v1

    mul-int/2addr v1, v4

    if-le v5, v1, :cond_c

    sub-int v1, v5, v1

    :goto_5
    move v4, v1

    :cond_7
    :goto_6
    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-direct {v14}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget v1, v2, Lcom/layer/b/f/c/m;->d:I

    move v9, v1

    :goto_7
    if-gt v9, v4, :cond_15

    add-int v1, v3, v6

    move/from16 v0, p2

    if-lt v1, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {v14}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v12, v5, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v1

    move v4, v1

    goto/16 :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    const/16 v4, 0x33

    goto :goto_4

    :cond_c
    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v1

    goto :goto_5

    :cond_d
    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v5

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/b/d/c;

    iget v5, v1, Lcom/layer/b/f/c/d;->f:I

    if-ge v5, v4, :cond_17

    iget v1, v1, Lcom/layer/b/f/c/d;->f:I

    :goto_a
    move v4, v1

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget v8, v2, Lcom/layer/b/f/c/m;->d:I

    iget-object v1, v2, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    if-nez v1, :cond_11

    add-int/lit8 v1, v8, 0x1

    :goto_b
    iget-object v15, v2, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    if-nez v15, :cond_12

    add-int/lit8 v8, v8, 0x1

    :goto_c
    if-lt v9, v1, :cond_f

    if-lt v9, v8, :cond_10

    :cond_f
    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v15, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    invoke-virtual {v2}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-interface {v5, v15, v0, v1, v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    :goto_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object v5, v1

    :cond_10
    :goto_e
    add-int/lit8 v1, v9, -0x1

    move v9, v1

    goto/16 :goto_7

    :cond_11
    iget-object v1, v2, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b

    :cond_12
    iget-object v8, v2, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_c

    :cond_13
    new-instance v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/LinkedHashMap;I)V

    return-object v1

    :cond_14
    move-object v1, v5

    goto :goto_d

    :cond_15
    move v1, v7

    goto/16 :goto_8

    :cond_16
    move-object v5, v1

    goto :goto_e

    :cond_17
    move v1, v4

    goto :goto_a

    :cond_18
    move v4, v5

    goto/16 :goto_6
.end method

.method private a(Ljava/util/List;Z)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;Z)",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;"
        }
    .end annotation

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/LinkedHashMap;I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    iget v5, v0, Lcom/layer/b/f/c/m;->d:I

    iget-object v2, v0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    if-nez v2, :cond_8

    add-int/lit8 v2, v5, 0x1

    :goto_2
    iget-object v3, v0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    if-nez v3, :cond_9

    add-int/lit8 v3, v5, 0x1

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/layer/b/d/h;->yu()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, v0, Lcom/layer/b/f/c/m;->bEM:Lcom/layer/b/f/c/h;

    :cond_2
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/layer/b/f/c/h;->j()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v4, v4, Lcom/layer/b/f/c/h;->bpD:I

    move v6, v4

    :goto_4
    if-lt v6, v2, :cond_3

    if-gt v3, v5, :cond_1

    :cond_3
    const/4 v4, 0x0

    if-eqz p2, :cond_4

    if-ne v2, v3, :cond_c

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :cond_4
    :goto_5
    if-lt v5, v6, :cond_d

    if-eqz p2, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    :cond_5
    if-lt v5, v2, :cond_6

    if-lt v5, v3, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_9
    iget-object v3, v0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3

    :cond_a
    const/16 v4, 0x1e

    if-lt v5, v4, :cond_b

    add-int/lit8 v4, v5, -0x1e

    move v6, v4

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    move v6, v4

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v10, Lcom/layer/sdk/internal/lsdke/lsdka/a$a;->a:Lcom/layer/sdk/internal/lsdke/lsdka/a$a;

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v10, v11, v12, v13}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/lsdka/a$a;Ljava/util/UUID;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v4

    goto :goto_5

    :cond_d
    invoke-virtual {v9}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v7, v0, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_e
    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    invoke-direct {v0, p0, v7, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/LinkedHashMap;I)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/LinkedHashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;)",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    iget-object v3, v0, Lcom/layer/b/d/h;->bwI:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private a(ILjava/util/Map;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GetEventsTask: Fetching events"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$1;-><init>(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Ljava/util/UUID;Ljava/lang/Integer;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a:Lcom/layer/b/d/k;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-instance v10, Lcom/layer/b/d/k$b;

    invoke-direct {v10, v1, v0}, Lcom/layer/b/d/k$b;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/d/k$c;)V

    const/16 v0, 0xc8

    invoke-virtual {v10, v0}, Lcom/layer/b/d/k$b;->do(I)Lcom/layer/b/d/k$b;

    move-result-object v0

    new-instance v10, Lcom/layer/b/d/k$13;

    invoke-direct {v10, v1, v2, v9}, Lcom/layer/b/d/k$13;-><init>(Lcom/layer/b/d/k;Ljava/util/UUID;I)V

    invoke-virtual {v0, v10}, Lcom/layer/b/d/k$b;->a(Lcom/layer/b/d/k$a;)Lcom/b/a/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->e:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception in fetchEvents. Stream: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Seq: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    new-instance v1, Lcom/layer/a/c/e;

    new-instance v9, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$b;

    invoke-direct {v9, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$b;-><init>(Ljava/util/UUID;Ljava/lang/Integer;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v9, v3, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Lcom/layer/a/c/e;)V

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/h;

    invoke-virtual {v0}, Lcom/b/a/h;->c()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "GetEventsTask: Fetched events"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_6
    return-object v4
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;Lcom/layer/a/c/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Lcom/layer/a/c/e;)V

    return-void
.end method

.method private a(Ljava/util/List;ILjava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/b/d/h;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/b/d/c;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/layer/b/d/c;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-direct/range {p0 .. p5}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Ljava/util/List;ILjava/lang/Iterable;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    move-result-object v1

    iget-object v2, v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v2, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(ILjava/util/Map;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    if-ge v0, v4, :cond_1

    iget-object v2, v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_1
    iget-object v1, v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->e:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;)Ljava/lang/Iterable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/b/d/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GetEventsTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v12}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->e:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Historic sync first iteration. Args: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v0, v6}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Ljava/util/List;Z)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    move-result-object v0

    iget-object v1, v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(ILjava/util/Map;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Ljava/lang/Iterable;)V

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->b(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdki/b;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdki/b;->b(I)V

    invoke-static {v12}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->e:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Completing getEventsTask. EventsCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object v3

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->n()Ljava/util/List;

    move-result-object v1

    invoke-static {v12}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->e:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Subsequent sync iteration"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v1, v11}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Ljava/util/List;Z)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    move-result-object v2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->a()I

    move-result v0

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-virtual {v2, v1, v0, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->a(Ljava/util/List;ILcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->a()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Ljava/util/List;I)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    move-result-object v4

    const/4 v0, 0x0

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Ljava/util/List;)Ljava/util/LinkedHashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-direct {p0, v7, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Ljava/util/LinkedHashSet;Ljava/util/List;)Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;

    move-result-object v0

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->a()I

    move-result v5

    iget-object v8, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-virtual {v2, v4, v5, v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;ILcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->a()I

    move-result v4

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-virtual {v2, v0, v4, v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;ILcom/layer/sdk/internal/lsdki/lsdkc/c$c;)V

    :cond_8
    iget-object v4, v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->bsB:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v4, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(ILjava/util/Map;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$c;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->a()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;->a()I

    move-result v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Ljava/util/List;ILjava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/HashMap;Ljava/util/HashMap;)V

    :cond_a
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Ljava/lang/Iterable;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/h;

    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, v0, Lcom/layer/b/d/h;->bwI:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sub-int v1, v2, v1

    if-gtz v1, :cond_c

    move v1, v6

    :cond_c
    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    move v2, v1

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/q;->a(Lcom/layer/b/f/c/m;)I

    move-result v10

    if-ne v1, v10, :cond_e

    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v6

    :cond_e
    invoke-virtual {v0}, Lcom/layer/b/d/h;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$c;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_f
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0, v8}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Ljava/util/HashMap;)V

    :cond_10
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->c:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0, v5}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->b(Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c;->a(Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/c$a;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
