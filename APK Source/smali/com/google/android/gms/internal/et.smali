.class final Lcom/google/android/gms/internal/et;
.super Lcom/google/android/gms/internal/eu;


# instance fields
.field private synthetic aPW:Lcom/google/android/gms/location/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/et;->aPW:Lcom/google/android/gms/location/c;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eu;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Lcom/google/android/gms/common/api/a$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fl;

    iget-object v0, p0, Lcom/google/android/gms/internal/et;->aPW:Lcom/google/android/gms/location/c;

    const-class v1, Lcom/google/android/gms/location/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Listener must not be null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Listener type must not be null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Listener type must not be empty"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ae;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/common/api/internal/be;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/api/internal/be;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ev;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ev;-><init>(Lcom/google/android/gms/common/api/internal/ch;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/fl;->aQh:Lcom/google/android/gms/internal/fe;

    iget-object v0, v1, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fq;->oq()V

    const-string v0, "Invalid null listener key"

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/fe;->aQb:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fj;->release()V

    iget-object v1, v1, Lcom/google/android/gms/internal/fe;->aPL:Lcom/google/android/gms/internal/fq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/fq;->or()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fc;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/fo;->a(Lcom/google/android/gms/location/t;Lcom/google/android/gms/internal/ez;)Lcom/google/android/gms/internal/fo;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/fc;->a(Lcom/google/android/gms/internal/fo;)V

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
