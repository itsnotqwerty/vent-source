.class public Lcom/layer/sdk/services/LayerReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/services/LayerReceiver$Listener;,
        Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/layer/sdk/services/LayerReceiver$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/layer/sdk/services/LayerReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/services/LayerReceiver;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/services/LayerReceiver;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/layer/sdk/services/LayerReceiver;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sput-object p0, Lcom/layer/sdk/services/LayerReceiver;->c:Lcom/layer/sdk/services/LayerReceiver;

    return-void
.end method

.method public static declared-synchronized createAndRegister(Landroid/app/Application;)V
    .locals 4

    const-class v1, Lcom/layer/sdk/services/LayerReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/layer/sdk/services/LayerReceiver;->c:Lcom/layer/sdk/services/LayerReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/layer/sdk/services/LayerReceiver;

    invoke-direct {v0}, Lcom/layer/sdk/services/LayerReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/services/LayerReceiver;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network is connected: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    sget-object v2, Lcom/layer/sdk/services/LayerReceiver;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NetworkInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static register(Lcom/layer/sdk/services/LayerReceiver$Listener;)V
    .locals 3

    sget-object v1, Lcom/layer/sdk/services/LayerReceiver;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/layer/sdk/services/LayerReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/layer/sdk/services/LayerReceiver;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregister(Lcom/layer/sdk/services/LayerReceiver$Listener;)V
    .locals 5

    sget-object v2, Lcom/layer/sdk/services/LayerReceiver;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Lcom/layer/sdk/services/LayerReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/services/LayerReceiver$Listener;

    if-eqz v1, :cond_1

    if-ne v1, p0, :cond_0

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/layer/sdk/services/LayerReceiver;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic wL()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/layer/sdk/services/LayerReceiver;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/services/LayerReceiver;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;

    invoke-static {p1}, Lcom/layer/sdk/services/LayerReceiver;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;->CONNECTION_AVAILABLE:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;

    :goto_0
    invoke-direct {v1, v0}, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;-><init>(Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/layer/sdk/services/LayerReceiver$1;

    invoke-direct {v2, p0, v1}, Lcom/layer/sdk/services/LayerReceiver$1;-><init>(Lcom/layer/sdk/services/LayerReceiver;Lcom/layer/sdk/services/LayerReceiver$ServiceEvent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;->CONNECTION_UNAVAILABLE:Lcom/layer/sdk/services/LayerReceiver$ServiceEvent$Type;

    goto :goto_0
.end method
