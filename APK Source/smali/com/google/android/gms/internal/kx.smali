.class final Lcom/google/android/gms/internal/kx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aQv:J

.field private synthetic aXd:Lcom/google/android/gms/internal/kt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kt;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kx;->aXd:Lcom/google/android/gms/internal/kt;

    iput-wide p2, p0, Lcom/google/android/gms/internal/kx;->aQv:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/kx;->aXd:Lcom/google/android/gms/internal/kt;

    iget-wide v2, p0, Lcom/google/android/gms/internal/kx;->aQv:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kt;->so()V

    iget-object v1, v0, Lcom/google/android/gms/internal/kt;->aXb:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gh;->cancel()V

    iget-object v1, v0, Lcom/google/android/gms/internal/kt;->aXc:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gh;->cancel()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Activity paused, time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/kt;->aXa:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTY:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/hl;->aTY:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/internal/kt;->aXa:J

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/hn;->set(J)V

    :cond_0
    return-void
.end method
