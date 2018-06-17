.class public final Lcom/google/android/gms/common/api/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ac;


# instance fields
.field private final aDW:Lcom/google/android/gms/common/api/internal/ad;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/w;->aDW:Lcom/google/android/gms/common/api/internal/ad;

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

.method public final begin()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/w;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ad;->aEU:Lcom/google/android/gms/common/api/internal/y;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/y;->aEF:Ljava/util/Set;

    return-void
.end method

.method public final cG(I)V
    .locals 0

    return-void
.end method

.method public final connect()V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/w;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/internal/l;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/ad;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v3, v1, Lcom/google/android/gms/common/api/internal/ad;->aDB:Ljava/util/Map;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/ad;->aDE:Lcom/google/android/gms/common/m;

    iget-object v5, v1, Lcom/google/android/gms/common/api/internal/ad;->aCV:Lcom/google/android/gms/common/api/a$b;

    iget-object v6, v1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    iget-object v7, v1, Lcom/google/android/gms/common/api/internal/ad;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/api/internal/l;-><init>(Lcom/google/android/gms/common/api/internal/ad;Lcom/google/android/gms/common/internal/ay;Ljava/util/Map;Lcom/google/android/gms/common/m;Lcom/google/android/gms/common/api/a$b;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aER:Lcom/google/android/gms/common/api/internal/ac;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/ac;->begin()V

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aEO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ad;->aDD:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disconnect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
