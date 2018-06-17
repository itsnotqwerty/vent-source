.class final Lcom/google/android/gms/internal/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aNI:Lcom/google/android/gms/internal/cg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->aNI:Lcom/google/android/gms/internal/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->aNI:Lcom/google/android/gms/internal/cg;

    invoke-static {v0}, Lcom/google/android/gms/internal/cg;->a(Lcom/google/android/gms/internal/cg;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bd;->ph()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/n;->h(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->aNI:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->pW()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ch;->aNI:Lcom/google/android/gms/internal/cg;

    invoke-static {v1}, Lcom/google/android/gms/internal/cg;->b(Lcom/google/android/gms/internal/cg;)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ch;->aNI:Lcom/google/android/gms/internal/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->run()V

    goto :goto_0
.end method
