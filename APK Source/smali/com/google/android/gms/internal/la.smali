.class final Lcom/google/android/gms/internal/la;
.super Lcom/google/android/gms/internal/gh;


# instance fields
.field private synthetic aRB:Lcom/google/android/gms/internal/hz;

.field private synthetic aXg:Lcom/google/android/gms/internal/kz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kz;Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/internal/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/la;->aXg:Lcom/google/android/gms/internal/kz;

    iput-object p3, p0, Lcom/google/android/gms/internal/la;->aRB:Lcom/google/android/gms/internal/hz;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gh;-><init>(Lcom/google/android/gms/internal/hz;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->aXg:Lcom/google/android/gms/internal/kz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kz;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->aXg:Lcom/google/android/gms/internal/kz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTi:Lcom/google/android/gms/internal/hd;

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/la;->aRB:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->sb()V

    return-void
.end method
