.class final Lcom/google/android/gms/internal/kw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aQv:J

.field private synthetic aXd:Lcom/google/android/gms/internal/kt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kt;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kw;->aXd:Lcom/google/android/gms/internal/kt;

    iput-wide p2, p0, Lcom/google/android/gms/internal/kw;->aQv:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/kw;->aXd:Lcom/google/android/gms/internal/kt;

    iget-wide v2, p0, Lcom/google/android/gms/internal/kw;->aQv:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kt;->so()V

    iget-object v1, v0, Lcom/google/android/gms/internal/kt;->aXb:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gh;->cancel()V

    iget-object v1, v0, Lcom/google/android/gms/internal/kt;->aXc:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gh;->cancel()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Activity resumed, time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide v2, v0, Lcom/google/android/gms/internal/kt;->aXa:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qH()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTV:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTX:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTW:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/hm;->set(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTY:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/hn;->set(J)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hl;->aTW:Lcom/google/android/gms/internal/hm;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/hm;->aUb:Z

    if-nez v2, :cond_1

    iput-boolean v8, v1, Lcom/google/android/gms/internal/hm;->aUb:Z

    iget-object v2, v1, Lcom/google/android/gms/internal/hm;->aUc:Lcom/google/android/gms/internal/hl;

    invoke-static {v2}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/hm;->key:Ljava/lang/String;

    iget-boolean v4, v1, Lcom/google/android/gms/internal/hm;->aUa:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/android/gms/internal/hm;->value:Z

    :cond_1
    iget-boolean v1, v1, Lcom/google/android/gms/internal/hm;->value:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/kt;->aXb:Lcom/google/android/gms/internal/gh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/hl;->aTU:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTY:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gh;->n(J)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/kt;->aXc:Lcom/google/android/gms/internal/gh;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTY:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gh;->n(J)V

    goto :goto_0
.end method
