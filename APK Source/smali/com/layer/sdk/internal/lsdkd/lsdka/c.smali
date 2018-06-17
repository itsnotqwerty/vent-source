.class public Lcom/layer/sdk/internal/lsdkd/lsdka/c;
.super Lcom/layer/sdk/messaging/Conversation;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;,
        Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/layer/sdk/internal/lsdkd/h;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Landroid/net/Uri;

.field private final i:Lcom/layer/sdk/internal/lsdkd/lsdka/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkd/lsdka/f",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Long;

.field private l:Ljava/util/UUID;

.field private m:Ljava/lang/Integer;

.field private n:Ljava/lang/Integer;

.field private o:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

.field private p:Ljava/util/Date;

.field private q:Ljava/lang/Long;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;-><init>(Landroid/net/Uri;Ljava/lang/Long;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Long;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/layer/sdk/messaging/Conversation;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->p()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e:Ljava/util/Map;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->h:Landroid/net/Uri;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->s:Z

    iput-boolean v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->t:Z

    iput-boolean v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->u:Z

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->h:Landroid/net/Uri;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->q:Ljava/lang/Long;

    sget-object v0, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;->INVALID:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->o:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    iput-boolean p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->u:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->q:Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/ConversationOptions;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/m;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;-><init>(Landroid/net/Uri;Ljava/lang/Long;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/layer/sdk/messaging/ConversationOptions;

    invoke-direct {p1}, Lcom/layer/sdk/messaging/ConversationOptions;-><init>()V

    :cond_0
    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/ConversationOptions;->isDeliveryReceipts()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;Z)V

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/ConversationOptions;->isDistinct()Z

    move-result v0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-direct {v3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/Set;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/util/Set;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 1

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/Set;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Set;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/c;"
        }
    .end annotation

    const/4 v3, 0x6

    if-nez p1, :cond_1

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Null Participants"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NULL_PARTICIPANTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Null participants"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "No Participants"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NO_PARTICIPANTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "No participants"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_5

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Participant count of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is more than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->TOO_MANY_PARTICIPANTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Participant count of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Null Participant"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NULL_PARTICIPANT:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Null participant"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Empty Participant"

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;Z)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

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

.method private a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    monitor-exit v3

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/lang/String;)J
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getLastMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_2

    move v2, v1

    move v0, v1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/k;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->c(I)Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/k$a;->d()J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/layer/sdk/internal/lsdke/b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->l()Lcom/layer/sdk/internal/lsdke/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/layer/sdk/internal/lsdke/b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/k;->a(J)I

    move-result v1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/k;->b(J)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    move v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Lcom/layer/sdk/internal/lsdkd/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    return-object v0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static p()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->values()[Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private q()Z
    .locals 4

    const/4 v2, 0x5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Cannot mark all messages as read when the conversation has read receipts disabled"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->CONVERSATION_HAS_DISABLED_READ_RECEIPTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot mark all messages as read when the conversation has read receipts disabled"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring call to `markAllMessagesAsRead`. Cannot request `markAllMessagesAsRead` on a new Conversation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring call to `markAllMessagesAsRead`. Cannot request `markAllMessagesAsRead` on a deleted Conversation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring call to `markAllMessagesAsRead`. Cannot `markAllMessagesAsRead` if there are no messages on the Conversation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()I
    .locals 1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xfa

    goto :goto_0
.end method

.method static synthetic wv()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 5

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->b(Lcom/layer/sdk/internal/lsdkk/m$c;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkk/m$a;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v4, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1, p1, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$i;)Lcom/layer/sdk/internal/lsdkk/m$i;

    move-result-object v3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkk/m$a;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v4, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->h:Landroid/net/Uri;

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

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    sget-object v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->bqK:[I

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

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
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->a()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Z)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Z)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e(Z)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->clear()V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    iget-object v4, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v2, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    iget-object v4, v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalMessageCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :goto_0
    :pswitch_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

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

    :pswitch_2
    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->UPDATE_WITHOUT_ATTRIBUTE:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot UPDATE without an attribute"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move-object v0, v1

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Z)V

    goto :goto_0

    :pswitch_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Z)V

    goto :goto_0

    :pswitch_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f(Z)V

    goto :goto_0

    :pswitch_7
    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_8
    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {p0, v1, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Z)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l()Ljava/util/List;

    move-result-object v4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l()Ljava/util/List;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto/16 :goto_0

    :pswitch_a
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Long;)V

    goto/16 :goto_0

    :pswitch_b
    check-cast v1, Ljava/util/UUID;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/util/UUID;)V

    goto/16 :goto_0

    :pswitch_c
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_d
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_e
    check-cast v1, Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
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
        :pswitch_e
    .end packed-switch
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/d;)V
    .locals 0

    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

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
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->values()[Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    sget-object v5, Lcom/layer/sdk/internal/lsdkd/lsdka/c$7;->b:[I

    invoke-virtual {v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Handle updates to the Attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Z)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Z)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f(Z)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/util/List;)Z

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/util/UUID;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalMessageCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Z)V
    .locals 4

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v1, p1}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;

    :goto_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getMetadata()Lcom/layer/sdk/messaging/Metadata;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/m;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/m;Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkk/m$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/internal/lsdkk/m$a;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v3, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->clear()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/m;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->o:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m:Ljava/lang/Integer;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->q:Ljava/lang/Long;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->p:Ljava/util/Date;

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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->p()Ljava/util/Map;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e:Ljava/util/Map;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/util/UUID;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l:Ljava/util/UUID;

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
    .locals 7

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d()Z

    move-result v1

    if-ne v0, p1, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Z)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_1
    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x5

    :try_start_1
    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to undelete conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public addParticipantsByIds(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x6

    const-string v0, "Cannot add participants when no user is authenticated."

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Cannot add null participant set"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NULL_PARTICIPANT:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot add null participant set"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Cannot add empty participant set"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NO_PARTICIPANTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot add empty participant set"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Cannot add null participant"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NULL_PARTICIPANT:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot add null participant"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Cannot add empty participant"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->EMPTY_PARTICIPANT:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot add empty participant"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v1, :cond_a

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot add participants as there are too many participants. Participant count of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    new-instance v2, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v3, Lcom/layer/sdk/exceptions/LayerException$Type;->TOO_MANY_PARTICIPANTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Participant count of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is more than "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v2

    :cond_a
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding participants : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to conversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-direct {v3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->b(Ljava/lang/Long;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/j;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/List;)V

    :goto_1
    return-void

    :cond_d
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$1;

    invoke-direct {v2, p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$1;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    goto :goto_1
.end method

.method public b(Landroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

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

.method public b(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :goto_0
    return-void

    :cond_0
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

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto :goto_0
.end method

.method public b(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->m:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public b(Ljava/lang/Integer;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->n:Ljava/lang/Integer;

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
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k:Ljava/lang/Long;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public b(Ljava/util/UUID;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/util/UUID;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->j:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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
    .locals 7

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c()Z

    move-result v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d()Z

    move-result v1

    if-ne v1, p1, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d(Z)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_1
    :goto_1
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c(Lcom/layer/sdk/internal/lsdkd/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

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

.method public c(Landroid/net/Uri;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Landroid/net/Uri;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public c(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/Integer;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalMessageCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/Integer;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->k:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public c(Ljava/lang/Long;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Long;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->s:Z

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->s:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
            ">;)Z"
        }
    .end annotation

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->g()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->g()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->e()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->e()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->d(Ljava/lang/Long;)V

    :cond_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->f()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v0, v4, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method

.method public d(Landroid/net/Uri;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Landroid/net/Uri;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public d(Ljava/lang/Integer;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getTotalUnreadMessageCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/lang/Integer;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->l:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public d(Z)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->t:Z

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->t:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
            ">;)Z"
        }
    .end annotation

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->g()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->g()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->e()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->e()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->d(Ljava/lang/Long;)V

    :cond_1
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->f()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Z)V

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-direct {p0, v0, v4, v5}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public delete(Lcom/layer/sdk/LayerClient$DeletionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;

    invoke-direct {v1, p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$9;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/LayerClient$DeletionMode;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public e()Lcom/layer/sdk/internal/lsdkd/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r:Z

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

    instance-of v1, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Z)V
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDistinct()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->e(Z)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$a;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public g()Ljava/lang/Long;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->q:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoricSyncStatus()Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->o:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->h:Landroid/net/Uri;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastMessage()Lcom/layer/sdk/messaging/Message;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message;

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

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

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

.method public getParticipants()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcom/layer/sdk/internal/lsdkd/m;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v5}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-static {v4, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/e;->a(Ljava/lang/String;Lcom/layer/sdk/internal/lsdkd/h;)Lcom/layer/sdk/internal/lsdkd/lsdka/e;

    move-result-object v0

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    const/4 v5, 0x2

    :try_start_1
    invoke-static {v5}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v6, "Conversation participant\'s user id is empty, creating placeholder identity"

    invoke-static {v5, v6}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getTotalMessageCount()Ljava/lang/Integer;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m:Ljava/lang/Integer;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTotalUnreadMessageCount()Ljava/lang/Integer;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->n:Ljava/lang/Integer;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Ljava/util/Date;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->p:Ljava/util/Date;

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

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Landroid/net/Uri;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->i:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

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

.method public isDeleted()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->t:Z

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

.method public isDeliveryReceiptsEnabled()Z
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;->a:Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/c$b;)Z

    move-result v0

    return v0
.end method

.method public isDistinct()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReadReceiptsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->u:Z

    return v0
.end method

.method public j()Ljava/util/UUID;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l:Ljava/util/UUID;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

.method public l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/d;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m()Ljava/lang/Long;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public markAllMessagesAsRead()V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "markAllMessagesAsRead : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    if-nez v0, :cond_3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring call to `markAllMessagesAsRead`. Cannot `markAllMessagesAsRead` if the current user is not a participant on the Conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    new-instance v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$3;

    invoke-direct {v2, p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$3;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/d;)V

    invoke-interface {v1, v2}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    goto :goto_0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public putMetadata(Lcom/layer/sdk/messaging/Metadata;Z)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadata cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/m;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/m;)Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    new-instance v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$5;

    invoke-direct {v2, p0, v0, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$5;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/m;Z)V

    invoke-interface {v1, v2}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public putMetadataAtKeyPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$h;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v2

    new-instance v3, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$4;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkk/m$c;Lcom/layer/sdk/internal/lsdkk/m$h;)V

    invoke-interface {v2, v3}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public removeMetadataAtKeyPath(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v1

    new-instance v2, Lcom/layer/sdk/internal/lsdkd/lsdka/c$6;

    invoke-direct {v2, p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$6;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkk/m$c;)V

    invoke-interface {v1, v2}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public removeParticipants(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Cannot remove participants when no user is authenticated."

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Cannot remove null participant set"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot remove null participant set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_3

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NO_PARTICIPANTS:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v2, "Cannot reduce participants to zero; delete the conversation instead."

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing Conversation participants from list with size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Identity;

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Identity;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/d;

    if-eqz v0, :cond_7

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/layer/sdk/internal/lsdkd/lsdka/d;->a(Z)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/j;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/j;->c(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;

    invoke-direct {v1, p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$8;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    goto :goto_1
.end method

.method public send(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V
    .locals 3

    const-string v0, "Cannot send typing indicator when no user is authenticated."

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending TypingIndicator with value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Conversation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Ljava/util/UUID;Lcom/layer/sdk/listeners/LayerTypingIndicatorListener$TypingIndicator;)V

    goto :goto_0
.end method

.method public send(Lcom/layer/sdk/messaging/Message;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->send(Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    return-void
.end method

.method public send(Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/listeners/LayerProgressListener;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending Message (Id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/layer/sdk/messaging/Message;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to Conversation (Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->getId()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$10;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/messaging/Message;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public syncAllHistoricMessages()V
    .locals 3

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syncAllHistoricMessages : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring call to `syncAllHistoricMessages`. Cannot request `syncAllHistoricMessages` on a new Conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$2;

    invoke-direct {v1, p0, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$2;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    goto :goto_0
.end method

.method public syncFromEarliestUnreadMessage()V
    .locals 4

    const/4 v3, 0x5

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syncFromEarliestUnreadMessage  : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring call to `syncFromEarliestUnreadMessage`. Cannot request `syncFromEarliestUnreadMessage` on a new Conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->isReadReceiptsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring call to `syncFromEarliestUnreadMessage`. Cannot request `syncFromEarliestUnreadMessage` on a Conversation with read receipts disabled. Conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$12;

    invoke-direct {v1, p0, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$12;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/c;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    goto :goto_0
.end method

.method public syncMoreHistoricMessages(I)V
    .locals 3

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syncMoreHistoricMessages "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring call to `syncMoreHistoricMessages`. Cannot request `syncMoreHistoricMessages` on a new Conversation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;

    invoke-direct {v1, p0, p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/c$11;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/c;Lcom/layer/sdk/internal/lsdkd/lsdka/c;I)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationImpl [  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->h:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStreamDatabaseId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->k:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStreamId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->l:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCreatedAt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->p:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDatabaseId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->q:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDistinct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTotalMessageCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->m:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTotalUnreadMessageCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHistoricSyncStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->o:Lcom/layer/sdk/messaging/Conversation$HistoricSyncStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mReadReceiptsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mParticipants: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j:Ljava/util/Map;

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
