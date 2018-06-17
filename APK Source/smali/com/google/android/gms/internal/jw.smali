.class final Lcom/google/android/gms/internal/jw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVG:Lcom/google/android/gms/internal/fx;

.field private synthetic aWG:Lcom/google/android/gms/internal/ju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jw;->aWG:Lcom/google/android/gms/internal/ju;

    iput-object p2, p0, Lcom/google/android/gms/internal/jw;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->aWG:Lcom/google/android/gms/internal/ju;

    iget-object v0, v0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Failed to reset data on the service; null service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gt;->d(Lcom/google/android/gms/internal/fx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->po()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to reset data on the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method
