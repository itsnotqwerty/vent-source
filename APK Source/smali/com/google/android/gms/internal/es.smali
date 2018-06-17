.class final Lcom/google/android/gms/internal/es;
.super Lcom/google/android/gms/internal/eu;


# instance fields
.field private synthetic aPV:Lcom/google/android/gms/location/LocationRequest;

.field private synthetic aPW:Lcom/google/android/gms/location/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/es;->aPV:Lcom/google/android/gms/location/LocationRequest;

    iput-object p3, p0, Lcom/google/android/gms/internal/es;->aPW:Lcom/google/android/gms/location/c;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eu;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/a$c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    check-cast p1, Lcom/google/android/gms/internal/fl;

    new-instance v7, Lcom/google/android/gms/internal/ev;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ev;-><init>(Lcom/google/android/gms/common/api/internal/ch;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/es;->aPV:Lcom/google/android/gms/location/LocationRequest;

    iget-object v3, p0, Lcom/google/android/gms/internal/es;->aPW:Lcom/google/android/gms/location/c;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    const-string v4, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/ae;->a(ZLjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const-class v4, Lcom/google/android/gms/location/c;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Listener must not be null"

    invoke-static {v3, v5}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Looper must not be null"

    invoke-static {v1, v5}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Listener type must not be null"

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/common/api/internal/bc;

    invoke-direct {v5, v1, v3, v4}, Lcom/google/android/gms/common/api/internal/bc;-><init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p1, Lcom/google/android/gms/internal/fl;->aQh:Lcom/google/android/gms/internal/fe;

    monitor-enter v9

    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/fl;->aQh:Lcom/google/android/gms/internal/fe;

    iget-object v3, v1, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/fq;->oq()V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/fe;->a(Lcom/google/android/gms/common/api/internal/bc;)Lcom/google/android/gms/internal/fj;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/fq;->or()Landroid/os/IInterface;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/fc;

    move-object v8, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/fm;

    move-result-object v3

    new-instance v1, Lcom/google/android/gms/internal/fo;

    const/4 v2, 0x1

    invoke-interface {v4}, Lcom/google/android/gms/location/t;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v7}, Lcom/google/android/gms/internal/ez;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/fo;-><init>(ILcom/google/android/gms/internal/fm;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/fo;)V

    monitor-exit v9

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
