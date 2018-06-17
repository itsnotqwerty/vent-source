.class public final Lcom/google/android/gms/internal/ko;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/internal/ks;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final aWS:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    return-void
.end method

.method public static aj(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ae;->E(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const-string v0, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/le;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/le;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final l(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qO()Lcom/google/android/gms/internal/hu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/kr;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/kr;-><init>(Lcom/google/android/gms/internal/hz;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hu;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ko;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "onRebind called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ko;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "onRebind called. action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ko;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "onUnbind called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ko;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final qP()Lcom/google/android/gms/internal/hb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    return-object v0
.end method
