.class public final Lcom/google/android/gms/ads/b/f;
.super Ljava/lang/Object;


# static fields
.field public static azE:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/google/android/gms/ads/b/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private azD:Lcom/google/android/gms/internal/rs;

.field private azF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/b/f;->azE:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public final setNativeAd(Lcom/google/android/gms/ads/b/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/b/f;->azF:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/b/f;->azF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "NativeAdViewHolder.setNativeAd containerView doesn\'t exist, returning"

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->bt(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/ads/b/f;->azE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/ads/b/f;->azE:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/b/f;->azD:Lcom/google/android/gms/internal/rs;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/b/f;->azD:Lcom/google/android/gms/internal/rs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/b/c;->lA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/a/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/rs;->q(Lcom/google/android/gms/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to call setNativeAd on delegate"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
