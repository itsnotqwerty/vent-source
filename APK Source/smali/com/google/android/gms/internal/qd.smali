.class public final Lcom/google/android/gms/internal/qd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic bcb:Lcom/google/android/gms/internal/qc;

.field private synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qc;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qd;->bcb:Lcom/google/android/gms/internal/qc;

    iput-object p2, p0, Lcom/google/android/gms/internal/qd;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qd;->bcb:Lcom/google/android/gms/internal/qc;

    iget-object v1, p0, Lcom/google/android/gms/internal/qd;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qc;->ak(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/b;

    return-void
.end method
