.class final Lcom/google/android/gms/internal/hr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aBi:Landroid/content/BroadcastReceiver$PendingResult;

.field private synthetic aRB:Lcom/google/android/gms/internal/hz;

.field private synthetic aUk:J

.field private synthetic aUl:Landroid/os/Bundle;

.field private synthetic aUm:Lcom/google/android/gms/internal/hb;

.field private synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/internal/hb;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hr;->aRB:Lcom/google/android/gms/internal/hz;

    iput-wide p2, p0, Lcom/google/android/gms/internal/hr;->aUk:J

    iput-object p4, p0, Lcom/google/android/gms/internal/hr;->aUl:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/hr;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/hr;->aUm:Lcom/google/android/gms/internal/hb;

    iput-object p7, p0, Lcom/google/android/gms/internal/hr;->aBi:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->aRB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qQ()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hl;->aTM:Lcom/google/android/gms/internal/hn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hn;->get()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/gms/internal/hr;->aUk:J

    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    :cond_0
    const-wide/16 v0, 0x1

    sub-long v0, v2, v0

    :cond_1
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/hr;->aUl:Landroid/os/Bundle;

    const-string v3, "click_timestamp"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_cmp"

    iget-object v3, p0, Lcom/google/android/gms/internal/hr;->aUl:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->aUm:Lcom/google/android/gms/internal/hb;

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Install campaign recorded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->aBi:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/hr;->aBi:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_3
    return-void
.end method
