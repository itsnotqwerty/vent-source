.class public final Lcom/google/android/gms/analytics/AnalyticsService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/internal/dg;


# instance fields
.field private aAH:Lcom/google/android/gms/internal/dd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/dd",
            "<",
            "Lcom/google/android/gms/analytics/AnalyticsService;",
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

.method private final mD()Lcom/google/android/gms/internal/dd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/dd",
            "<",
            "Lcom/google/android/gms/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->aAH:Lcom/google/android/gms/internal/dd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/dd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->aAH:Lcom/google/android/gms/internal/dd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->aAH:Lcom/google/android/gms/internal/dd;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/job/JobParameters;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final cA(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result v0

    return v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->mD()Lcom/google/android/gms/internal/dd;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->mD()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->mD()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dd;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->mD()Lcom/google/android/gms/internal/dd;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Intent;I)I

    move-result v0

    return v0
.end method
