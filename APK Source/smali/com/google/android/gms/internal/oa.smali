.class public final Lcom/google/android/gms/internal/oa;
.super Lcom/google/android/gms/internal/nx$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/nx$a",
        "<",
        "Lcom/google/android/gms/internal/ow;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic aQu:Ljava/lang/String;

.field private synthetic bbh:Lcom/google/android/gms/internal/nx;

.field private synthetic bbi:Lcom/google/android/gms/internal/nu;

.field private synthetic bbj:Lcom/google/android/gms/internal/tj;

.field private synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/nx;Landroid/content/Context;Lcom/google/android/gms/internal/nu;Ljava/lang/String;Lcom/google/android/gms/internal/tj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/oa;->bbh:Lcom/google/android/gms/internal/nx;

    iput-object p2, p0, Lcom/google/android/gms/internal/oa;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/oa;->bbi:Lcom/google/android/gms/internal/nu;

    iput-object p4, p0, Lcom/google/android/gms/internal/oa;->aQu:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/oa;->bbj:Lcom/google/android/gms/internal/tj;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nx$a;-><init>(Lcom/google/android/gms/internal/nx;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/pe;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/oa;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/oa;->bbi:Lcom/google/android/gms/internal/nu;

    iget-object v3, p0, Lcom/google/android/gms/internal/oa;->aQu:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/oa;->bbj:Lcom/google/android/gms/internal/tj;

    const v5, 0xba5338

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/pe;->c(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/nu;Ljava/lang/String;Lcom/google/android/gms/internal/tj;I)Lcom/google/android/gms/internal/ow;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic tf()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/oa;->bbh:Lcom/google/android/gms/internal/nx;

    invoke-static {v0}, Lcom/google/android/gms/internal/nx;->b(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/nq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/oa;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/oa;->bbi:Lcom/google/android/gms/internal/nu;

    iget-object v3, p0, Lcom/google/android/gms/internal/oa;->aQu:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/oa;->bbj:Lcom/google/android/gms/internal/tj;

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/nq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/nu;Ljava/lang/String;Lcom/google/android/gms/internal/tj;I)Lcom/google/android/gms/internal/ow;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oa;->val$context:Landroid/content/Context;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nx;->q(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/qi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/qi;-><init>()V

    goto :goto_0
.end method
