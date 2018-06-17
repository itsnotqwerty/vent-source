.class final Lcom/google/android/gms/internal/ka;
.super Lcom/google/android/gms/internal/gh;


# instance fields
.field private synthetic aWG:Lcom/google/android/gms/internal/ju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ju;Lcom/google/android/gms/internal/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ka;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gh;-><init>(Lcom/google/android/gms/internal/hz;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ka;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTd:Lcom/google/android/gms/internal/hd;

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    return-void
.end method
