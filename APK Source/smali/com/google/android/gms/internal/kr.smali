.class final Lcom/google/android/gms/internal/kr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aRB:Lcom/google/android/gms/internal/hz;

.field private synthetic aWZ:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kr;->aRB:Lcom/google/android/gms/internal/hz;

    iput-object p2, p0, Lcom/google/android/gms/internal/kr;->aWZ:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->aRB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->aRB:Lcom/google/android/gms/internal/hz;

    iget-object v1, p0, Lcom/google/android/gms/internal/kr;->aWZ:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ix;->mN()V

    iget-object v2, v0, Lcom/google/android/gms/internal/hz;->aVp:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/hz;->aVp:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/hz;->aVp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->aRB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sb()V

    return-void
.end method
