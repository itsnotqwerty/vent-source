.class final Lcom/google/android/gms/internal/uk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic bdh:Lcom/google/ads/a$a;

.field private synthetic bdi:Lcom/google/android/gms/internal/ui;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ui;Lcom/google/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/uk;->bdi:Lcom/google/android/gms/internal/ui;

    iput-object p2, p0, Lcom/google/android/gms/internal/uk;->bdh:Lcom/google/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/uk;->bdi:Lcom/google/android/gms/internal/ui;

    iget-object v0, v0, Lcom/google/android/gms/internal/ui;->bcW:Lcom/google/android/gms/internal/tp;

    iget-object v1, p0, Lcom/google/android/gms/internal/uk;->bdh:Lcom/google/ads/a$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/ul;->c(Lcom/google/ads/a$a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/tp;->cv(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
