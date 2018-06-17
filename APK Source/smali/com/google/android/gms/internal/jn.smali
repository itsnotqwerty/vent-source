.class public final Lcom/google/android/gms/internal/jn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVW:Lcom/google/android/gms/internal/ja;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jn;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jn;->aVW:Lcom/google/android/gms/internal/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->mN()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iy;->pf()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qF()Lcom/google/android/gms/internal/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->resetAnalyticsData()V

    return-void
.end method
