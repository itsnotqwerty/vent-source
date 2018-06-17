.class public final Lcom/google/android/gms/common/api/internal/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final AT:Ljava/lang/Object;

.field public static final aEZ:Lcom/google/android/gms/common/api/Status;

.field private static final aFa:Lcom/google/android/gms/common/api/Status;

.field private static aFc:Lcom/google/android/gms/common/api/internal/ah;


# instance fields
.field private final aCU:Lcom/google/android/gms/common/c;

.field final aDz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/aj",
            "<*>;>;"
        }
    .end annotation
.end field

.field private aEA:J

.field private aEB:J

.field private aFb:J

.field private aFd:I

.field public final aFe:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final aFf:Ljava/util/concurrent/atomic/AtomicInteger;

.field aFg:Lcom/google/android/gms/common/api/internal/g;

.field final aFh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final aFi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/cb",
            "<*>;>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/ah;->aEZ:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/ah;->aFa:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/ah;->AT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/c;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aEB:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aEA:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFb:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFd:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFe:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFf:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFg:Lcom/google/android/gms/common/api/internal/g;

    new-instance v0, Landroid/support/v4/g/b;

    invoke-direct {v0}, Landroid/support/v4/g/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFh:Ljava/util/Set;

    new-instance v0, Landroid/support/v4/g/b;

    invoke-direct {v0}, Landroid/support/v4/g/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFi:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ah;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/ah;->aCU:Lcom/google/android/gms/common/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/ah;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/internal/ah;->aFd:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/ah;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/ah;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFd:I

    return v0
.end method

.method private final b(Lcom/google/android/gms/common/api/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p1, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/aj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/aj;-><init>(Lcom/google/android/gms/common/api/internal/ah;Lcom/google/android/gms/common/api/e;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/aj;->mX()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ah;->aFi:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/aj;->connect()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/ah;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/internal/ah;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aEB:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/internal/ah;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aEA:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/internal/ah;)Lcom/google/android/gms/common/api/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFg:Lcom/google/android/gms/common/api/internal/g;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/internal/ah;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFh:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/internal/ah;)Lcom/google/android/gms/common/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aCU:Lcom/google/android/gms/common/c;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/internal/ah;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFb:J

    return-wide v0
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/internal/ah;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    return-object v0
.end method

.method private final nA()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFi:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cb;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/aj;->nG()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFi:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method static synthetic nB()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/ah;->aFa:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic nC()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/ah;->AT:Ljava/lang/Object;

    return-object v0
.end method

.method public static nz()Lcom/google/android/gms/common/api/internal/ah;
    .locals 3

    sget-object v1, Lcom/google/android/gms/common/api/internal/ah;->AT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/ah;->aFc:Lcom/google/android/gms/common/api/internal/ah;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/api/internal/ah;->aFc:Lcom/google/android/gms/common/api/internal/ah;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static y(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/ah;
    .locals 5

    sget-object v1, Lcom/google/android/gms/common/api/internal/ah;->AT:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/ah;->aFc:Lcom/google/android/gms/common/api/internal/ah;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/internal/ah;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/c;->mR()Lcom/google/android/gms/common/c;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/common/api/internal/ah;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/c;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/ah;->aFc:Lcom/google/android/gms/common/api/internal/ah;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/ah;->aFc:Lcom/google/android/gms/common/api/internal/ah;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;I)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/ah;->b(Lcom/google/android/gms/common/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method final b(Lcom/google/android/gms/common/a;I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ah;->aCU:Lcom/google/android/gms/common/c;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/ah;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->mP()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/common/a;->aCk:Landroid/app/PendingIntent;

    :goto_0
    if-eqz v1, :cond_0

    iget v0, p1, Lcom/google/android/gms/common/a;->aCj:I

    invoke-static {v3, v1, p2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget v1, p1, Lcom/google/android/gms/common/a;->aCj:I

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/android/gms/common/m;->b(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/16 v6, 0xc

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "GoogleApiManager"

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown message id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2710

    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFb:J

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/cb;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/ah;->aFb:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/cd;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/cd;->aCy:Landroid/support/v4/g/a;

    invoke-virtual {v1}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/cb;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/aj;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/common/a;

    const/16 v5, 0xd

    invoke-direct {v2, v5}, Lcom/google/android/gms/common/a;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/common/api/internal/cd;->a(Lcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/common/a;Ljava/lang/String;)V

    :cond_1
    :goto_4
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/aj;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/google/android/gms/common/a;->aCh:Lcom/google/android/gms/common/a;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->mZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lcom/google/android/gms/common/api/internal/cd;->a(Lcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/common/a;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/aj;->nI()Lcom/google/android/gms/common/a;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/aj;->nI()Lcom/google/android/gms/common/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/common/api/internal/cd;->a(Lcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/common/a;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v1, v2, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-object v1, v2, Lcom/google/android/gms/common/api/internal/aj;->aFo:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/aj;->nH()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/aj;->connect()V

    goto :goto_5

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/bh;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/bh;->aFX:Lcom/google/android/gms/common/api/e;

    iget-object v2, v2, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/aj;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/bh;->aFX:Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/ah;->b(Lcom/google/android/gms/common/api/e;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/bh;->aFX:Lcom/google/android/gms/common/api/e;

    iget-object v2, v2, Lcom/google/android/gms/common/api/e;->aCB:Lcom/google/android/gms/common/api/internal/cb;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/aj;

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/aj;->mX()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ah;->aFf:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v4, v0, Lcom/google/android/gms/common/api/internal/bh;->aFW:I

    if-eq v2, v4, :cond_6

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bh;->aFV:Lcom/google/android/gms/common/api/internal/a;

    sget-object v2, Lcom/google/android/gms/common/api/internal/ah;->aEZ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/a;->c(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/aj;->nG()V

    goto/16 :goto_4

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bh;->aFV:Lcom/google/android/gms/common/api/internal/a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/aj;->a(Lcom/google/android/gms/common/api/internal/a;)V

    goto/16 :goto_4

    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/aj;

    iget v6, v1, Lcom/google/android/gms/common/api/internal/aj;->aFq:I

    if-ne v6, v2, :cond_7

    :goto_6
    if-eqz v1, :cond_8

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x11

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/ah;->aCU:Lcom/google/android/gms/common/c;

    iget v6, v0, Lcom/google/android/gms/common/a;->aCj:I

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/m;->cD(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/google/android/gms/common/a;->aCl:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x45

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/aj;->d(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_4

    :cond_8
    const-string v0, "GoogleApiManager"

    const/16 v1, 0x4c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while trying to fail enqueued calls."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/ce;->b(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/ce;->nR()Lcom/google/android/gms/common/api/internal/ce;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/internal/ai;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/ai;-><init>(Lcom/google/android/gms/common/api/internal/ah;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/ce;->a(Lcom/google/android/gms/common/api/internal/cf;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/ce;->nR()Lcom/google/android/gms/common/api/internal/ce;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/ce;->aGG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_9

    move v1, v3

    :cond_9
    if-eqz v1, :cond_b

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/ce;->aGG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_a

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/ce;->aGF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_a
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ce;->aGF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    :goto_7
    if-nez v0, :cond_1

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aFb:J

    goto/16 :goto_4

    :cond_b
    move v0, v3

    goto :goto_7

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/ah;->b(Lcom/google/android/gms/common/api/e;)V

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-boolean v1, v0, Lcom/google/android/gms/common/api/internal/aj;->aEz:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/aj;->connect()V

    goto/16 :goto_4

    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/ah;->nA()V

    goto/16 :goto_4

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-boolean v1, v0, Lcom/google/android/gms/common/api/internal/aj;->aEz:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/aj;->nJ()V

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ah;->aCU:Lcom/google/android/gms/common/c;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ah;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/m;->w(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_c

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/aj;->d(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    goto/16 :goto_4

    :cond_c
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_8

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->aDz:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/aj;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/aj;->aFj:Lcom/google/android/gms/common/api/internal/ah;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->a(Landroid/os/Handler;)V

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/aj;->aFp:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/aj;->aFn:Lcom/google/android/gms/common/api/internal/e;

    iget-object v4, v2, Lcom/google/android/gms/common/api/internal/e;->aDQ:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/e;->aDR:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    move v1, v3

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/aj;->nK()V

    goto/16 :goto_4

    :cond_f
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/aj;->aFl:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->disconnect()V

    goto/16 :goto_4

    :cond_10
    move-object v1, v4

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
    .end packed-switch
.end method

.method public final nl()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ah;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
