.class final Lcom/google/android/gms/internal/kn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aWQ:Lcom/google/android/gms/internal/ki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ki;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kn;->aWQ:Lcom/google/android/gms/internal/ki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->aWQ:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ju;->aWA:Lcom/google/android/gms/internal/gt;

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->aWQ:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->sn()V

    return-void
.end method
