.class final Lcom/google/android/gms/common/api/internal/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final aGO:Lcom/google/android/gms/common/api/internal/cj;

.field final synthetic aGP:Lcom/google/android/gms/common/api/internal/ci;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ci;Lcom/google/android/gms/common/api/internal/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ck;->aGO:Lcom/google/android/gms/common/api/internal/cj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/ci;->uY:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ck;->aGO:Lcom/google/android/gms/common/api/internal/cj;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/cj;->aGN:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->mP()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ci;->aDx:Lcom/google/android/gms/common/api/internal/az;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/common/a;->aCk:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/ck;->aGO:Lcom/google/android/gms/common/api/internal/cj;

    iget v3, v3, Lcom/google/android/gms/common/api/internal/cj;->aGM:I

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/az;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ci;->aCU:Lcom/google/android/gms/common/c;

    iget v2, v0, Lcom/google/android/gms/common/a;->aCj:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/m;->cC(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ci;->aDx:Lcom/google/android/gms/common/api/internal/az;

    iget v0, v0, Lcom/google/android/gms/common/a;->aCj:I

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/common/c;->a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/az;ILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/google/android/gms/common/a;->aCj:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/c;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/cl;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/internal/cl;-><init>(Lcom/google/android/gms/common/api/internal/ck;Landroid/app/Dialog;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/at;)Lcom/google/android/gms/common/api/internal/as;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ck;->aGP:Lcom/google/android/gms/common/api/internal/ci;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ck;->aGO:Lcom/google/android/gms/common/api/internal/cj;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/cj;->aGM:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/ci;->a(Lcom/google/android/gms/common/a;I)V

    goto :goto_0
.end method
