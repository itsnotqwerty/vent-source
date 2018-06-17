.class final Lcom/google/android/gms/common/api/internal/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/bp;
.implements Lcom/google/android/gms/common/internal/ar;


# instance fields
.field final aCB:Lcom/google/android/gms/common/api/internal/cb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;"
        }
    .end annotation
.end field

.field private aEi:Lcom/google/android/gms/common/internal/n;

.field final synthetic aFj:Lcom/google/android/gms/common/api/internal/ah;

.field final aFl:Lcom/google/android/gms/common/api/a$f;

.field private aFx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field aFy:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ah;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/cb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ap;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ap;->aEi:Lcom/google/android/gms/common/internal/n;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ap;->aFx:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/ap;->aFy:Z

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ap;->aFl:Lcom/google/android/gms/common/api/a$f;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/ap;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/internal/n;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/n;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "GoogleApiManager"

    const-string v1, "Received null response from onSignInSuccess"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/ap;->h(Lcom/google/android/gms/common/a;)V

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ap;->aEi:Lcom/google/android/gms/common/internal/n;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ap;->aFx:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ap;->nM()V

    goto :goto_0
.end method

.method public final d(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ap;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/aq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/aq;-><init>(Lcom/google/android/gms/common/api/internal/ap;Lcom/google/android/gms/common/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h(Lcom/google/android/gms/common/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ap;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->j(Lcom/google/android/gms/common/api/internal/ah;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ap;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method final nM()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/ap;->aFy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ap;->aEi:Lcom/google/android/gms/common/internal/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ap;->aFl:Lcom/google/android/gms/common/api/a$f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ap;->aEi:Lcom/google/android/gms/common/internal/n;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ap;->aFx:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/a$f;->a(Lcom/google/android/gms/common/internal/n;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
