.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/internal/ks;


# instance fields
.field private bdT:Lcom/google/android/gms/internal/ko;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ko",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final ug()Lcom/google/android/gms/internal/ko;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ko",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->bdT:Lcom/google/android/gms/internal/ko;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ko;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ko;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->bdT:Lcom/google/android/gms/internal/ko;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->bdT:Lcom/google/android/gms/internal/ko;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/job/JobParameters;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->b(Landroid/content/Intent;)Z

    return-void
.end method

.method public final cA(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ko;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "onBind called with null intent"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.START"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ie;

    iget-object v1, v1, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/hz;->ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ie;-><init>(Lcom/google/android/gms/internal/hz;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ko;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v3, "onBind received unknown action"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ko;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ko;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ko;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/hz;->ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    if-nez p1, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "AppMeasurementService started with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/internal/hd;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/kp;

    invoke-direct {v2, v0, p3, v1, p1}, Lcom/google/android/gms/internal/kp;-><init>(Lcom/google/android/gms/internal/ko;ILcom/google/android/gms/internal/hb;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ko;->l(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ko;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
