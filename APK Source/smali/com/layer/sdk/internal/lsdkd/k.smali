.class public Lcom/layer/sdk/internal/lsdkd/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/k$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdkd/c$a;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J

.field private f:Lcom/layer/sdk/internal/lsdkd/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/k;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdkd/k$a;Lcom/layer/sdk/internal/lsdkd/c$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/k;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->e:J

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/k;->f:Lcom/layer/sdk/internal/lsdkd/k$a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/k;->a:Lcom/layer/sdk/internal/lsdkd/c$a;

    return-void
.end method

.method private a(Ljava/util/Queue;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v12

    :goto_0
    return-object v0

    :cond_0
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v3

    move v10, v11

    move v6, v11

    move-object v2, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/b;->a()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/k$1;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v8

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_0

    move v0, v10

    move v1, v6

    :goto_2
    move v10, v0

    move v6, v1

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v1

    sget-object v6, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    if-ne v1, v6, :cond_a

    move-object v4, v0

    move v6, v5

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    move v0, v5

    move v1, v6

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v10, :cond_3

    move-object v0, v12

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v4, :cond_7

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    if-nez v6, :cond_8

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/layer/sdk/internal/lsdkd/e;

    if-eqz v10, :cond_6

    invoke-interface {v7}, Lcom/layer/sdk/internal/lsdkd/e;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/b;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/b;->getOldValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v4, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v5, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    if-eqz v10, :cond_9

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    move-object v0, v12

    goto/16 :goto_0

    :cond_a
    move v0, v10

    move v1, v5

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/lsdkd/k$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->f:Lcom/layer/sdk/internal/lsdkd/k$a;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/c$a;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->a:Lcom/layer/sdk/internal/lsdkd/c$a;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Emitter mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/d;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Changeable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/k$a;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/k;->f:Lcom/layer/sdk/internal/lsdkd/k$a;

    return-void
.end method

.method protected b()V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/d;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/d;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/k;->a(Ljava/util/Queue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->a:Lcom/layer/sdk/internal/lsdkd/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/k;->a:Lcom/layer/sdk/internal/lsdkd/c$a;

    new-instance v2, Lcom/layer/sdk/internal/lsdkd/c;

    invoke-direct {v2, v1}, Lcom/layer/sdk/internal/lsdkd/c;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/layer/sdk/internal/lsdkd/c$a;->a(Lcom/layer/sdk/internal/lsdkd/c;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeableTransaction{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/k;->f:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkd/k;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
