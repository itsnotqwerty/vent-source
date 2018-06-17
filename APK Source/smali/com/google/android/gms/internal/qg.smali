.class final Lcom/google/android/gms/internal/qg;
.super Lcom/google/android/gms/internal/op;


# instance fields
.field final synthetic bcd:Lcom/google/android/gms/internal/qf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/qf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qg;->bcd:Lcom/google/android/gms/internal/qf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/op;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/qf;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/qg;-><init>(Lcom/google/android/gms/internal/qf;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/nr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/qg;->a(Lcom/google/android/gms/internal/nr;I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/nr;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/internal/af;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/w;->aKT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/qh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/qh;-><init>(Lcom/google/android/gms/internal/qg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final tl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
