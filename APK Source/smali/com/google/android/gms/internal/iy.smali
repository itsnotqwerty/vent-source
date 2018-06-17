.class abstract Lcom/google/android/gms/internal/iy;
.super Lcom/google/android/gms/internal/ix;


# instance fields
.field private initialized:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ix;-><init>(Lcom/google/android/gms/internal/hz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iy;->zzjev:Lcom/google/android/gms/internal/hz;

    iget v1, v0, Lcom/google/android/gms/internal/hz;->aVq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/hz;->aVq:I

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/iy;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->ri()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iy;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->se()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/iy;->initialized:Z

    :cond_1
    return-void
.end method

.method final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/iy;->initialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final pf()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected rC()V
    .locals 0

    return-void
.end method

.method protected abstract ri()Z
.end method

.method public final si()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/iy;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->rC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iy;->zzjev:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hz;->se()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/iy;->initialized:Z

    return-void
.end method
