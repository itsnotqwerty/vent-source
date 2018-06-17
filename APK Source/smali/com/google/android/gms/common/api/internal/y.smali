.class public final Lcom/google/android/gms/common/api/internal/y;
.super Lcom/google/android/gms/common/api/f;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ax;


# instance fields
.field private final aCC:Landroid/os/Looper;

.field private final aCS:I

.field private final aCU:Lcom/google/android/gms/common/c;

.field private aCV:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;"
        }
    .end annotation
.end field

.field private aCY:Z

.field private aDB:Ljava/util/Map;
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

.field private final aDD:Ljava/util/concurrent/locks/Lock;

.field private aDG:Lcom/google/android/gms/common/internal/ay;

.field final aDJ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/internal/cg",
            "<**>;>;"
        }
    .end annotation
.end field

.field private aEA:J

.field private aEB:J

.field private final aEC:Lcom/google/android/gms/common/api/internal/aa;

.field private aED:Lcom/google/android/gms/common/api/internal/as;

.field final aEE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;"
        }
    .end annotation
.end field

.field aEF:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final aEG:Lcom/google/android/gms/common/api/internal/bg;

.field private final aEH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/cn;",
            ">;"
        }
    .end annotation
.end field

.field private aEI:Ljava/lang/Integer;

.field aEJ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/bt;",
            ">;"
        }
    .end annotation
.end field

.field final aEK:Lcom/google/android/gms/common/api/internal/bw;

.field private final aEL:Lcom/google/android/gms/common/internal/g;

.field private final aEx:Lcom/google/android/gms/common/internal/f;

.field private aEy:Lcom/google/android/gms/common/api/internal/aw;

.field private volatile aEz:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/api/a$b;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ay;",
            "Lcom/google/android/gms/common/c;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/f$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/f$c;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/internal/cn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/f;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    const-wide/32 v2, 0x1d4c0

    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEA:J

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEB:J

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEF:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/internal/bg;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/bg;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEG:Lcom/google/android/gms/common/api/internal/bg;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;

    new-instance v2, Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/z;-><init>(Lcom/google/android/gms/common/api/internal/y;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEL:Lcom/google/android/gms/common/internal/g;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/y;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/y;->aCY:Z

    new-instance v2, Lcom/google/android/gms/common/internal/f;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aEL:Lcom/google/android/gms/common/internal/g;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/f;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/y;->aCC:Landroid/os/Looper;

    new-instance v2, Lcom/google/android/gms/common/api/internal/aa;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/common/api/internal/aa;-><init>(Lcom/google/android/gms/common/api/internal/y;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEC:Lcom/google/android/gms/common/api/internal/aa;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/y;->aCU:Lcom/google/android/gms/common/c;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/common/api/internal/y;->aCS:I

    iget v2, p0, Lcom/google/android/gms/common/api/internal/y;->aCS:I

    if-ltz v2, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    :cond_0
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDB:Ljava/util/Map;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEH:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gms/common/api/internal/bw;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/internal/bw;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEK:Lcom/google/android/gms/common/api/internal/bw;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/f$b;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/google/android/gms/common/internal/f;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v4, Lcom/google/android/gms/common/internal/f;->aHi:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "GmsClientEvents"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x3e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "registerConnectionCallbacks(): listener "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already registered"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v4, Lcom/google/android/gms/common/internal/f;->aHh:Lcom/google/android/gms/common/internal/g;

    invoke-interface {v5}, Lcom/google/android/gms/common/internal/g;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v6, v4, Lcom/google/android/gms/common/internal/f;->aHi:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/f$c;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/api/f$c;)V

    goto :goto_2

    :cond_4
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/y;->aDG:Lcom/google/android/gms/common/internal/ay;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aCV:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEz:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/y;->nt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/y;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/y;->nu()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/y;->nt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private final cJ(I)V
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/y;->cK(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/y;->cK(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use sign-in mode: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Mode was already set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v12

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v11

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_4
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/y;->aCY:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aCC:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/y;->aCU:Lcom/google/android/gms/common/c;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/y;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/y;->aDB:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/y;->aCV:Lcom/google/android/gms/common/api/a$b;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/y;->aEH:Ljava/util/ArrayList;

    move-object v10, p0

    move v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/y;Z)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    goto/16 :goto_0

    :pswitch_1
    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/y;->aCY:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aCC:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/y;->aCU:Lcom/google/android/gms/common/c;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/y;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/y;->aDB:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/y;->aCV:Lcom/google/android/gms/common/api/a$b;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/y;->aEH:Ljava/util/ArrayList;

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/y;Z)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aCC:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/y;->aCU:Lcom/google/android/gms/common/c;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/y;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/y;->aDB:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/y;->aCV:Lcom/google/android/gms/common/api/a$b;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/y;->aEH:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/common/api/internal/cp;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/y;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/api/internal/ad;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/y;->aCC:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/y;->aCU:Lcom/google/android/gms/common/c;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/y;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/y;->aDB:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/y;->aCV:Lcom/google/android/gms/common/api/a$b;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/y;->aEH:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/ad;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/y;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/ax;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static cK(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SIGN_IN_MODE_NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "SIGN_IN_MODE_REQUIRED"

    goto :goto_0

    :pswitch_2
    const-string v0, "SIGN_IN_MODE_OPTIONAL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/lang/Iterable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/common/api/a$f;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    :goto_2
    return v2

    :cond_1
    const/4 v2, 0x3

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private final nt()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/common/internal/f;->aHl:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/aw;->connect()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/a$f;",
            ">(",
            "Lcom/google/android/gms/common/api/a$d",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/f$b;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/f;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/common/internal/f;->aHi:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "GmsClientEvents"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unregisterConnectionCallbacks(): listener "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-boolean v2, v0, Lcom/google/android/gms/common/internal/f;->aHn:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/internal/f;->aHj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/f$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/api/f$c;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/bt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;
    .locals 4
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

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/cg;->aGJ:Lcom/google/android/gms/common/api/a$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/cg;->aGJ:Lcom/google/android/gms/common/api/a$d;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/cg;->aCz:Lcom/google/android/gms/common/api/a;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/cg;->aCz:Lcom/google/android/gms/common/api/a;

    iget-object v0, v0, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " required for this call."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "the API"

    goto :goto_1

    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEz:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cg;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aEK:Lcom/google/android/gms/common/api/internal/bw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/bw;->b(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->aDc:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/cg;->g(Lcom/google/android/gms/common/api/Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_3
    return-object p1

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/aw;->b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3
.end method

.method public final b(Lcom/google/android/gms/common/api/f$c;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/f;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/f;->aHk:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GmsClientEvents"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unregisterConnectionFailedListener(): listener "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/bt;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;

    if-nez v0, :cond_1

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GoogleApiClientImpl"

    const-string v1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/y;->nv()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/aw;->nk()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final cF(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    const/16 v1, 0x21

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Illegal sign-in mode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->b(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/y;->cJ(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/y;->nt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final connect()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/y;->aCS:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->cF(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/y;->e(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEI:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEK:Lcom/google/android/gms/common/api/internal/bw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bw;->release()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/aw;->disconnect()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aEG:Lcom/google/android/gms/common/api/internal/bg;

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/bg;->aFU:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bc;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/bc;->aFQ:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/bg;->aFU:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/internal/by;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->cancel()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/y;->nu()Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->nZ()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/y;->aEz:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEK:Lcom/google/android/gms/common/api/internal/bw;

    const-string v1, " mUnconsumedApiCalls.size()="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bw;->aGp:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/aw;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/google/android/gms/common/a;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->mContext:Landroid/content/Context;

    iget v3, p1, Lcom/google/android/gms/common/a;->aCj:I

    invoke-static {v0, v3}, Lcom/google/android/gms/common/m;->t(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/y;->nu()Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEz:Z

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_0
    const-string v4, "onConnectionFailure must only be called on the Handler thread"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v3, Lcom/google/android/gms/common/internal/f;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v3, Lcom/google/android/gms/common/internal/f;->aHk:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v3, Lcom/google/android/gms/common/internal/f;->aHm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_1
    :goto_1
    if-ge v2, v6, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/common/api/f$c;

    iget-boolean v7, v3, Lcom/google/android/gms/common/internal/f;->aHl:Z

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/google/android/gms/common/internal/f;->aHm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-eq v7, v5, :cond_5

    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->nZ()V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v7, v3, Lcom/google/android/gms/common/internal/f;->aHk:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/f$c;->a(Lcom/google/android/gms/common/a;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aCC:Landroid/os/Looper;

    return-object v0
.end method

.method public final h(IZ)V
    .locals 9

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEz:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/y;->aEz:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aED:Lcom/google/android/gms/common/api/internal/as;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/common/api/internal/ab;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/internal/ab;-><init>(Lcom/google/android/gms/common/api/internal/y;)V

    invoke-static {v0, v3}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/at;)Lcom/google/android/gms/common/api/internal/as;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aED:Lcom/google/android/gms/common/api/internal/as;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEC:Lcom/google/android/gms/common/api/internal/aa;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aEC:Lcom/google/android/gms/common/api/internal/aa;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/api/internal/aa;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/y;->aEA:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/common/api/internal/aa;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEC:Lcom/google/android/gms/common/api/internal/aa;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aEC:Lcom/google/android/gms/common/api/internal/aa;

    invoke-virtual {v3, v8}, Lcom/google/android/gms/common/api/internal/aa;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/y;->aEB:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/common/api/internal/aa;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEK:Lcom/google/android/gms/common/api/internal/bw;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bw;->aGp:Ljava/util/Set;

    sget-object v3, Lcom/google/android/gms/common/api/internal/bw;->aGo:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    sget-object v6, Lcom/google/android/gms/common/api/internal/bw;->aGn:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    const-string v4, "onUnintentionalDisconnection must only be called on the Handler thread"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    iget-object v0, v3, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v3, Lcom/google/android/gms/common/internal/f;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/f;->aHn:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v3, Lcom/google/android/gms/common/internal/f;->aHi:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v3, Lcom/google/android/gms/common/internal/f;->aHm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_3
    :goto_2
    if-ge v2, v6, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/common/api/f$b;

    iget-boolean v7, v3, Lcom/google/android/gms/common/internal/f;->aHl:Z

    if-eqz v7, :cond_5

    iget-object v7, v3, Lcom/google/android/gms/common/internal/f;->aHm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v7, v5, :cond_5

    iget-object v7, v3, Lcom/google/android/gms/common/internal/f;->aHi:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/f$b;->cG(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, v3, Lcom/google/android/gms/common/internal/f;->aHj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/f;->aHn:Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/f;->nZ()V

    if-ne p1, v8, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/y;->nt()V

    :cond_6
    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aDJ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cg;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/f;->b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/y;->aEx:Lcom/google/android/gms/common/internal/f;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_1
    const-string v4, "onConnectionSuccess must only be called on the Handler thread"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    iget-object v4, v3, Lcom/google/android/gms/common/internal/f;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v0, v3, Lcom/google/android/gms/common/internal/f;->aHn:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->at(Z)V

    iget-object v0, v3, Lcom/google/android/gms/common/internal/f;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/f;->aHn:Z

    iget-object v0, v3, Lcom/google/android/gms/common/internal/f;->aHj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->at(Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v3, Lcom/google/android/gms/common/internal/f;->aHi:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, v3, Lcom/google/android/gms/common/internal/f;->aHm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_1
    :goto_4
    if-ge v2, v6, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/common/api/f$b;

    iget-boolean v7, v3, Lcom/google/android/gms/common/internal/f;->aHl:Z

    if-eqz v7, :cond_5

    iget-object v7, v3, Lcom/google/android/gms/common/internal/f;->aHh:Lcom/google/android/gms/common/internal/g;

    invoke-interface {v7}, Lcom/google/android/gms/common/internal/g;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v3, Lcom/google/android/gms/common/internal/f;->aHm:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    if-ne v7, v5, :cond_5

    iget-object v7, v3, Lcom/google/android/gms/common/internal/f;->aHj:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/f$b;->h(Landroid/os/Bundle;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :try_start_1
    iget-object v0, v3, Lcom/google/android/gms/common/internal/f;->aHj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/f;->aHn:Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEy:Lcom/google/android/gms/common/api/internal/aw;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/aw;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nu()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/y;->aEz:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEz:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEC:Lcom/google/android/gms/common/api/internal/aa;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/aa;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aEC:Lcom/google/android/gms/common/api/internal/aa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/aa;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aED:Lcom/google/android/gms/common/api/internal/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aED:Lcom/google/android/gms/common/api/internal/as;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/as;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/y;->aED:Lcom/google/android/gms/common/api/internal/as;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method final nv()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/y;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final nw()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/f;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
