.class final Lcom/google/android/gms/internal/kg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aVG:Lcom/google/android/gms/internal/fx;

.field private synthetic aVM:Lcom/google/android/gms/internal/lb;

.field private synthetic aWG:Lcom/google/android/gms/internal/ju;

.field private synthetic aWK:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ju;ZLcom/google/android/gms/internal/lb;Lcom/google/android/gms/internal/fx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kg;->aWG:Lcom/google/android/gms/internal/ju;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/kg;->aWK:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/kg;->aVM:Lcom/google/android/gms/internal/lb;

    iput-object p4, p0, Lcom/google/android/gms/internal/kg;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kg;->aWG:Lcom/google/android/gms/internal/ju;

    iget-object v1, v0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kg;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTa:Lcom/google/android/gms/internal/hd;

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/kg;->aWG:Lcom/google/android/gms/internal/ju;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kg;->aWK:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/kg;->aVG:Lcom/google/android/gms/internal/fx;

    invoke-virtual {v2, v1, v0, v3}, Lcom/google/android/gms/internal/ju;->a(Lcom/google/android/gms/internal/gt;Lcom/google/android/gms/internal/dr;Lcom/google/android/gms/internal/fx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kg;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->po()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kg;->aVM:Lcom/google/android/gms/internal/lb;

    goto :goto_1
.end method
