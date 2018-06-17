.class public final Lcom/google/android/gms/common/api/internal/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;
.implements Lcom/google/android/gms/common/api/internal/co;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/f$b;",
        "Lcom/google/android/gms/common/api/f$c;",
        "Lcom/google/android/gms/common/api/internal/co;"
    }
.end annotation


# instance fields
.field private final aCB:Lcom/google/android/gms/common/api/internal/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cb",
            "<TO;>;"
        }
    .end annotation
.end field

.field aEz:Z

.field final synthetic aFj:Lcom/google/android/gms/common/api/internal/ah;

.field private final aFk:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field final aFl:Lcom/google/android/gms/common/api/a$f;

.field private final aFm:Lcom/google/android/gms/common/api/a$c;

.field final aFn:Lcom/google/android/gms/common/api/internal/e;

.field final aFo:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/cd;",
            ">;"
        }
    .end annotation
.end field

.field final aFp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/be",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/bj;",
            ">;"
        }
    .end annotation
.end field

.field final aFq:I

.field final aFr:Lcom/google/android/gms/common/api/internal/bm;

.field private aFs:I

.field private aFt:Lcom/google/android/gms/common/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ah;Lcom/google/android/gms/common/api/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e",
            "<TO;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFk:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFo:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFp:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFs:I

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFt:Lcom/google/android/gms/common/a;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/common/api/e;->a(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/aj;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/aj;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/internal/aj;->ol()Lcom/google/android/gms/common/api/a$h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFm:Lcom/google/android/gms/common/api/a$c;

    :goto_0
    iget-object v0, p2, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    new-instance v0, Lcom/google/android/gms/common/api/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFn:Lcom/google/android/gms/common/api/internal/e;

    iget v0, p2, Lcom/google/android/gms/common/api/e;->yo:I

    iput v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFq:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/ah;->c(Lcom/google/android/gms/common/api/internal/ah;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/api/e;->a(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFr:Lcom/google/android/gms/common/api/internal/bm;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFm:Lcom/google/android/gms/common/api/a$c;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFr:Lcom/google/android/gms/common/api/internal/bm;

    goto :goto_1
.end method

.method private final b(Lcom/google/android/gms/common/api/internal/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFn:Lcom/google/android/gms/common/api/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->mX()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/a;->a(Lcom/google/android/gms/common/api/internal/e;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/a;->a(Lcom/google/android/gms/common/api/internal/aj;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->cG(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    goto :goto_0
.end method

.method private final g(Lcom/google/android/gms/common/a;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFo:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cd;

    const/4 v1, 0x0

    sget-object v3, Lcom/google/android/gms/common/a;->aCh:Lcom/google/android/gms/common/a;

    if-ne p1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->mZ()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-virtual {v0, v3, p1, v1}, Lcom/google/android/gms/common/api/internal/cd;->a(Lcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/common/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFo:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final nD()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFs:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;I)I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFr:Lcom/google/android/gms/common/api/internal/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFr:Lcom/google/android/gms/common/api/internal/bm;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->disconnect()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->nH()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/aj;->nD()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/aj;->g(Lcom/google/android/gms/common/a;)V

    iget v0, p1, Lcom/google/android/gms/common/a;->aCj:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/api/internal/ah;->nB()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->d(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFk:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFt:Lcom/google/android/gms/common/a;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/ah;->nC()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->f(Lcom/google/android/gms/common/api/internal/ah;)Lcom/google/android/gms/common/api/internal/g;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->g(Lcom/google/android/gms/common/api/internal/ah;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->f(Lcom/google/android/gms/common/api/internal/ah;)Lcom/google/android/gms/common/api/internal/g;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aFq:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/internal/ci;->c(Lcom/google/android/gms/common/a;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFq:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/ah;->b(Lcom/google/android/gms/common/a;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/google/android/gms/common/a;->aCj:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aEz:Z

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aEz:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/ah;->d(Lcom/google/android/gms/common/api/internal/ah;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/cb;->aCz:Lcom/google/android/gms/common/api/a;

    iget-object v2, v2, Lcom/google/android/gms/common/api/a;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "API: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->d(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

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

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/am;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/am;-><init>(Lcom/google/android/gms/common/api/internal/aj;Lcom/google/android/gms/common/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/aj;->b(Lcom/google/android/gms/common/api/internal/a;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->nK()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFk:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFt:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFt:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->mP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFt:Lcom/google/android/gms/common/a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->connect()V

    goto :goto_0
.end method

.method public final cG(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->nF()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/al;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/al;-><init>(Lcom/google/android/gms/common/api/internal/aj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final connect()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->b(Lcom/google/android/gms/common/api/internal/ah;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->h(Lcom/google/android/gms/common/api/internal/ah;)Lcom/google/android/gms/common/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->c(Lcom/google/android/gms/common/api/internal/ah;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/c;->K(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;I)I

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/common/a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :cond_2
    new-instance v7, Lcom/google/android/gms/common/api/internal/ap;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-direct {v7, v0, v1, v2}, Lcom/google/android/gms/common/api/internal/ap;-><init>(Lcom/google/android/gms/common/api/internal/ah;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/cb;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/aj;->aFr:Lcom/google/android/gms/common/api/internal/bm;

    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    if-eqz v0, :cond_3

    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->disconnect()V

    :cond_3
    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->aDG:Lcom/google/android/gms/common/internal/ay;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/internal/ay;->aIz:Ljava/lang/Integer;

    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->aCt:Lcom/google/android/gms/common/api/a$b;

    iget-object v1, v5, Lcom/google/android/gms/common/api/internal/bm;->mContext:Landroid/content/Context;

    iget-object v2, v5, Lcom/google/android/gms/common/api/internal/bm;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v5, Lcom/google/android/gms/common/api/internal/bm;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v4, v5, Lcom/google/android/gms/common/api/internal/bm;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v4, v4, Lcom/google/android/gms/common/internal/ay;->aIy:Lcom/google/android/gms/internal/mb;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ay;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ma;

    iput-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/bm;->aGb:Lcom/google/android/gms/common/api/internal/bp;

    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->aFx:Ljava/util/Set;

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->aFx:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/bn;

    invoke-direct {v1, v5}, Lcom/google/android/gms/common/api/internal/bn;-><init>(Lcom/google/android/gms/common/api/internal/bm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0, v7}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/ar;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->connect()V

    goto :goto_1
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFk:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/a;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFk:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->nE()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/ak;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/ak;-><init>(Lcom/google/android/gms/common/api/internal/aj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final mX()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v0

    return v0
.end method

.method final nE()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->nH()V

    sget-object v0, Lcom/google/android/gms/common/a;->aCh:Lcom/google/android/gms/common/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->g(Lcom/google/android/gms/common/a;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->nJ()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lcom/google/android/gms/c/f;

    invoke-direct {v1}, Lcom/google/android/gms/c/f;-><init>()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->cG(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFk:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFk:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->b(Lcom/google/android/gms/common/api/internal/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->nK()V

    return-void

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method final nF()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/aj;->nH()V

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aEz:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFn:Lcom/google/android/gms/common/api/internal/e;

    sget-object v1, Lcom/google/android/gms/common/api/internal/bw;->aGn:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/api/internal/e;->a(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/ah;->d(Lcom/google/android/gms/common/api/internal/ah;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/ah;->e(Lcom/google/android/gms/common/api/internal/ah;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/aj;->nD()V

    return-void
.end method

.method public final nG()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/ah;->aEZ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->d(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFn:Lcom/google/android/gms/common/api/internal/e;

    sget-object v2, Lcom/google/android/gms/common/api/internal/ah;->aEZ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/e;->a(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFp:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aFp:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/common/api/internal/be;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/be;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    new-instance v4, Lcom/google/android/gms/common/api/internal/bz;

    new-instance v5, Lcom/google/android/gms/c/f;

    invoke-direct {v5}, Lcom/google/android/gms/c/f;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/common/api/internal/bz;-><init>(Lcom/google/android/gms/common/api/internal/be;Lcom/google/android/gms/c/f;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/api/internal/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/a;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/aj;->g(Lcom/google/android/gms/common/a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    new-instance v1, Lcom/google/android/gms/common/api/internal/an;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/an;-><init>(Lcom/google/android/gms/common/api/internal/aj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/ax;)V

    :cond_1
    return-void
.end method

.method public final nH()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFt:Lcom/google/android/gms/common/a;

    return-void
.end method

.method public final nI()Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFt:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method final nJ()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aEz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aEz:Z

    :cond_0
    return-void
.end method

.method final nK()V
    .locals 4

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/ah;->i(Lcom/google/android/gms/common/api/internal/ah;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
