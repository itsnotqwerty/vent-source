.class public final Lcom/google/android/gms/common/api/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/aw;


# instance fields
.field private final aCC:Landroid/os/Looper;

.field private final aCF:Lcom/google/android/gms/common/api/internal/ah;

.field final aDA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/cs",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final aDB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final aDC:Lcom/google/android/gms/common/api/internal/y;

.field final aDD:Ljava/util/concurrent/locks/Lock;

.field private final aDE:Lcom/google/android/gms/common/m;

.field final aDF:Ljava/util/concurrent/locks/Condition;

.field private final aDG:Lcom/google/android/gms/common/internal/ay;

.field private final aDH:Z

.field final aDI:Z

.field private final aDJ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/internal/cg",
            "<**>;>;"
        }
    .end annotation
.end field

.field aDK:Z

.field aDL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation
.end field

.field aDM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation
.end field

.field private aDN:Lcom/google/android/gms/common/api/internal/d;

.field aDO:Lcom/google/android/gms/common/a;

.field final aDz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/cs",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/y;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/m;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Lcom/google/android/gms/common/internal/ay;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/cn;",
            ">;",
            "Lcom/google/android/gms/common/api/internal/y;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDz:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDA:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDJ:Ljava/util/Queue;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aCC:Landroid/os/Looper;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDF:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDE:Lcom/google/android/gms/common/m;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDC:Lcom/google/android/gms/common/api/internal/y;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDB:Ljava/util/Map;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDG:Lcom/google/android/gms/common/internal/ay;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDH:Z

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/a;->mU()Lcom/google/android/gms/common/api/a$d;

    move-result-object v3

    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    check-cast p9, Ljava/util/ArrayList;

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/common/api/internal/cn;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/cn;->aCz:Lcom/google/android/gms/common/api/a;

    invoke-interface {v11, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/a$f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDB:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/internal/cn;

    new-instance v1, Lcom/google/android/gms/common/api/internal/cs;

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/common/api/internal/cs;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/cn;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/a$b;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b;->aDz:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$d;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b;->aDA:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$d;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDI:Z

    invoke-static {}, Lcom/google/android/gms/common/api/internal/ah;->nz()Lcom/google/android/gms/common/api/internal/ah;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/a;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    const v3, 0x7fffffff

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->aDz:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v0

    move-object v6, v1

    move v2, v0

    move-object v4, v1

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cs;

    iget-object v1, v0, Lcom/google/android/gms/common/api/e;->aCz:Lcom/google/android/gms/common/api/a;

    iget-object v0, v0, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/b;->aDL:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/b;->aDB:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->mP()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDE:Lcom/google/android/gms/common/m;

    iget v8, v0, Lcom/google/android/gms/common/a;->aCj:I

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/m;->cC(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget v1, v0, Lcom/google/android/gms/common/a;->aCj:I

    const/4 v8, 0x4

    if-ne v1, v8, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDH:Z

    if-eqz v1, :cond_3

    if-eqz v6, :cond_2

    if-le v5, v3, :cond_0

    :cond_2
    move v5, v3

    move-object v6, v0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-le v2, v3, :cond_7

    :cond_4
    move v1, v3

    :goto_1
    move v2, v1

    move-object v4, v0

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    if-le v2, v5, :cond_6

    :goto_2
    return-object v6

    :cond_6
    move-object v6, v4

    goto :goto_2

    :cond_7
    move v1, v2

    move-object v0, v4

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/api/internal/cs;Lcom/google/android/gms/common/a;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/common/a;->mP()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDB:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/common/api/e;->aCz:Lcom/google/android/gms/common/api/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDE:Lcom/google/android/gms/common/m;

    iget v1, p2, Lcom/google/android/gms/common/a;->aCj:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/m;->cC(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;)",
            "Lcom/google/android/gms/common/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDz:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cs;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDL:Ljava/util/Map;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDL:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/b;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDG:Lcom/google/android/gms/common/internal/ay;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDC:Lcom/google/android/gms/common/api/internal/y;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/y;->aEF:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ay;->aCJ:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v2, v0, Lcom/google/android/gms/common/internal/ay;->aIx:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->mU()Lcom/google/android/gms/common/api/a$d;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gms/common/api/internal/b;->b(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/ba;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/ba;->aFx:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDC:Lcom/google/android/gms/common/api/internal/y;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/y;->aEF:Ljava/util/Set;

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/b;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cg;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/b;->b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDC:Lcom/google/android/gms/common/api/internal/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/y;->i(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/cg",
            "<+",
            "Lcom/google/android/gms/common/api/i;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/cg;->aGJ:Lcom/google/android/gms/common/api/a$d;

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDH:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/cg;->aGJ:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/b;->b(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/a;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v3, v3, Lcom/google/android/gms/common/a;->aCj:I

    if-ne v3, v7, :cond_3

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/b;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/b;->aDz:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cs;

    iget-object v0, v0, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/b;->aDC:Lcom/google/android/gms/common/api/internal/y;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {v3, v7, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/common/api/internal/cg;->g(Lcom/google/android/gms/common/api/Status;)V

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    return-object p1

    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/common/api/internal/aj;->aFr:Lcom/google/android/gms/common/api/internal/bm;

    if-nez v6, :cond_1

    move-object v0, v1

    :goto_3
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/aj;->aFr:Lcom/google/android/gms/common/api/internal/bm;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    goto :goto_3

    :cond_2
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/ah;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->mY()Landroid/content/Intent;

    move-result-object v0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDC:Lcom/google/android/gms/common/api/internal/y;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/y;->aEK:Lcom/google/android/gms/common/api/internal/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/bw;->b(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDz:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object p1

    goto :goto_2
.end method

.method public final connect()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDK:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDK:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDL:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDN:Lcom/google/android/gms/common/api/internal/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDO:Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ah;->nl()V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->aCF:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/common/api/internal/cd;

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/api/internal/cd;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    iget-object v1, v2, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/aj;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/aj;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    iget-object v0, v2, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    iget-object v1, v2, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-object v0, v3, Lcom/google/android/gms/common/api/internal/cd;->aGB:Lcom/google/android/gms/c/f;

    iget-object v0, v0, Lcom/google/android/gms/c/f;->bdU:Lcom/google/android/gms/c/r;

    new-instance v1, Lcom/google/android/gms/internal/dz;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->aCC:Landroid/os/Looper;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/dz;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/gms/common/api/internal/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/common/api/internal/c;-><init>(Lcom/google/android/gms/common/api/internal/b;B)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/c/e;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    sget-object v5, Lcom/google/android/gms/common/a;->aCh:Lcom/google/android/gms/common/a;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->mZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v5, v1}, Lcom/google/android/gms/common/api/internal/cd;->a(Lcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/common/a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDK:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDL:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDM:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDN:Lcom/google/android/gms/common/api/internal/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDN:Lcom/google/android/gms/common/api/internal/d;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDO:Lcom/google/android/gms/common/a;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/internal/by;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDF:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDL:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->aDO:Lcom/google/android/gms/common/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final nk()V
    .locals 0

    return-void
.end method
