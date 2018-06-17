.class final Lcom/google/android/gms/internal/kc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVD:Ljava/lang/String;

.field private synthetic aVG:Lcom/google/android/gms/internal/fx;

.field private synthetic aVL:Lcom/google/android/gms/internal/gp;

.field private synthetic aWG:Lcom/google/android/gms/internal/ju;

.field private synthetic aWJ:Z

.field private synthetic aWK:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ju;ZLcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/kc;->aWG:Lcom/google/android/gms/internal/ju;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/kc;->aWJ:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/kc;->aWK:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/kc;->aVL:Lcom/google/android/gms/internal/gp;

    iput-object p4, p0, Lcom/google/android/gms/internal/kc;->aVG:Lcom/google/android/gms/internal/fx;

    iput-object p5, p0, Lcom/google/android/gms/internal/kc;->aVD:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kc;->aWG:Lcom/google/android/gms/internal/ju;

    iget-object v1, v0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kc;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/kc;->aWJ:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/kc;->aWG:Lcom/google/android/gms/internal/ju;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kc;->aWK:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/kc;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/internal/ju;->a(Lcom/google/android/gms/internal/gt;Lcom/google/android/gms/internal/dr;Lcom/google/android/gms/internal/fx;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/kc;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->po()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kc;->aVL:Lcom/google/android/gms/internal/gp;

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kc;->aVD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/kc;->aVL:Lcom/google/android/gms/internal/gp;

    iget-object v2, p0, Lcom/google/android/gms/internal/kc;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/gt;->a(Lcom/google/android/gms/internal/gp;Lcom/google/android/gms/internal/fx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kc;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hd;->j(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kc;->aVL:Lcom/google/android/gms/internal/gp;

    iget-object v2, p0, Lcom/google/android/gms/internal/kc;->aVD:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/kc;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/hb;->rJ()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/gt;->a(Lcom/google/android/gms/internal/gp;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
