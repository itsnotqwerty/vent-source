.class final Lcom/google/android/gms/common/api/internal/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aFM:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

.field private synthetic aFN:Ljava/lang/String;

.field private synthetic aGd:Lcom/google/android/gms/common/api/internal/br;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/br;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bs;->aGd:Lcom/google/android/gms/common/api/internal/br;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bs;->aFM:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/bs;->aFN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aGd:Lcom/google/android/gms/common/api/internal/br;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/internal/br;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bs;->aFM:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aGd:Lcom/google/android/gms/common/api/internal/br;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/br;->b(Lcom/google/android/gms/common/api/internal/br;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aGd:Lcom/google/android/gms/common/api/internal/br;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/br;->b(Lcom/google/android/gms/common/api/internal/br;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bs;->aFN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aGd:Lcom/google/android/gms/common/api/internal/br;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/internal/br;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aFM:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aGd:Lcom/google/android/gms/common/api/internal/br;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/internal/br;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aFM:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aGd:Lcom/google/android/gms/common/api/internal/br;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/internal/br;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aFM:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bs;->aGd:Lcom/google/android/gms/common/api/internal/br;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/internal/br;)I

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
