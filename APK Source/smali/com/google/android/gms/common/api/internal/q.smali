.class final Lcom/google/android/gms/common/api/internal/q;
.super Lcom/google/android/gms/common/api/internal/ae;


# instance fields
.field private synthetic aEs:Lcom/google/android/gms/common/internal/ar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ac;Lcom/google/android/gms/common/internal/ar;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/q;->aEs:Lcom/google/android/gms/common/internal/ar;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/ae;-><init>(Lcom/google/android/gms/common/api/internal/ac;)V

    return-void
.end method


# virtual methods
.method public final nn()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/q;->aEs:Lcom/google/android/gms/common/internal/ar;

    new-instance v1, Lcom/google/android/gms/common/a;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/ar;->d(Lcom/google/android/gms/common/a;)V

    return-void
.end method
