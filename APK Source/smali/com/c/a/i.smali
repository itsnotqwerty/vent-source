.class public final Lcom/c/a/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/i$c;,
        Lcom/c/a/i$b;,
        Lcom/c/a/i$a;
    }
.end annotation


# instance fields
.field final bMY:Lcom/c/a/d;

.field final bMZ:Lcom/c/a/aa;

.field final bNA:Z

.field bNB:Z

.field final bNq:Lcom/c/a/i$b;

.field final bNr:Ljava/util/concurrent/ExecutorService;

.field final bNs:Lcom/c/a/j;

.field final bNt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final bNu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final bNv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final bNw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final bNx:Landroid/os/Handler;

.field final bNy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final bNz:Lcom/c/a/i$c;

.field final context:Landroid/content/Context;

.field final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/c/a/j;Lcom/c/a/d;Lcom/c/a/aa;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/c/a/i$b;

    invoke-direct {v0}, Lcom/c/a/i$b;-><init>()V

    iput-object v0, p0, Lcom/c/a/i;->bNq:Lcom/c/a/i$b;

    iget-object v0, p0, Lcom/c/a/i;->bNq:Lcom/c/a/i$b;

    invoke-virtual {v0}, Lcom/c/a/i$b;->start()V

    iget-object v0, p0, Lcom/c/a/i;->bNq:Lcom/c/a/i$b;

    invoke-virtual {v0}, Lcom/c/a/i$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/ag;->a(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/c/a/i;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/c/a/i;->bNr:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/i;->bNt:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/i;->bNu:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/i;->bNv:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/c/a/i;->bNw:Ljava/util/Set;

    new-instance v0, Lcom/c/a/i$a;

    iget-object v1, p0, Lcom/c/a/i;->bNq:Lcom/c/a/i$b;

    invoke-virtual {v1}, Lcom/c/a/i$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/c/a/i$a;-><init>(Landroid/os/Looper;Lcom/c/a/i;)V

    iput-object v0, p0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/c/a/i;->bNs:Lcom/c/a/j;

    iput-object p3, p0, Lcom/c/a/i;->bNx:Landroid/os/Handler;

    iput-object p5, p0, Lcom/c/a/i;->bMY:Lcom/c/a/d;

    iput-object p6, p0, Lcom/c/a/i;->bMZ:Lcom/c/a/aa;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/c/a/i;->bNy:Ljava/util/List;

    iget-object v0, p0, Lcom/c/a/i;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/ag;->aB(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/a/i;->bNB:Z

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/c/a/ag;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/a/i;->bNA:Z

    new-instance v0, Lcom/c/a/i$c;

    invoke-direct {v0, p0}, Lcom/c/a/i$c;-><init>(Lcom/c/a/i;)V

    iput-object v0, p0, Lcom/c/a/i;->bNz:Lcom/c/a/i$c;

    iget-object v0, p0, Lcom/c/a/i;->bNz:Lcom/c/a/i$c;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/c/a/i$c;->bMX:Lcom/c/a/i;

    iget-boolean v2, v2, Lcom/c/a/i;->bNA:Z

    if-eqz v2, :cond_0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lcom/c/a/i$c;->bMX:Lcom/c/a/i;

    iget-object v2, v2, Lcom/c/a/i;->context:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private b(Lcom/c/a/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/c/a/a;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/c/a/a;->bMN:Z

    iget-object v1, p0, Lcom/c/a/i;->bNu:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private d(Lcom/c/a/c;)V
    .locals 4

    iget-object v0, p1, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/c/a/i;->b(Lcom/c/a/a;)V

    :cond_0
    iget-object v2, p1, Lcom/c/a/c;->bNc:Ljava/util/List;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    invoke-direct {p0, v0}, Lcom/c/a/i;->b(Lcom/c/a/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static y(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/c/a/c;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/c;

    iget-object v0, v0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v0, v0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/c;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v0}, Lcom/c/a/ag;->f(Lcom/c/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "Dispatcher"

    const-string v2, "delivered"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/net/NetworkInfo;)V
    .locals 5

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/c/a/i;->bNr:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Lcom/c/a/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/i;->bNr:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Lcom/c/a/v;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    invoke-virtual {v0, v2}, Lcom/c/a/v;->ed(I)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/c/a/i;->bNu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/c/a/i;->bNu:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, v0, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    iget-boolean v2, v2, Lcom/c/a/t;->bOj:Z

    if-eqz v2, :cond_2

    const-string v2, "Dispatcher"

    const-string v3, "replaying"

    iget-object v4, v0, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v4}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/c/a/i;->a(Lcom/c/a/a;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v0, v2}, Lcom/c/a/v;->ed(I)V

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/c/a/v;->ed(I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/c/a/v;->ed(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/c/a/v;->ed(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/c/a/v;->ed(I)V

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/c/a/v;->ed(I)V

    goto :goto_0

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lcom/c/a/a;Z)V
    .locals 5

    iget-object v0, p0, Lcom/c/a/i;->bNw:Ljava/util/Set;

    iget-object v1, p1, Lcom/c/a/a;->tag:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/i;->bNv:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/c/a/a;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    iget-boolean v0, v0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_0

    const-string v0, "Dispatcher"

    const-string v1, "paused"

    iget-object v2, p1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "because tag \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/c/a/a;->tag:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is paused"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/c/a/i;->bNt:Ljava/util/Map;

    iget-object v1, p1, Lcom/c/a/a;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/c;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v1, v1, Lcom/c/a/t;->bOj:Z

    iget-object v2, p1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    iget-object v3, v0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    if-nez v3, :cond_4

    iput-object p1, v0, Lcom/c/a/c;->bMP:Lcom/c/a/a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/c/a/c;->bNc:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/c/a/c;->bNc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "Hunter"

    const-string v1, "joined"

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    const-string v3, "to empty hunter"

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "Hunter"

    const-string v3, "joined"

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    const-string v4, "to "

    invoke-static {v0, v4}, Lcom/c/a/ag;->a(Lcom/c/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v2, v0}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/c/a/c;->bNc:Ljava/util/List;

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/c/a/c;->bNc:Ljava/util/List;

    :cond_5
    iget-object v3, v0, Lcom/c/a/c;->bNc:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    const-string v1, "Hunter"

    const-string v3, "joined"

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    const-string v4, "to "

    invoke-static {v0, v4}, Lcom/c/a/ag;->a(Lcom/c/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    iget v1, v1, Lcom/c/a/w;->bNi:I

    add-int/lit8 v2, v1, -0x1

    iget v3, v0, Lcom/c/a/c;->bNi:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    iput v1, v0, Lcom/c/a/c;->bNi:I

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/c/a/i;->bNr:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    iget-boolean v0, v0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_0

    const-string v0, "Dispatcher"

    const-string v1, "ignored"

    iget-object v2, p1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    const-string v3, "because shut down"

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p1, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    iget-object v1, p0, Lcom/c/a/i;->bMY:Lcom/c/a/d;

    iget-object v2, p0, Lcom/c/a/i;->bMZ:Lcom/c/a/aa;

    invoke-static {v0, p0, v1, v2, p1}, Lcom/c/a/c;->a(Lcom/c/a/t;Lcom/c/a/i;Lcom/c/a/d;Lcom/c/a/aa;Lcom/c/a/a;)Lcom/c/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/c/a/i;->bNr:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/c/a/c;->bNe:Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/c/a/i;->bNt:Ljava/util/Map;

    iget-object v2, p1, Lcom/c/a/a;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/c/a/i;->bNu:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/c/a/a;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p1, Lcom/c/a/a;->bMF:Lcom/c/a/t;

    iget-boolean v0, v0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_0

    const-string v0, "Dispatcher"

    const-string v1, "enqueued"

    iget-object v2, p1, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method final a(Lcom/c/a/c;)V
    .locals 4

    iget-object v0, p0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method final a(Lcom/c/a/c;Z)V
    .locals 5

    iget-object v0, p1, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v0, v0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_0

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {p1}, Lcom/c/a/ag;->f(Lcom/c/a/c;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "for error"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v0, " (will replay)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/c/a/i;->bNt:Ljava/util/Map;

    iget-object v1, p1, Lcom/c/a/c;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/c/a/i;->e(Lcom/c/a/c;)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method final ah(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/c/a/i;->bNw:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/c/a/i;->bNv:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    iget-object v3, v0, Lcom/c/a/a;->tag:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/c/a/i;->bNx:Landroid/os/Handler;

    iget-object v2, p0, Lcom/c/a/i;->bNx:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method final b(Lcom/c/a/c;)V
    .locals 3

    iget-object v0, p0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final c(Lcom/c/a/c;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/c/a/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/c/a/i;->bNr:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v2}, Lcom/c/a/i;->a(Lcom/c/a/c;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/c/a/i;->bNA:Z

    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/c/a/i;->context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-static {v0, v3}, Lcom/c/a/ag;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iget v3, p1, Lcom/c/a/c;->bNh:I

    if-lez v3, :cond_4

    move v3, v1

    :goto_3
    if-nez v3, :cond_5

    move v3, v2

    :goto_4
    iget-object v4, p1, Lcom/c/a/c;->bNb:Lcom/c/a/y;

    invoke-virtual {v4}, Lcom/c/a/y;->At()Z

    move-result v4

    if-nez v3, :cond_7

    iget-boolean v0, p0, Lcom/c/a/i;->bNA:Z

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    :goto_5
    invoke-virtual {p0, p1, v1}, Lcom/c/a/i;->a(Lcom/c/a/c;Z)V

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/c/a/i;->d(Lcom/c/a/c;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    iget v3, p1, Lcom/c/a/c;->bNh:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lcom/c/a/c;->bNh:I

    iget-object v3, p1, Lcom/c/a/c;->bNb:Lcom/c/a/y;

    invoke-virtual {v3, v4}, Lcom/c/a/y;->b(Landroid/net/NetworkInfo;)Z

    move-result v3

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_5

    :cond_7
    iget-boolean v1, p0, Lcom/c/a/i;->bNA:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_b

    :cond_8
    iget-object v0, p1, Lcom/c/a/c;->bMF:Lcom/c/a/t;

    iget-boolean v0, v0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_9

    const-string v0, "Dispatcher"

    const-string v1, "retrying"

    invoke-static {p1}, Lcom/c/a/ag;->f(Lcom/c/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p1, Lcom/c/a/c;->awX:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/c/a/r$a;

    if-eqz v0, :cond_a

    iget v0, p1, Lcom/c/a/c;->bMK:I

    sget-object v1, Lcom/c/a/q;->bNT:Lcom/c/a/q;

    iget v1, v1, Lcom/c/a/q;->index:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/c/a/c;->bMK:I

    :cond_a
    iget-object v0, p0, Lcom/c/a/i;->bNr:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/c/a/c;->bNe:Ljava/util/concurrent/Future;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, p1, v4}, Lcom/c/a/i;->a(Lcom/c/a/c;Z)V

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Lcom/c/a/i;->d(Lcom/c/a/c;)V

    goto/16 :goto_0

    :cond_c
    move-object v4, v0

    goto :goto_1
.end method

.method final e(Lcom/c/a/c;)V
    .locals 4

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/c/a/c;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/c/a/i;->bNy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
