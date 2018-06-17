.class public final Lcom/google/android/gms/common/api/internal/cn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# instance fields
.field public final aCz:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<*>;"
        }
    .end annotation
.end field

.field private final aEo:Z

.field aGS:Lcom/google/android/gms/common/api/internal/co;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cn;->aCz:Lcom/google/android/gms/common/api/a;

    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/cn;->aEo:Z

    return-void
.end method

.method private final nT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cn;->aGS:Lcom/google/android/gms/common/api/internal/co;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cn;->nT()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cn;->aGS:Lcom/google/android/gms/common/api/internal/co;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/cn;->aCz:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/cn;->aEo:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/co;->a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;Z)V

    return-void
.end method

.method public final cG(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cn;->nT()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cn;->aGS:Lcom/google/android/gms/common/api/internal/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/co;->cG(I)V

    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/cn;->nT()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cn;->aGS:Lcom/google/android/gms/common/api/internal/co;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/co;->h(Landroid/os/Bundle;)V

    return-void
.end method
