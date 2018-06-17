.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/google/android/gms/internal/ks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private bdS:Lcom/google/android/gms/internal/ko;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ko",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private final ug()Lcom/google/android/gms/internal/ko;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ko",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->bdS:Lcom/google/android/gms/internal/ko;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ko;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ko;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->bdS:Lcom/google/android/gms/internal/ko;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->bdS:Lcom/google/android/gms/internal/ko;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/job/JobParameters;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final cA(I)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ko;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ko;->onDestroy()V

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ko;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/hz;->ai(Landroid/content/Context;)Lcom/google/android/gms/internal/hz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hz;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v4, "Local AppMeasurementJobService called. action"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/kq;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/kq;-><init>(Lcom/google/android/gms/internal/ko;Lcom/google/android/gms/internal/hb;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ko;->l(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->ug()Lcom/google/android/gms/internal/ko;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ko;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
