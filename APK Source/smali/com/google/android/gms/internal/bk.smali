.class final Lcom/google/android/gms/internal/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aMT:Lcom/google/android/gms/internal/cs;

.field private synthetic aMU:Lcom/google/android/gms/internal/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->aMU:Lcom/google/android/gms/internal/bj;

    iput-object p2, p0, Lcom/google/android/gms/internal/bk;->aMT:Lcom/google/android/gms/internal/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->aMU:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->aMQ:Lcom/google/android/gms/internal/bh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->aMU:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->aMQ:Lcom/google/android/gms/internal/bh;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ba;->bx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->aMU:Lcom/google/android/gms/internal/bj;

    iget-object v0, v0, Lcom/google/android/gms/internal/bj;->aMQ:Lcom/google/android/gms/internal/bh;

    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->aMT:Lcom/google/android/gms/internal/cs;

    invoke-static {}, Lcom/google/android/gms/analytics/n;->mN()V

    iput-object v1, v0, Lcom/google/android/gms/internal/bh;->aMN:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bh;->po()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ba;->aMq:Lcom/google/android/gms/internal/bd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->pi()Lcom/google/android/gms/internal/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/av;->onServiceConnected()V

    :cond_0
    return-void
.end method
