.class public final Lcom/google/android/gms/analytics/AnalyticsJobService;
.super Landroid/app/job/JobService;

# interfaces
.implements Lcom/google/android/gms/internal/dg;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private aAH:Lcom/google/android/gms/internal/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/dd",
            "<",
            "Lcom/google/android/gms/analytics/AnalyticsJobService;",
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

.method private final mD()Lcom/google/android/gms/internal/dd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/dd",
            "<",
            "Lcom/google/android/gms/analytics/AnalyticsJobService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->aAH:Lcom/google/android/gms/internal/dd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/dd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->aAH:Lcom/google/android/gms/internal/dd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsJobService;->aAH:Lcom/google/android/gms/internal/dd;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/job/JobParameters;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final cA(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/AnalyticsJobService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->mD()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->mD()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->onDestroy()V

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->mD()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Intent;I)I

    move-result v0

    return v0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsJobService;->mD()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/dd;->aPl:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/bd;->ab(Landroid/content/Context;)Lcom/google/android/gms/internal/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bd;->pg()Lcom/google/android/gms/internal/cw;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Local AnalyticsJobService called. action"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ba;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/dd;->a(Ljava/lang/Integer;Landroid/app/job/JobParameters;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
