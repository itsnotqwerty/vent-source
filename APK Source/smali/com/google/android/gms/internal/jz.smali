.class final Lcom/google/android/gms/internal/jz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aWG:Lcom/google/android/gms/internal/ju;

.field private synthetic aWI:Lcom/google/android/gms/internal/jp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/jp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jz;->aWG:Lcom/google/android/gms/internal/ju;

    iput-object p2, p0, Lcom/google/android/gms/internal/jz;->aWI:Lcom/google/android/gms/internal/jp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWG:Lcom/google/android/gms/internal/ju;

    iget-object v1, v0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWI:Lcom/google/android/gms/internal/jp;

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/gt;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->po()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jz;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWI:Lcom/google/android/gms/internal/jp;

    iget-wide v2, v0, Lcom/google/android/gms/internal/jp;->aWj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWI:Lcom/google/android/gms/internal/jp;

    iget-object v4, v0, Lcom/google/android/gms/internal/jp;->aWh:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWI:Lcom/google/android/gms/internal/jp;

    iget-object v5, v0, Lcom/google/android/gms/internal/jp;->aWi:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/jz;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/gt;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
