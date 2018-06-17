.class public final synthetic Lcom/google/android/gms/internal/kq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aWT:Lcom/google/android/gms/internal/ko;

.field private final aWX:Lcom/google/android/gms/internal/hb;

.field private final aWY:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ko;Lcom/google/android/gms/internal/hb;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kq;->aWT:Lcom/google/android/gms/internal/ko;

    iput-object p2, p0, Lcom/google/android/gms/internal/kq;->aWX:Lcom/google/android/gms/internal/hb;

    iput-object p3, p0, Lcom/google/android/gms/internal/kq;->aWY:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->aWT:Lcom/google/android/gms/internal/ko;

    iget-object v1, p0, Lcom/google/android/gms/internal/kq;->aWX:Lcom/google/android/gms/internal/hb;

    iget-object v2, p0, Lcom/google/android/gms/internal/kq;->aWY:Landroid/app/job/JobParameters;

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v3, "AppMeasurementJobService processed last upload request."

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ko;->aWS:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/ks;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ks;->a(Landroid/app/job/JobParameters;)V

    return-void
.end method
