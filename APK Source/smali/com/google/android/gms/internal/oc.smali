.class public final Lcom/google/android/gms/internal/oc;
.super Lcom/google/android/gms/internal/nx$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/nx$a",
        "<",
        "Lcom/google/android/gms/internal/pk;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic bbh:Lcom/google/android/gms/internal/nx;

.field private synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/nx;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/oc;->bbh:Lcom/google/android/gms/internal/nx;

    iput-object p2, p0, Lcom/google/android/gms/internal/oc;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nx$a;-><init>(Lcom/google/android/gms/internal/nx;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/pe;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/oc;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    const v1, 0xba5338

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/pe;->c(Lcom/google/android/gms/a/a;I)Lcom/google/android/gms/internal/pk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic tf()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/oc;->bbh:Lcom/google/android/gms/internal/nx;

    invoke-static {v0}, Lcom/google/android/gms/internal/nx;->d(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/qe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/oc;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qe;->al(Landroid/content/Context;)Lcom/google/android/gms/internal/pk;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oc;->val$context:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nx;->q(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/qk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qk;-><init>()V

    goto :goto_0
.end method
