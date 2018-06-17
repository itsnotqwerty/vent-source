.class public final Lcom/google/android/gms/common/api/internal/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ac;


# instance fields
.field private final aCV:Lcom/google/android/gms/common/api/a$b;
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

.field final aDD:Ljava/util/concurrent/locks/Lock;

.field private final aDE:Lcom/google/android/gms/common/m;

.field final aDG:Lcom/google/android/gms/common/internal/ay;

.field private aDO:Lcom/google/android/gms/common/a;

.field final aDW:Lcom/google/android/gms/common/api/internal/ad;

.field private aDZ:I

.field private aEa:I

.field private aEb:I

.field private final aEc:Landroid/os/Bundle;

.field private final aEd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/a$d;",
            ">;"
        }
    .end annotation
.end field

.field aEe:Lcom/google/android/gms/internal/ma;

.field private aEf:Z

.field aEg:Z

.field aEh:Z

.field aEi:Lcom/google/android/gms/common/internal/n;

.field aEj:Z

.field aEk:Z

.field private aEl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ad;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/m;Lcom/google/android/gms/common/api/a$b;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ad;",
            "Lcom/google/android/gms/common/internal/ay;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/m;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEa:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEc:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEd:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEl:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/l;->aDG:Lcom/google/android/gms/common/internal/ay;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/l;->aDB:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/l;->aDE:Lcom/google/android/gms/common/m;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/l;->aCV:Lcom/google/android/gms/common/api/a$b;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/l;->aDD:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/l;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final ar(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->sE()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEi:Lcom/google/android/gms/common/internal/n;

    :cond_1
    return-void
.end method

.method private static cI(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    goto :goto_0

    :pswitch_1
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final nq()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/y;->nu()Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/i;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/i;-><init>(Lcom/google/android/gms/common/api/internal/ad;)V

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/ac;->begin()V

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aEO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/ag;->ny()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/m;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/m;-><init>(Lcom/google/android/gms/common/api/internal/l;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aEi:Lcom/google/android/gms/common/internal/n;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/l;->aEk:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/common/internal/n;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->ar(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

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

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEc:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aEV:Lcom/google/android/gms/common/api/internal/ax;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/ax;->i(Landroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEc:Landroid/os/Bundle;

    goto :goto_1
.end method

.method private final ns()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEl:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/a;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->cH(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/l;->b(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/l;->nq()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;
    .locals 2
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

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/a;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;Z)V"
        }
    .end annotation

    const v3, 0x7fffffff

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->mP()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDO:Lcom/google/android/gms/common/a;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDZ:I

    if-ge v3, v2, :cond_5

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->aDO:Lcom/google/android/gms/common/a;

    iput v3, p0, Lcom/google/android/gms/common/api/internal/l;->aDZ:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/a;->mU()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget v2, p1, Lcom/google/android/gms/common/a;->aCj:I

    invoke-static {v2}, Lcom/google/android/gms/common/m;->cN(I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method final b(Lcom/google/android/gms/common/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEf:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->mP()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final begin()V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v6, p0, Lcom/google/android/gms/common/api/internal/l;->aEg:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDO:Lcom/google/android/gms/common/a;

    iput v6, p0, Lcom/google/android/gms/common/api/internal/l;->aEa:I

    iput-boolean v8, p0, Lcom/google/android/gms/common/api/internal/l;->aEf:Z

    iput-boolean v6, p0, Lcom/google/android/gms/common/api/internal/l;->aEh:Z

    iput-boolean v6, p0, Lcom/google/android/gms/common/api/internal/l;->aEj:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->mU()Lcom/google/android/gms/common/api/a$d;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDB:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v8, p0, Lcom/google/android/gms/common/api/internal/l;->aEg:Z

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/l;->aEd:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->mU()Lcom/google/android/gms/common/api/a$d;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    new-instance v4, Lcom/google/android/gms/common/api/internal/n;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gms/common/api/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/l;Lcom/google/android/gms/common/api/a;Z)V

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/google/android/gms/common/api/internal/l;->aEf:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEg:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/internal/ay;->aIz:Ljava/lang/Integer;

    new-instance v5, Lcom/google/android/gms/common/api/internal/u;

    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/common/api/internal/u;-><init>(Lcom/google/android/gms/common/api/internal/l;B)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aCV:Lcom/google/android/gms/common/api/a$b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/f;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/l;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/l;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/ay;->aIy:Lcom/google/android/gms/internal/mb;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ay;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ma;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEe:Lcom/google/android/gms/internal/ma;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEb:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEl:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/api/internal/ag;->ny()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/o;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/common/api/internal/o;-><init>(Lcom/google/android/gms/common/api/internal/l;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final c(Lcom/google/android/gms/common/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/l;->ns()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->mP()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->ar(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/ad;->f(Lcom/google/android/gms/common/a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEV:Lcom/google/android/gms/common/api/internal/ax;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ax;->e(Lcom/google/android/gms/common/a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final cG(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/a;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->c(Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method final cH(I)Z
    .locals 5

    iget v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEa:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/y;->nw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected callback in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/common/api/internal/l;->aEb:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "mRemainingConnections="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/common/api/internal/l;->aEa:I

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/l;->cI(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/l;->cI(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GoogleApiClient connecting is in step "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but received callback for step "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/a;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->c(Lcom/google/android/gms/common/a;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final connect()V
    .locals 0

    return-void
.end method

.method public final disconnect()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/l;->ns()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/l;->ar(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ad;->f(Lcom/google/android/gms/common/a;)V

    return v2
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->cH(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEc:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/l;->nq()V

    goto :goto_0
.end method

.method final no()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/api/internal/l;->aEb:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/l;->aEb:I

    iget v1, p0, Lcom/google/android/gms/common/api/internal/l;->aEb:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/internal/l;->aEb:I

    if-gez v1, :cond_1

    const-string v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/y;->nw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/a;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/l;->c(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aDO:Lcom/google/android/gms/common/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDZ:I

    iput v2, v1, Lcom/google/android/gms/common/api/internal/ad;->aET:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->aDO:Lcom/google/android/gms/common/a;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/l;->c(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final np()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEb:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEg:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEh:Z

    if-eqz v0, :cond_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEa:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEb:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->no()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/l;->nq()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEl:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/api/internal/ag;->ny()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/r;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/common/api/internal/r;-><init>(Lcom/google/android/gms/common/api/internal/l;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final nr()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEg:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/y;->aEF:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->aEd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/a;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
