.class final Lcom/google/android/gms/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic bdZ:Lcom/google/android/gms/c/e;

.field private synthetic bee:Lcom/google/android/gms/c/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/m;Lcom/google/android/gms/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/c/n;->bee:Lcom/google/android/gms/c/m;

    iput-object p2, p0, Lcom/google/android/gms/c/n;->bdZ:Lcom/google/android/gms/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/c/n;->bee:Lcom/google/android/gms/c/m;

    iget-object v1, v0, Lcom/google/android/gms/c/m;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/c/n;->bee:Lcom/google/android/gms/c/m;

    iget-object v0, v0, Lcom/google/android/gms/c/m;->bed:Lcom/google/android/gms/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/c/n;->bee:Lcom/google/android/gms/c/m;

    iget-object v0, v0, Lcom/google/android/gms/c/m;->bed:Lcom/google/android/gms/c/c;

    iget-object v2, p0, Lcom/google/android/gms/c/n;->bdZ:Lcom/google/android/gms/c/e;

    invoke-virtual {v2}, Lcom/google/android/gms/c/e;->getResult()Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/c/c;->ui()V

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
