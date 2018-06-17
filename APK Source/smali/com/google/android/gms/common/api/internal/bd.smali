.class final Lcom/google/android/gms/common/api/internal/bd;
.super Landroid/os/Handler;


# instance fields
.field private synthetic aFS:Lcom/google/android/gms/common/api/internal/bc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/bc;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bd;->aFS:Lcom/google/android/gms/common/api/internal/bc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bd;->aFS:Lcom/google/android/gms/common/api/internal/bc;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/bf;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/bc;->aFQ:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/bf;->M(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method
