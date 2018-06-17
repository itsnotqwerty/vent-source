.class public Lcom/layer/sdk/internal/lsdkd/lsdka/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/d;
.implements Lcom/layer/sdk/messaging/Identity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/b/d/d;

.field private c:Landroid/net/Uri;

.field private d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

.field private e:Lcom/layer/sdk/internal/lsdkd/h;

.field private f:Z

.field g:Z

.field private h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

.field private final i:Ljava/lang/Object;

.field private final j:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/layer/b/d/d;

    invoke-direct {v0, p2}, Lcom/layer/b/d/d;-><init>(Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c:Landroid/net/Uri;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;-><init>(Ljava/lang/String;Lcom/layer/sdk/messaging/Presence$PresenceStatus;Ljava/util/Date;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    if-nez p2, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/a/c;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/layer/b/d/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/layer/b/d/d;-><init>(Lcom/layer/b/f/a/c;B)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/m;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c:Landroid/net/Uri;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;-><init>(Ljava/lang/String;Lcom/layer/sdk/messaging/Presence$PresenceStatus;Ljava/util/Date;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkd/m;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "transient_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->f:Z

    iput-boolean v3, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->g:Z

    return-object v0
.end method

.method static a(Ljava/lang/String;Lcom/layer/sdk/internal/lsdkd/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;
    .locals 2

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-direct {v0, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->f:Z

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/h;)V

    return-object v0
.end method

.method public static varargs a(Lcom/layer/sdk/internal/lsdkd/h;[Lcom/layer/sdk/messaging/Identity;)V
    .locals 2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$2;

    invoke-direct {v1, p1, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e$2;-><init>([Lcom/layer/sdk/messaging/Identity;Lcom/layer/sdk/internal/lsdkd/h;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public static varargs a(Lcom/layer/sdk/internal/lsdkd/h;[Ljava/lang/String;)V
    .locals 2

    invoke-interface {p0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;

    invoke-direct {v1, p1, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e$1;-><init>([Ljava/lang/String;Lcom/layer/sdk/internal/lsdkd/h;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkd/lsdka/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e(Z)V

    return-void
.end method

.method private b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V
    .locals 4

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->clear()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkk/m$a;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v3, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/util/Date;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getLastSeenAt()Ljava/util/Date;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v3, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a(Ljava/util/Date;)V

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method static synthetic b(Lcom/layer/sdk/internal/lsdkd/lsdka/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->g:Z

    return v0
.end method

.method private c(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPresenceStatus()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v3, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method static synthetic c(Lcom/layer/sdk/internal/lsdkd/lsdka/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->f:Z

    return v0
.end method

.method private e(Z)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->isFollowed()Z

    move-result v2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-boolean p1, v3, Lcom/layer/b/d/d;->bqW:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v3, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method private j(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v3, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method private k(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v3, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method private l(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v3, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method private m(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v3, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method private n(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v3, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method private o(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v3, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method static synthetic ww()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 5

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->b(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkk/m$a;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v4, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 5

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1, p1, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkk/m$a;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-direct {p0, v4, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e$3;->bqe:[I

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Unknown change type"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown change type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->NOT_UPDATE:Lcom/layer/sdk/exceptions/LayerException$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v1

    :pswitch_1
    if-nez v0, :cond_5

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Cannot UPDATE without an attribute"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->UPDATE_WITHOUT_ATTRIBUTE:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot UPDATE without an attribute"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Identity DELETE is not supported"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Identity DELETE is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/e$3;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->CANNOT_UPDATE_ATTRIBUTE:Lcom/layer/sdk/exceptions/LayerException$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot update "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v1

    :pswitch_3
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e(Z)V

    goto/16 :goto_0

    :pswitch_b
    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V

    goto/16 :goto_0

    :pswitch_c
    check-cast v1, Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V

    goto/16 :goto_0

    :pswitch_d
    check-cast v1, Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Ljava/util/Date;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e:Lcom/layer/sdk/internal/lsdkd/h;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V
    .locals 6

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    :goto_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/n;)V
    .locals 2

    if-nez p1, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "PresenceImpl is null"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "presenceImpl is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/Date;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a(Ljava/util/Date;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {p0, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Identity deletion is not supported"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Identity deletion is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 6

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getOldValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    return-void
.end method

.method public b(Lcom/layer/sdk/internal/lsdkd/lsdka/n;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->b()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a(Ljava/lang/Long;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;

    invoke-virtual {p0, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/e$a;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v0, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Identity deletion is not supported"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Identity deletion is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v0, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Z)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-boolean p1, v0, Lcom/layer/b/d/d;->bvT:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Identity deletion is not supported"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Identity deletion is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v0, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-boolean p1, v0, Lcom/layer/b/d/d;->bqW:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Identity deletion is not supported"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Identity deletion is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Ljava/lang/Long;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v0, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v0, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-boolean v0, v0, Lcom/layer/b/d/d;->bvT:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public follow()V
    .locals 4

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "This is a facade Identity meant to represent a system message or announcement. It is not followable."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e:Lcom/layer/sdk/internal/lsdkd/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/h;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v0, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAvatarImageUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/f/a/c;->c:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/f/a/c;->b:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/f/a/c;->g:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/f/a/c;->d:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getId()Landroid/net/Uri;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c:Landroid/net/Uri;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/f/a/c;->e:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastSeenAt()Ljava/util/Date;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->c()Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMetadata()Lcom/layer/sdk/messaging/Metadata;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/f/a/c;->f:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPresenceStatus()Lcom/layer/sdk/messaging/Presence$PresenceStatus;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->b()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-object v0, v0, Lcom/layer/b/f/a/c;->a:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iput-object p1, v0, Lcom/layer/b/f/a/c;->h:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFollowed()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->b:Lcom/layer/b/d/d;

    iget-boolean v0, v0, Lcom/layer/b/d/d;->bqW:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdentityImpl [  id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatarImageUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getAvatarImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publicKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", followed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->isFollowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", presence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unFollow()V
    .locals 3

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "This is a facade Identity meant to represent a system message or announcement. It is not un-followable."

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->e:Lcom/layer/sdk/internal/lsdkd/h;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/layer/sdk/messaging/Identity;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Lcom/layer/sdk/internal/lsdkd/h;[Lcom/layer/sdk/messaging/Identity;)V

    goto :goto_0
.end method
