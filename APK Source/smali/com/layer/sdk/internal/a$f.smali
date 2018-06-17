.class Lcom/layer/sdk/internal/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/listeners/LayerChangeEventListener$BackgroundThread;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/LayerClient;

.field private final bqi:Landroid/os/Handler;

.field private final bqj:Lcom/layer/sdk/LayerClient$ContentAvailableCallback;

.field private final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/a$f;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/a$f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/LayerClient;Landroid/os/Handler;Landroid/net/Uri;Lcom/layer/sdk/LayerClient$ContentAvailableCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/a$f;->b:Lcom/layer/sdk/LayerClient;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$f;->bqi:Landroid/os/Handler;

    iput-object p3, p0, Lcom/layer/sdk/internal/a$f;->d:Landroid/net/Uri;

    iput-object p4, p0, Lcom/layer/sdk/internal/a$f;->bqj:Lcom/layer/sdk/LayerClient$ContentAvailableCallback;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/a$f;)Lcom/layer/sdk/LayerClient;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$f;->b:Lcom/layer/sdk/LayerClient;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$f;->b:Lcom/layer/sdk/LayerClient;

    invoke-virtual {v0, p0}, Lcom/layer/sdk/LayerClient;->unregisterEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;

    iget-object v0, p0, Lcom/layer/sdk/internal/a$f;->bqi:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/a$f;->b:Lcom/layer/sdk/LayerClient;

    check-cast v0, Lcom/layer/sdk/internal/lsdkk/o;

    iget-object v1, p0, Lcom/layer/sdk/internal/a$f;->bqj:Lcom/layer/sdk/LayerClient$ContentAvailableCallback;

    instance-of v1, v1, Lcom/layer/sdk/LayerClient$ContentAvailableCallback$BackgroundThread;

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdkk/o;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/layer/sdk/internal/lsdkk/o;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/layer/sdk/internal/a$f;)Lcom/layer/sdk/LayerClient$ContentAvailableCallback;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$f;->bqj:Lcom/layer/sdk/LayerClient$ContentAvailableCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/a$f;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$f;->d:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized onChangeEvent(Lcom/layer/sdk/changes/LayerChangeEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/changes/LayerChangeEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/changes/LayerChange;

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/Queryable;

    invoke-interface {v0}, Lcom/layer/sdk/query/Queryable;->getId()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/layer/sdk/internal/a$f;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/a$f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received content for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/a$f;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/layer/sdk/internal/a$f;->a()V

    new-instance v1, Lcom/layer/sdk/internal/a$f$1;

    invoke-direct {v1, p0, v0}, Lcom/layer/sdk/internal/a$f$1;-><init>(Lcom/layer/sdk/internal/a$f;Lcom/layer/sdk/query/Queryable;)V

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/a$f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/a$f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WaitForContent timed out for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/a$f;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/a$f;->a()V

    new-instance v0, Lcom/layer/sdk/internal/a$f$2;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/a$f$2;-><init>(Lcom/layer/sdk/internal/a$f;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/a$f;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
