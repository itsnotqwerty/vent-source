.class public final Lcom/google/android/gms/common/api/internal/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/aw;
.implements Lcom/google/android/gms/common/api/internal/co;


# instance fields
.field aCV:Lcom/google/android/gms/common/api/a$b;
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

.field aDB:Ljava/util/Map;
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

.field final aDE:Lcom/google/android/gms/common/m;

.field aDG:Lcom/google/android/gms/common/internal/ay;

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

.field final aEO:Ljava/util/concurrent/locks/Condition;

.field final aEP:Lcom/google/android/gms/common/api/internal/af;

.field final aEQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a$d",
            "<*>;",
            "Lcom/google/android/gms/common/a;",
            ">;"
        }
    .end annotation
.end field

.field volatile aER:Lcom/google/android/gms/common/api/internal/ac;

.field private aES:Lcom/google/android/gms/common/a;

.field aET:I

.field final aEU:Lcom/google/android/gms/common/api/internal/y;

.field final aEV:Lcom/google/android/gms/common/api/internal/ax;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/y;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/m;Ljava/util/Map;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/api/a$b;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/ax;)V
    .locals 3
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
            ">;",
            "Lcom/google/android/gms/common/api/internal/ax;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aES:Lcom/google/android/gms/common/a;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ad;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/ad;->aDE:Lcom/google/android/gms/common/m;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/ad;->aDG:Lcom/google/android/gms/common/internal/ay;

    iput-object p8, p0, Lcom/google/android/gms/common/api/internal/ad;->aDB:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/common/api/internal/ad;->aCV:Lcom/google/android/gms/common/api/a$b;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    iput-object p11, p0, Lcom/google/android/gms/common/api/internal/ad;->aEV:Lcom/google/android/gms/common/api/internal/ax;

    check-cast p10, Ljava/util/ArrayList;

    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Lcom/google/android/gms/common/api/internal/cn;

    iput-object p0, v0, Lcom/google/android/gms/common/api/internal/cn;->aGS:Lcom/google/android/gms/common/api/internal/co;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/af;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/common/api/internal/af;-><init>(Lcom/google/android/gms/common/api/internal/ad;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aEP:Lcom/google/android/gms/common/api/internal/af;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aEO:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Lcom/google/android/gms/common/api/internal/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/w;-><init>(Lcom/google/android/gms/common/api/internal/ad;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/a;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/ac;->a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method final a(Lcom/google/android/gms/common/api/internal/ae;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aEP:Lcom/google/android/gms/common/api/internal/af;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/af;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ad;->aEP:Lcom/google/android/gms/common/api/internal/af;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/af;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;
    .locals 1
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

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ni()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ac;->b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;

    move-result-object v0

    return-object v0
.end method

.method public final cG(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ac;->cG(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/ac;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/ac;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->mU()Lcom/google/android/gms/common/api/a$d;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0, v1, p3}, Lcom/google/android/gms/common/api/a$f;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final f(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ad;->aES:Lcom/google/android/gms/common/a;

    new-instance v0, Lcom/google/android/gms/common/api/internal/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/w;-><init>(Lcom/google/android/gms/common/api/internal/ad;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/ac;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aEO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ac;->h(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/i;

    return v0
.end method

.method public final nk()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ad;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    check-cast v0, Lcom/google/android/gms/common/api/internal/i;

    iget-boolean v1, v0, Lcom/google/android/gms/common/api/internal/i;->aDX:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/i;->aDX:Z

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/y;->aEK:Lcom/google/android/gms/common/api/internal/bw;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/bw;->release()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i;->disconnect()Z

    :cond_0
    return-void
.end method
