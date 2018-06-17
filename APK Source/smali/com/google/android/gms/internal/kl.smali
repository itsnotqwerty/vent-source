.class final Lcom/google/android/gms/internal/kl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic aWQ:Lcom/google/android/gms/internal/ki;

.field private synthetic aWR:Lcom/google/android/gms/internal/gt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ki;Lcom/google/android/gms/internal/gt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kl;->aWQ:Lcom/google/android/gms/internal/ki;

    iput-object p2, p0, Lcom/google/android/gms/internal/kl;->aWR:Lcom/google/android/gms/internal/gt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/kl;->aWQ:Lcom/google/android/gms/internal/ki;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->aWQ:Lcom/google/android/gms/internal/ki;

    invoke-static {v0}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/ki;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->aWQ:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ju;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->aWQ:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->qP()Lcom/google/android/gms/internal/hb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->aTh:Lcom/google/android/gms/internal/hd;

    const-string v2, "Connected to remote service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd;->bq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kl;->aWQ:Lcom/google/android/gms/internal/ki;

    iget-object v0, v0, Lcom/google/android/gms/internal/ki;->aWG:Lcom/google/android/gms/internal/ju;

    iget-object v2, p0, Lcom/google/android/gms/internal/kl;->aWR:Lcom/google/android/gms/internal/gt;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ju;->a(Lcom/google/android/gms/internal/gt;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
