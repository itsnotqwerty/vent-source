.class public abstract Lcom/google/android/gms/common/internal/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)Lcom/google/android/gms/common/internal/bc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/bd;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/internal/bd;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/internal/az;Landroid/content/Intent;)Lcom/google/android/gms/common/internal/bc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/be;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/internal/be;-><init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/az;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/bc;->ow()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DialogRedirect"

    const-string v2, "Failed to start resolution intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw v0
.end method

.method protected abstract ow()V
.end method
