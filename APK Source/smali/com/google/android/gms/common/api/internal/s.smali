.class final Lcom/google/android/gms/common/api/internal/s;
.super Lcom/google/android/gms/internal/mf;


# instance fields
.field private final aEn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/internal/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/l;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mf;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->aEn:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mn;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s;->aEn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/l;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/l;->aDW:Lcom/google/android/gms/common/api/internal/ad;

    new-instance v2, Lcom/google/android/gms/common/api/internal/t;

    invoke-direct {v2, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/t;-><init>(Lcom/google/android/gms/common/api/internal/ac;Lcom/google/android/gms/common/api/internal/l;Lcom/google/android/gms/internal/mn;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/ad;->a(Lcom/google/android/gms/common/api/internal/ae;)V

    goto :goto_0
.end method
