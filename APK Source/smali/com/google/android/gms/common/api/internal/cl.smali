.class final Lcom/google/android/gms/common/api/internal/cl;
.super Lcom/google/android/gms/common/api/internal/at;


# instance fields
.field private synthetic aGQ:Landroid/app/Dialog;

.field private synthetic aGR:Lcom/google/android/gms/common/api/internal/ck;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ck;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/cl;->aGR:Lcom/google/android/gms/common/api/internal/ck;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/cl;->aGQ:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/at;-><init>()V

    return-void
.end method


# virtual methods
.method public final nx()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cl;->aGR:Lcom/google/android/gms/common/api/internal/ck;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ci;->nS()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cl;->aGQ:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/cl;->aGQ:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
