.class final Lcom/google/android/gms/common/api/internal/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/aw;


# instance fields
.field private final aCC:Landroid/os/Looper;

.field final aDD:Ljava/util/concurrent/locks/Lock;

.field private final aEU:Lcom/google/android/gms/common/api/internal/y;

.field final aGT:Lcom/google/android/gms/common/api/internal/ad;

.field final aGU:Lcom/google/android/gms/common/api/internal/ad;

.field private final aGV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final aGW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final aGX:Lcom/google/android/gms/common/api/a$f;

.field aGY:Landroid/os/Bundle;

.field aGZ:Lcom/google/android/gms/common/a;

.field aHa:Lcom/google/android/gms/common/a;

.field aHb:Z

.field private aHc:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/y;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/y;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/m;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;",
            "Lcom/google/android/gms/common/internal/ay;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/cn;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/cn;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGW:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aHb:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cp;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/cp;->aEU:Lcom/google/android/gms/common/api/internal/y;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aCC:Landroid/os/Looper;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGX:Lcom/google/android/gms/common/api/a$f;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ad;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/cp;->aEU:Lcom/google/android/gms/common/api/internal/y;

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v12, Lcom/google/android/gms/common/api/internal/cq;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/common/api/internal/cq;-><init>(Lcom/google/android/gms/common/api/internal/cp;B)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p13

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/common/api/internal/ad;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/y;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/ax;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    new-instance v1, Lcom/google/android/gms/common/api/internal/ad;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/cp;->aEU:Lcom/google/android/gms/common/api/internal/y;

    new-instance v12, Lcom/google/android/gms/common/api/internal/cr;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/google/android/gms/common/api/internal/cr;-><init>(Lcom/google/android/gms/common/api/internal/cp;B)V

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p12

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/common/api/internal/ad;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/y;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/ax;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    new-instance v2, Landroid/support/v4/g/a;

    invoke-direct {v2}, Landroid/support/v4/g/a;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$d;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$d;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v2, v1, v4}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGV:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/y;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/cp;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/y;",
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
            ">;)",
            "Lcom/google/android/gms/common/api/internal/cp;"
        }
    .end annotation

    new-instance v7, Landroid/support/v4/g/a;

    invoke-direct {v7}, Landroid/support/v4/g/a;-><init>()V

    new-instance v8, Landroid/support/v4/g/a;

    invoke-direct {v8}, Landroid/support/v4/g/a;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$d;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$d;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    new-instance v13, Landroid/support/v4/g/a;

    invoke-direct {v13}, Landroid/support/v4/g/a;-><init>()V

    new-instance v14, Landroid/support/v4/g/a;

    invoke-direct {v14}, Landroid/support/v4/g/a;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/a;->mU()Lcom/google/android/gms/common/api/a$d;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v13, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast p9, Ljava/util/ArrayList;

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_8

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/common/api/internal/cn;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/cn;->aCz:Lcom/google/android/gms/common/api/a;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/cn;->aCz:Lcom/google/android/gms/common/api/a;

    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Lcom/google/android/gms/common/api/internal/cp;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/common/api/internal/cp;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/y;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/cp;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/cp;->j(Lcom/google/android/gms/common/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/cp;->j(Lcom/google/android/gms/common/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cp;->nV()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aEU:Lcom/google/android/gms/common/api/internal/y;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGY:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/y;->i(Landroid/os/Bundle;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cp;->nU()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cp;->nU()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/cp;->i(Lcom/google/android/gms/common/a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ad;->disconnect()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/cp;->j(Lcom/google/android/gms/common/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ad;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/cp;->i(Lcom/google/android/gms/common/a;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    iget v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aET:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/ad;->aET:I

    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/cp;->i(Lcom/google/android/gms/common/a;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/cp;IZ)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/y;->h(IZ)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    return-void
.end method

.method private final i(Lcom/google/android/gms/common/a;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/y;->e(Lcom/google/android/gms/common/a;)V

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cp;->nU()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static j(Lcom/google/android/gms/common/a;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final nU()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGW:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final nV()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    iget v0, v0, Lcom/google/android/gms/common/a;->aCj:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;
    .locals 7
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

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/cg;->aGJ:Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cp;->aGV:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cp;->aGV:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/ad;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cp;->nV()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGX:Lcom/google/android/gms/common/api/a$f;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/internal/cg;->g(Lcom/google/android/gms/common/api/Status;)V

    :goto_1
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/cp;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/cp;->aGX:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/a$f;->mY()Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v0, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/ad;->b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/ad;->b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object p1

    goto :goto_1
.end method

.method public final connect()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHb:Z

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ad;->connect()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ad;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHa:Lcom/google/android/gms/common/a;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGZ:Lcom/google/android/gms/common/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ad;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ad;->disconnect()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cp;->nU()V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/ad;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "anonClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/ad;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final isConnected()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/ad;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/ad;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cp;->nV()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aHc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cp;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final nk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGT:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ad;->nk()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cp;->aGU:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ad;->nk()V

    return-void
.end method
