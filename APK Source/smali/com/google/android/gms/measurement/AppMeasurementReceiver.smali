.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroid/support/v4/content/e;

# interfaces
.implements Lcom/google/android/gms/internal/hs;


# instance fields
.field private bdR:Lcom/google/android/gms/internal/hq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->bdR:Lcom/google/android/gms/internal/hq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/hq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hq;-><init>(Lcom/google/android/gms/internal/hs;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->bdR:Lcom/google/android/gms/internal/hq;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->bdR:Lcom/google/android/gms/internal/hq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hq;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public final rQ()Landroid/content/BroadcastReceiver$PendingResult;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    return-object v0
.end method
