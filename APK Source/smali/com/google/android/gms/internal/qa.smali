.class final Lcom/google/android/gms/internal/qa;
.super Lcom/google/android/gms/internal/oh;


# instance fields
.field private synthetic bbU:Lcom/google/android/gms/internal/pz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qa;->bbU:Lcom/google/android/gms/internal/pz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/oh;-><init>()V

    return-void
.end method


# virtual methods
.method public final cv(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qa;->bbU:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->aAc:Lcom/google/android/gms/ads/i;

    iget-object v1, p0, Lcom/google/android/gms/internal/qa;->bbU:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pz;->lz()Lcom/google/android/gms/internal/pp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/internal/pp;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/oh;->cv(I)V

    return-void
.end method

.method public final lj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qa;->bbU:Lcom/google/android/gms/internal/pz;

    iget-object v0, v0, Lcom/google/android/gms/internal/pz;->aAc:Lcom/google/android/gms/ads/i;

    iget-object v1, p0, Lcom/google/android/gms/internal/qa;->bbU:Lcom/google/android/gms/internal/pz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pz;->lz()Lcom/google/android/gms/internal/pp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/internal/pp;)V

    invoke-super {p0}, Lcom/google/android/gms/internal/oh;->lj()V

    return-void
.end method
