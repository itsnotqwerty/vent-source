.class final Lcom/google/android/gms/common/api/internal/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/ax;


# instance fields
.field final synthetic aFu:Lcom/google/android/gms/common/api/internal/aj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/an;->aFu:Lcom/google/android/gms/common/api/internal/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/an;->aFu:Lcom/google/android/gms/common/api/internal/aj;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ah;->a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/ao;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/ao;-><init>(Lcom/google/android/gms/common/api/internal/an;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
