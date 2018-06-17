.class public Lcom/layer/sdk/internal/lsdkd/lsdka/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/d;
.implements Lcom/layer/sdk/messaging/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;
    }
.end annotation


# static fields
.field private static final d:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Lcom/layer/sdk/internal/lsdkd/h;

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/lang/Long;

.field private h:Landroid/net/Uri;

.field private i:Ljava/lang/Integer;

.field private j:J

.field private k:Ljava/util/Date;

.field private l:Ljava/util/Date;

.field private m:Z

.field private n:Lcom/layer/sdk/messaging/MessageOptions;

.field private o:Ljava/lang/Long;

.field private p:Ljava/lang/Long;

.field private final q:Lcom/layer/sdk/internal/lsdkd/lsdka/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkd/lsdka/f",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkd/lsdka/g",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/layer/sdk/internal/lsdkd/lsdka/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkd/lsdka/f",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/e;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;-><init>(Landroid/net/Uri;Ljava/lang/Long;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Long;Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m:Z

    iput-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o:Ljava/lang/Long;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    iput-boolean v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->u:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->v:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->y:Z

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h:Landroid/net/Uri;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o:Ljava/lang/Long;

    iput-boolean p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->y:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j:J

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o:Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/messaging/MessageOptions;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/MessageOptions;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/m;->b()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/layer/sdk/messaging/MessageOptions;

    invoke-direct {p1}, Lcom/layer/sdk/messaging/MessageOptions;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->n:Lcom/layer/sdk/messaging/MessageOptions;

    invoke-virtual {p0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->f()Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkd/lsdka/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkd/lsdka/i;)Ljava/util/UUID;
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->x()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NOT_AUTHENTICATED:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-direct {v0, v1, p1}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->n:Lcom/layer/sdk/messaging/MessageOptions;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessageOptions;->getDefaultPushNotificationPayload()Lcom/layer/sdk/messaging/PushNotificationPayload;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->n:Lcom/layer/sdk/messaging/MessageOptions;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessageOptions;->getUserPushNotificationPayloads()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkd/n;->a(Lcom/layer/sdk/messaging/PushNotificationPayload;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;-><init>()V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/h$b;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/h$a;)V

    const-string v2, "layer-push-notification"

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/h;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/h;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

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

.method static synthetic wx()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method

.method private x()Ljava/util/UUID;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/layer/sdk/messaging/Message$RecipientStatus;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->PENDING:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Provided userId is not part of the conversation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->READ:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    monitor-exit v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/layer/sdk/messaging/Message$RecipientStatus;->SENT:Lcom/layer/sdk/messaging/Message$RecipientStatus;

    monitor-exit v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->d()Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
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

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public a(J)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NULL_CONVERSATION:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot set message conversation to null"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a(Landroid/net/Uri;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i$3;->bqK:[I

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$3;->brd:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

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

    :pswitch_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :goto_0
    :pswitch_1
    return-void

    :cond_1
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

    :pswitch_2
    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->UPDATE_WITHOUT_ATTRIBUTE:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot UPDATE without an attribute"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d(Ljava/lang/Long;)V

    goto :goto_0

    :pswitch_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Z)V

    goto :goto_0

    :pswitch_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Z)V

    goto :goto_0

    :pswitch_6
    check-cast v1, Ljava/util/Date;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Ljava/util/Date;)V

    goto :goto_0

    :pswitch_7
    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_8
    check-cast v1, Ljava/util/Date;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d(Ljava/util/Date;)V

    goto :goto_0

    :pswitch_9
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a(Lcom/layer/sdk/internal/lsdkd/h;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a(Lcom/layer/sdk/internal/lsdkd/h;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a(Lcom/layer/sdk/internal/lsdkd/h;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a(Lcom/layer/sdk/internal/lsdkd/d;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/h;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i:Ljava/lang/Integer;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/h;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/layer/sdk/messaging/Message$RecipientStatus;Ljava/lang/Integer;)V
    .locals 10

    iget-object v7, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->d()Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v0

    if-eq v0, p2, :cond_2

    :cond_0
    const/4 v0, 0x1

    move v6, v0

    :goto_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/layer/sdk/messaging/Message$RecipientStatus;Ljava/lang/Integer;)V

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-direct {p0, v0, v8, v9}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    monitor-exit v7

    return-void

    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->w:Ljava/lang/String;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->x:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkd/m;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a(Landroid/net/Uri;)V

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

.method public a(Ljava/util/Date;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->k:Ljava/util/Date;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Null parts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Parts already set: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getId()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/layer/sdk/internal/lsdkd/m;->a(Landroid/net/Uri;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Landroid/net/Uri;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->b(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/l;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

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
    .locals 8

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->isDeleted()Z

    move-result v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c()Z

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Z)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-eqz v2, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v3, v8

    move-object v4, v8

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
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

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/changes/LayerChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i$3;->brd:[I

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getOldValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v6

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto :goto_0

    :cond_2
    move v2, v7

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/Integer;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public b(Ljava/lang/Long;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o:Ljava/lang/Long;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/l;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/l;->b(Ljava/lang/Long;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b(Ljava/util/Date;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->l:Ljava/util/Date;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set parts to null: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Message parts not empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/l;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/util/Map;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public b(Z)V
    .locals 8

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->isDeleted()Z

    move-result v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d()Z

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Z)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-eqz v2, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

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

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/Long;)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setEventDatabaseId Event Database ID already set ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g:Ljava/lang/Long;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public c(Ljava/util/Date;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getReceivedAt()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b(Ljava/util/Date;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public c(Z)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->u:Z

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->u:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/Long;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c(Ljava/lang/Long;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public d(Ljava/util/Date;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getSentAt()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/util/Date;)V

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    invoke-direct {p0, v4, v2, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v4, v2, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/i$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->v:Z

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->v:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public delete(Lcom/layer/sdk/LayerClient$DeletionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i$1;

    invoke-direct {v1, p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$1;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/i;Lcom/layer/sdk/LayerClient$DeletionMode;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->v()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->n:Lcom/layer/sdk/messaging/MessageOptions;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->w()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    iget-boolean v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->m:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->w()V

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public e(Z)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->y:Z

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

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/layer/sdk/internal/lsdkd/lsdka/i;
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getMessageParts()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NULL_MESSAGE_PARTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Null message parts"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getMessageParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NO_MESSAGE_PARTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "No message parts"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getMessageParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    if-nez v0, :cond_3

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NULL_MESSAGE_PART:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Null message part"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iget-object v2, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NULL_MESSAGE_PART_DATA:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Null message part data"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method public g()Landroid/net/Uri;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a()Landroid/net/Uri;

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

.method public getConversation()Lcom/layer/sdk/messaging/Conversation;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->q:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Conversation;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h:Landroid/net/Uri;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMessageParts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/MessagePart;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null message parts: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getOptions()Lcom/layer/sdk/messaging/MessageOptions;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->n:Lcom/layer/sdk/messaging/MessageOptions;

    return-object v0
.end method

.method public getPosition()J
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReceivedAt()Ljava/util/Date;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->l:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecipientStatus(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Message$RecipientStatus;
    .locals 1

    invoke-interface {p1}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a(Ljava/lang/String;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientStatus()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            "Lcom/layer/sdk/messaging/Message$RecipientStatus;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getSender()Lcom/layer/sdk/messaging/Identity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    iget-boolean v0, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getRecipientStatus(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/m;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v4}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getRecipientStatus(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getRecipientStatus(Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Message$RecipientStatus;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getSender()Lcom/layer/sdk/messaging/Identity;
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->s:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->x:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Identity user ID was not set, nor does it have a user name."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSentAt()Ljava/util/Date;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->k:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Ljava/lang/Long;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->o:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/Long;
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeleted()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->v:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

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

.method public isSent()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getSentAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

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

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->r:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/h;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->t:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/l;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markAsRead()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i$2;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/i;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->x:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->w:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public p()Ljava/lang/Integer;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->i:Ljava/lang/Integer;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q()Ljava/lang/Long;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->y:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public t()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->isContentReady()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v0

    sget-object v3, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
