.class public final Lcom/google/android/gms/internal/oe;
.super Lcom/google/android/gms/internal/nx$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/nx$a",
        "<",
        "Lcom/google/android/gms/internal/up;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic bbh:Lcom/google/android/gms/internal/nx;

.field private synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/nx;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/oe;->bbh:Lcom/google/android/gms/internal/nx;

    iput-object p2, p0, Lcom/google/android/gms/internal/oe;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nx$a;-><init>(Lcom/google/android/gms/internal/nx;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/pe;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/oe;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/a/c;->Q(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/pe;->o(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/internal/up;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/oe;->bbh:Lcom/google/android/gms/internal/nx;

    invoke-static {v0}, Lcom/google/android/gms/internal/nx;->f(Lcom/google/android/gms/internal/nx;)Lcom/google/android/gms/internal/uo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/oe;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/uo;->j(Landroid/app/Activity;)Lcom/google/android/gms/internal/up;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/oe;->val$activity:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nx;->q(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
