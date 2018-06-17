.class final Lcom/google/android/gms/internal/ku;
.super Lcom/google/android/gms/internal/gh;


# instance fields
.field private synthetic aXd:Lcom/google/android/gms/internal/kt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kt;Lcom/google/android/gms/internal/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ku;->aXd:Lcom/google/android/gms/internal/kt;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gh;-><init>(Lcom/google/android/gms/internal/hz;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ku;->aXd:Lcom/google/android/gms/internal/kt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Session started, time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTW:Lcom/google/android/gms/internal/hm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hm;->set(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qC()Lcom/google/android/gms/internal/ja;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_s"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ja;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTX:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hn;->set(J)V

    return-void
.end method
