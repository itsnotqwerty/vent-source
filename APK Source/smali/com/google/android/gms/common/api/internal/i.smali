.class public final Lcom/google/android/gms/common/api/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ac;


# instance fields
.field final aDW:Lcom/google/android/gms/common/api/internal/ad;

.field aDX:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ad;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDX:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/a;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/cg;)Lcom/google/android/gms/common/api/internal/cg;
    .locals 3
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

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/y;->aEK:Lcom/google/android/gms/common/api/internal/bw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/bw;->b(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/cg;->aGJ:Lcom/google/android/gms/common/api/a$d;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/y;->aEE:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aEQ:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/cg;->aGJ:Lcom/google/android/gms/common/api/a$d;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/cg;->g(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object p1

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/common/internal/aj;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/internal/aj;->ol()Lcom/google/android/gms/common/api/a$h;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/cg;->a(Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    new-instance v1, Lcom/google/android/gms/common/api/internal/j;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/j;-><init>(Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/common/api/internal/ac;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ad;->a(Lcom/google/android/gms/common/api/internal/ae;)V

    goto :goto_0
.end method

.method public final begin()V
    .locals 0

    return-void
.end method

.method public final cG(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ad;->f(Lcom/google/android/gms/common/a;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEV:Lcom/google/android/gms/common/api/internal/ax;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/i;->aDX:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/ax;->h(IZ)V

    return-void
.end method

.method public final connect()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDX:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    new-instance v1, Lcom/google/android/gms/common/api/internal/k;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/k;-><init>(Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/common/api/internal/ac;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ad;->a(Lcom/google/android/gms/common/api/internal/ae;)V

    :cond_0
    return-void
.end method

.method public final disconnect()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/i;->aDX:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/y;->nv()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDX:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/y;->aEJ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/bt;

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/bt;->aGg:Lcom/google/android/gms/common/api/k;

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/i;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/ad;->f(Lcom/google/android/gms/common/a;)V

    goto :goto_0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
