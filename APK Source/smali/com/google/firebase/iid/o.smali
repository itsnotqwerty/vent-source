.class public final Lcom/google/firebase/iid/o;
.super Ljava/lang/Object;


# static fields
.field private static bfr:Lcom/google/firebase/iid/o;


# instance fields
.field final aUM:Landroid/content/Context;

.field final bfs:Ljava/util/concurrent/ScheduledExecutorService;

.field private bft:Lcom/google/firebase/iid/p;

.field private bfu:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/iid/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/p;-><init>(Lcom/google/firebase/iid/o;B)V

    iput-object v0, p0, Lcom/google/firebase/iid/o;->bft:Lcom/google/firebase/iid/p;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/iid/o;->bfu:I

    iput-object p2, p0, Lcom/google/firebase/iid/o;->bfs:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/o;->aUM:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized ao(Landroid/content/Context;)Lcom/google/firebase/iid/o;
    .locals 3

    const-class v1, Lcom/google/firebase/iid/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/o;->bfr:Lcom/google/firebase/iid/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/iid/o;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/firebase/iid/o;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v0, Lcom/google/firebase/iid/o;->bfr:Lcom/google/firebase/iid/o;

    :cond_0
    sget-object v0, Lcom/google/firebase/iid/o;->bfr:Lcom/google/firebase/iid/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/firebase/iid/w;)Lcom/google/android/gms/c/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/iid/w",
            "<TT;>;)",
            "Lcom/google/android/gms/c/e",
            "<TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MessengerIpcClient"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Queueing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/o;->bft:Lcom/google/firebase/iid/p;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/p;->b(Lcom/google/firebase/iid/w;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/firebase/iid/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/iid/p;-><init>(Lcom/google/firebase/iid/o;B)V

    iput-object v0, p0, Lcom/google/firebase/iid/o;->bft:Lcom/google/firebase/iid/p;

    iget-object v0, p0, Lcom/google/firebase/iid/o;->bft:Lcom/google/firebase/iid/p;

    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/p;->b(Lcom/google/firebase/iid/w;)Z

    :cond_1
    iget-object v0, p1, Lcom/google/firebase/iid/w;->bfE:Lcom/google/android/gms/c/f;

    iget-object v0, v0, Lcom/google/android/gms/c/f;->bdU:Lcom/google/android/gms/c/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized uL()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/firebase/iid/o;->bfu:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/firebase/iid/o;->bfu:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
