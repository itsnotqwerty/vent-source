.class final Lcom/google/android/gms/common/api/internal/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aFv:Lcom/google/android/gms/common/a;

.field private synthetic aFz:Lcom/google/android/gms/common/api/internal/ap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ap;Lcom/google/android/gms/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/aq;->aFz:Lcom/google/android/gms/common/api/internal/ap;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/aq;->aFv:Lcom/google/android/gms/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->aFv:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->aFz:Lcom/google/android/gms/common/api/internal/ap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/ap;->aFy:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->aFz:Lcom/google/android/gms/common/api/internal/ap;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ap;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->mX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->aFz:Lcom/google/android/gms/common/api/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ap;->nM()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->aFz:Lcom/google/android/gms/common/api/internal/ap;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ap;->aFl:Lcom/google/android/gms/common/api/a$f;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/n;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/aq;->aFz:Lcom/google/android/gms/common/api/internal/ap;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ap;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->j(Lcom/google/android/gms/common/api/internal/ah;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aq;->aFz:Lcom/google/android/gms/common/api/internal/ap;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ap;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/aq;->aFv:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/a;)V

    goto :goto_0
.end method
